   M S B A M L   `   `   `  ����E  ABioBrowser, Version=3.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:BioBrowser.ViewModelsBioBrowser.ViewModels  5       c _System.Windows.Interactivity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity 5!      N JBio.SharedResources, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullV>clr-namespace:Bio.SharedResources;assembly=Bio.SharedResourcesBio.SharedResources 5"      N JShaderEffectLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullV>clr-namespace:ShaderEffectLibrary;assembly=ShaderEffectLibraryShaderEffectLibrary 6\       BioBrowser.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      [ WJulmar.Wpf.Behaviors, Version=1.0.0.5, Culture=neutral, PublicKeyToken=ff1c121d8ddc1581Y	 UJulMar.Wpf.Helpers, Version=1.0.0.5, Culture=neutral, PublicKeyToken=ff1c121d8ddc1581/julmar http://www.julmar.com/wpfhelpers  	 5      6
ViewModels#clr-namespace:BioBrowser.ViewModels  	 5       fInteractivityPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity  	 5!      VSharedResources>clr-namespace:Bio.SharedResources;assembly=Bio.SharedResources  	 5"      ZShaderEffectLibrary>clr-namespace:ShaderEffectLibrary;assembly=ShaderEffectLibrary  	 6\     � Title$=  7CATUI - The Comparative Analysis Toolkit User Interface��5#      $	��800��6E   $	��600��6T    � WindowStartupLocation$ CenterScreen=�5$       � 
ResizeMode$ 	CanResize=�6*   ���	#FF535353+ 	 %JulMar.Windows.Behaviors.HelpProvider   Filename$ 	CATUI.chm��6X    � DataContext 5%      5 	 /JulMar.Windows.Markup.ViewModelCreatorExtension     ViewModelType)   #BioBrowser.ViewModels.MainViewModel"   J� InputBindings 5'      �� 5(   
   
 �� Key$ O��66    �� 	Modifiers$ Controlf�6>   	 �� Command	 6   �� *OpenDataFile+6>   �� 5)   
   $ V��6:   $	 Altf�6B   	 6   �� *CloseCurrentView+6B   
 � 	Resources
 5,         DockedTabStyle �� 
TargetType �� BasedOn �� Property �� Value � ColumnDefinitions  	TogglePin d� 	IsChecked  CloseButton  TopLevelMenuStyle �� Mode  WindowMenuStyle �� RelativeSource �� Mode �� AncestorType �� Path  ContextMenuItemStyle �� Triggers �� Binding �� Value �� 
TargetType �� DataType0   *BioBrowser.ViewModels.OpenBioDataViewModel �� ItemsSource �� Orientation.  (System.Windows.Interactivity.Interaction   Triggers5  /JulMar.Windows.Interactivity.DoubleClickTrigger.  (System.Windows.Interactivity.TriggerBase   Actions*  $JulMar.Windows.Actions.InvokeCommand   Command  � ContextMenu! A�Name" �� StrokeDashArray# J� RenderTransformOrigin$ J� 	CacheMode-	  'System.Windows.Media.CacheModeConverter% � Triggers& :� RoutedEvent' g� 	BeginTime( �� TargetProperty) g� RepeatBehavior* O� KeyTime+ O� Value, �� EndPoint- �� 
StartPoint. � Color/ � Offset0 ��Name1 ��Name2 �� Triggers3 ^� 
Conditions4 �� Binding5 �� Value6 �� 
TargetName*
  $ShaderEffectLibrary.MonochromeEffect.   (BioBrowser.ViewModels.WorkspaceViewModel,   &BioBrowser.ViewModels.OpenBioViewModel< 	 6JulMar.Windows.Converters.IntegerToVisibilityConverter  CountToVisibilityConverter7   ZeroTreatment8   NonzeroTreatment��%�  &	        7��7  7  &	     7m�&	 P    7m�&	 H    7m�(�� �    5b   #   *, +)7  (��     5�   #   *, +)7  (�� X    5�      *, +)7  &	 �    �� 5.      " ��6!   8   .�5/      ��  � �� 50      �� 51      .R�52      � $
��Left=�6   $��Center=�6(    53   	   �� 54   
   $
��Auto �6   �� 55   
   �� 56   
   $
��Auto �6   .+�59   	   d� $��0��6   $��2,2,5,0q�6&   8��  6Z   �� *
IsDocked+�� 5:   	   $��1��6   $��Center=�69   $��Center=�6T   ��6   �� *Title+6T   �� 5;   	   $��2��6   $��5,2,2,0q�6A   8�� ��6    �� *CloseCommand+6R   5<   	   5=      5?      5@      �� 5B   
   " m�6*   8   .�5C      ��  � �� 6'   �� *Text+�� 5D       � �� 6,   �� *
Children+�� 5E       �@m�Command 6(   �� *	Command+�� 5F       �@m�InputGestureText 61   �� *GestureText+�� 5G       �@m�	IsChecked 6*   �� *	IsChecked+$ OneWay=�5H      �� 5J   
   " m�6(   8   .�5K      ��  � �� 6'   �� *Title+�� 5L       �@m�Command 6(   ��  �� $ FindAncestor=�" o�$ DataContext.ActivateView��� 5M       �@m�CommandParameter 61   �� 5N      �� 5P   
   " m�6-   8   .�5Q      ��  � �� 6'   �� *Text+�� 5S       � �� 6,   �� *
Children+�� 5T       �@m�Command 6(   �� *	Command+ 5U      �� 5V       6   �� *Text+ 67   Z� .a�5W      ��  � �� 5X      �� 5Y      " m�6.   .R�5Z   "   �� 5[      5]      5^      5`      �� 5b   
   "  6#    6W   �� *
