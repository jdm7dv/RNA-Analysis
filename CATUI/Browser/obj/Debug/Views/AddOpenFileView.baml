   M S B A M L   `   `   `  ����c  _System.Windows.Interactivity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity  5   <   [ WJulmar.Wpf.Behaviors, Version=1.0.0.5, Culture=neutral, PublicKeyToken=ff1c121d8ddc1581iHclr-namespace:JulMar.Windows.Interactivity;assembly=Julmar.Wpf.BehaviorsJulMar.Windows.Interactivity 6�    
BioBrowser&    BioBrowser.Views.AddOpenFileView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      jInteractivityPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     6<   [julmarHclr-namespace:JulMar.Windows.Interactivity;assembly=Julmar.Wpf.Behaviors     6�     � Title$$  Add Existing Data to Workspace��6�   $	��300��6"  $	��400��6/  
������� � WindowStartupLocation$ CenterOwner=�5       .��5!      �  � 	Resources 5#   
      aofvmTemplate � ToolTip �� Triggers �� Value �� Binding �� Property �� Value��%�   &	        �� 5$      .R�5%      �� 
���������6   �� *Text+ 62   �� *	Details+6N    5&      �� 5'      $
 True��6B    6"   �� *InWorkspace+.a�5(      ��  � ��
 �����6C   5)      5+      5,      	 � RowDefinitions	 5.   
   �� 5/      $
��Auto �6   �� 50      �� 51      $
��Auto �6   .+�54   
   �� 
�������$
��Wrap=�6'   $
��Bold"�6;   $��10q�6M   :8Select the Existing Data Sources to Add to the Workspace56      �� 58   
   $��5q�6   $��1��6   #��[  6K   
 �� SelectionMode$
 Extended=�6y   ��6*   �� *
Children+��59      �� 5:       �� 
TargetType" ��6    �� BasedOn# [B��61   .�5;      ��  �@��
IsSelected 63   �� *
IsSelected+5<      5>      �� 5@   
   $��2��6    �� Orientation$ 
Horizontal=�6"   $��Right=�6;   $��5q�6W   .+�5A      �� $��OK��6   $	��100��6"   $
��10,5q�61   $��5q�6@    �� 	IsDefault . ��6\   �� *SelectChildrenCommand+.   (System.Windows.Interactivity.Interaction   	Behaviors 5B      6  0JulMar.Windows.Interactivity.CloseDialogBehavior  5C         DialogResult . 61   5E      �� 5F      $��Cancel��6   $	��100��6&   $
��10,5q�65   $��5q�6D    �� IsCancel . 6O   5G      5I      5J      