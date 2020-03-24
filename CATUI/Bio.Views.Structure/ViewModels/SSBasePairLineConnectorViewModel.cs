﻿using System.Windows.Media;
using System;

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

namespace Bio.Views.Structure.ViewModels
{
    public class SSBasePairLineConnectorViewModel : SSElementBaseViewModel
    {
        public double Thickness { get; set; }
        public string Color { get; set; }
        public SSBasePairViewModel BasePair { get; private set; }
        public bool Visible { get; set; }

        public SSBasePairLineConnectorViewModel(SSBasePairViewModel basePair)
        {
            BasePair = basePair;
            double ntAngle = Math.Atan2(BasePair.ThreePrimeNucleotide.CenterY - BasePair.FivePrimeNucleotide.CenterY,
                    BasePair.ThreePrimeNucleotide.CenterX - BasePair.FivePrimeNucleotide.CenterX) * (180 / Math.PI);
            double ntDistance = Math.Sqrt(Math.Pow((BasePair.FivePrimeNucleotide.CenterX - BasePair.ThreePrimeNucleotide.CenterX), 2) +
                    Math.Pow((BasePair.FivePrimeNucleotide.CenterY - BasePair.ThreePrimeNucleotide.CenterY), 2));

            double targetConnectorDistance = 0.35 * ntDistance;
            Width = Math.Cos(ntAngle * (Math.PI / 180)) * targetConnectorDistance;
            Height = Math.Sin(ntAngle * (Math.PI / 180)) * targetConnectorDistance;

            double remainingDistance = ntDistance - targetConnectorDistance;
            X = BasePair.FivePrimeNucleotide.CenterX + (remainingDistance / 2.0) * Math.Cos(ntAngle * (Math.PI / 180));
            Y = BasePair.FivePrimeNucleotide.CenterY + (remainingDistance / 2.0) * Math.Sin(ntAngle * (Math.PI / 180));
        }

        public override string ToString()
        {
            return BasePair.ToString();
        }
    }
}