Children+.R�5c      �� $ 
Horizontal=�6   
������  5d        5e      . 5f         6/   �� *DefaultCommand+5g        5j      �� 5k      8��  ��6]   �� *MenuOptions+.+�5n      A� $! 
loadingBox��6   $��2��6.   $
" .5,1R�6B   $��24��6Y   $��24��6d   $# 0.5,0.5&�6p   $$ BitmapCache	 6�   % 5o      :� 5p      $& Ellipse.Loaded��6'   .[�5q      �� .��5r   "   �� .��5s   &   U� $' 00:00:00X�6D   $9( 3(UIElement.RenderTransform).(RotateTransform.Angle)�6Y   $) Forever��6�   .\�5t   *   �� $* 00:00:02��6?   $	+ 360Q�6R   5u   '   5v   #   5w      5x      z�5z      �� 5{      ��5}      �� 5~      $, 0.5,1&�6.   $- 0.5,0&�6?   .��5      � $. White��6+   $/ 0Q�69   � 5�      $. 	#FFC9C9C9��6+   $	/ 0.5Q�6=   � 5�      $. Black��6+   $/ 1Q�69   5�      5�      �� 5�      $0 loadedImage��6   $y�	Collapsed=�6-   $��24��6]   $��24��6h   ��6D   �� *Image+6h   �� 5�      $1 tb��6   $��5q�6$   $
��Left=�6/   $��Center=�6J   ��6e   �� *Header+5�      2 5�      ^� 5�      3 5�      �� 5�      4 6$   �� *	IsLoading+	5 False6B   �� 5�      4 6$   �� *
IsLoaded+	5 False6A   0�5�      �� 5�      $6 
loadingBox��6!    � y�$ 	Collapsed=�6O   �� 5�      $6 loadedImage��6!    � y�$ Visible=�6P   �� 5�      $6 loadedImage��6!    �@J�Effect 5�      
  5�   "   5�      5�      �� 5�      $
 True��6;    6   �� *
IsLoaded+.a�5�      �� $6 
loadingBox��6    � y�$ 	Collapsed=�6K   �� 5�      $6 loadedImage��6    � y�$ Visible=�6L   5�      �� 5�      $ False��6;    6   �� *
IsLoaded+.a�5�      �� $6 tb��6    � ��
 �����6C   5�      5�      �� 5�   
   "  6#    6U   �� *AvailableDataSources+.R�5�      �� $ 
Horizontal=�6   .+�5�      �� $��24��61   $��24��6<   ��6   �� *Image+6<   �� 5�      $��5q�6   $
��Left=�6#   $��Center=�6>   ��6Y   �� *Header+  5�      �� 5�      8��  ��6]   �� *MenuOptions+5�      5�      �� 5�   
   "  6   .R�5�      �� $ 
Horizontal=�6   
������  5�        5�      . 5�         6/   �� *ActivateCommand+5�      .+�5�      �� $��24��61   $��24��6<   ��6   �� *Image+6<   �� 5�      $��5q�6   $
��Left=�6#   $��Center=�6>   ��6Y   �� *Header+  5�      �� 5�      8��  ��6]   �� *MenuOptions+5�      5�        5�   
   $7 	Collapsed=�6Q   $8 Visible=�6k   5�      .��5�      � 9 � RowDefinitions9 5�   
   �� 5�      $
