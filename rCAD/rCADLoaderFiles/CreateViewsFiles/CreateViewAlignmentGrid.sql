/* 
* Copyright (c) 2009, The University of Texas at Austin
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without modification, 
* are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice, 
* this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice, 
* this list of conditions and the following disclaimer in the documentation and/or other materials 
* provided with the distribution.
*
* Neither the name of The University of Texas at Austin nor the names of its contributors may be 
* used to endorse or promote products derived from this software without specific prior written 
* permission.
* 
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR 
* IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND 
* FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS 
* BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES 
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
* PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
* CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF 
* THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE VIEW vAlignmentGrid
AS
SELECT 	AlnSeq.SeqID,	
	AlnSeq.AlnID,
	AlnCol.LogicalColumnNumber,
	CASE WHEN AlnDataQuery.BioSymbol IS NULL THEN
		CASE WHEN ((AlnCol.LogicalColumnNumber < AlnColFirstNt.LogicalColumnNumber) 
		OR (AlnCol.LogicalColumnNumber > AlnColLastNt.LogicalColumnNumber))
		THEN '~'
		ELSE '-'
		END ELSE
		AlnDataQuery.BioSymbol
	END AS BioSymbol,
	AlnDataQuery.SequenceIndex
FROM
	AlignmentSequence AS AlnSeq INNER JOIN
	AlignmentColumn AS AlnColFirstNt
	ON AlnSeq.AlnID = AlnColFirstNt.AlnID AND AlnSeq.FirstNTPhysicalColumnNumber = AlnColFirstNt.PhysicalColumnNumber
	INNER JOIN AlignmentColumn AS AlnColLastNt
	ON AlnSeq.AlnID = AlnColLastNt.AlnID AND AlnSeq.LastNTPhysicalColumnNumber = AlnColLastNt.PhysicalColumnNumber
	INNER JOIN AlignmentColumn AS AlnCol
	ON AlnSeq.AlnID = AlnCol.AlnID LEFT OUTER JOIN
		(SELECT AlnData.AlnID, AlnData.SeqID, AlnData.PhysicalColumnNumber, AlnData.BioSymbol, AlnData.SequenceIndex
		 FROM AlignmentData AS AlnData) AS AlnDataQuery
	ON AlnDataQuery.SeqID = AlnSeq.SeqID AND AlnDataQuery.AlnID = AlnSeq.AlnID AND AlnDataQuery.PhysicalColumnNumber = AlnCol.PhysicalColumnNumber;