��Auto �6   �� 5�       5�   
   �� 5�      $
��Auto �6   �� 5�      .+�5�   
   o� $��0��6   $��2��6   .@�5�      m� $��_File��6   .@�5�      m� $��Create _New Workspace��6   : m� Command: 6:   �� *CreateNewWorkspace+m� 5�      $��_Open��6   #��[ 6O   ��6*   �� *OpenFileMenu+6O   m� 5�      $��_Close View��6   ; m� InputGestureText$; Alt+V��6U   : 60   �� *CloseCurrentView+6U   m� 5�      $��E_xit��6   $; Alt+F4��6O   : 6*   �� *CloseApplication+6O   5�      m� 5�      $��E_dit��6   #��[ 6G   ��6&   �� *
EditMenu+y�5�      �� *EditMenu.Count+< �� 	Converter#< [ = �� FallbackValue$= 	Collapsed��m� 5�      $��_Options��6   #��[ 6M   ��6)   �� *OptionsMenu+y�5�      �� *OptionsMenu.Count+#< [ $= 	Collapsed��m� 5�      $��_View��6   #��[ 6G   ��6&   �� *
ViewMenu+y�5�      �� *ViewMenu.Count+#< [ $= 	Collapsed��m� 5�      $��_Windows��6   #��[ 6J   ��6)   �� *
AllViews+y�5�      �� *AllViews.Count+#< [ $= 	Collapsed��m� 5�      $��Right=�6   $��Right=�6.   $��	0,0,-10,0q�6Q   ��5�      � 5�      > � ToolTip$
> Help��6    5�      �� 5�      $
��Auto �6/   �� 5�      .+�5�      A� $��20��6"   $��20��6-   
�������$��1��6H   
���   �6\   �� 5�      $��Center=�6$   $��Center=�6A   $��?��6\   �� 5�      $
��Help��6    $��1��6/   $��10,0,0,0q�6?   $��Center=�6Q   5�      .@�5�      m� $
��Help��6   $: ApplicationCommands.Help��6)   m� 5�      -   5        $��A_bout CATUI...��5�      64   5�      5�      � 5�   
   $��0��6   $��2��6    5�      �� 5�      $
��Auto �6#   �� 5�      $
��Auto �6#   .+�5�      9� ? 9� 
IsExpanded? . @ 9� ExpandDirection$@ Right=�6)   .��5�      +  %Bio.SharedResources.ProportionalPanel  -   5        A  Name$A sideBar��5�   4   $��Stretch=�6E   $	��300��6c   .+�5�      9� ? . ��5�      �� 5�      $��Available Data Sources��6(   $	��5,0q�6F   .��5�      R� ��6#   �� *OpenDataSources+��6K   Z� ��5�      �� 5�   "   " Q�6(   # [BQ�6B   .�5�   &   ��  �@Q�
IsExpanded 6C   �� *
IsExpanded+�� 5�   &    �@Q�
IsSelected 6C   �� *
IsSelected+5   #   5     5     �� 5     $��1��6H   ��6#   �� *SidebarItems+��5     �� 5     .R�5  "     5	     ��5     �� 5     .R�5  "   �  5  &   �� 5  *   �� 5  *   $
��Auto �6;   �� 5  *   $
��Auto �6;   .+�5  &   9� ? . $��3��6Z   ��6/   �� *Title+.��5  *   �� $	��Top=�6T   ��69   �� *Visual+6T   5  '   d� 5  &   $��1��63   $	��Top=�6C   #���  6[   $��4q�6�    6   �� *Visual.DataContext.IsDocked+6�   �� 5  &   $��2��6-   $	��Top=�6=   #���  6U   $��4q�6�   ��6{   �� *Visual.DataContext.CloseView+6�   5  #   5     5     5     5     n� 5     -   5        $��1��5     $��Right=�6$   $��Stretch=�6@   $��2��6}   
���   �|�. B � Cursor$B SizeWE��6�   5      �� 5#  
   $��1��6   $��1��6%   #���   5$  ;   ��5#  2   �� *DockedViews+C �� SelectedItemC 5$     �� *SelectedView+D �� ContentTemplateD 5&     �� 5'     .R�5(     �� $��Stretch=�6A   $��Stretch=�6_   ��6%   �� *Visual+6_   5)     5+     5-     5/     