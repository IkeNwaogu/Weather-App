   M S B A M L   `   `   `  ���� E  AWeatherApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:WeatherApp
WeatherApp      WeatherApp.App   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     *localclr-namespace:WeatherApp       �� 	Resources     FocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  Button.Static.Background �� Color  Button.Static.Border ( $Button.MouseOver.Minimize.Background  Button.MouseOver.Foreground % !Button.MouseOver.Close.Background % !Button.MouseOver.Close.Foreground  Button.MouseOver.Border  Button.Pressed.Background 	 Button.Pressed.Border 
 Button.Disabled.Background  Button.Disabled.Border  Button.Disabled.Foreground  ButtonStyle1 �� 
TargetType �� 
TargetType ��Name	 ��Name
 �� Triggers P� Property P� Value �� 
TargetName  ButtonStyle2  CalendarCalendarItemStyle15  /System.Windows.Controls.Primitives.CalendarItem � 	Resources �Name � 	Resources  Key'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration �� 
TargetName	 W� To �� TargetProperty �� CornerRadius � Cursor	 �� To J� Opacity �� Stretch F�Name � ColumnDefinitions � RowDefinitions  ��Name  PreviousButtonTemplate  HeaderButtonTemplate  NextButtonTemplate! ��Name  DisabledColor" �� RadiusX# �� RadiusY$ �� Value% �� Binding& �� RelativeSource' �� AncestorType&   System.Windows.Controls.Calendar   CalendarCalendarButtonStyle17  1System.Windows.Controls.Primitives.CalendarButton(   Transitions%  System.Windows.VisualTransition)   GeneratedDuration* R� KeyTime+ R� Value  System.Windows.Visibility, J� IsHitTestVisible # CalendarCalendarDayButtonStyle1:	  4System.Windows.Controls.Primitives.CalendarDayButton- A�Name. J� RenderTransformOrigin  CalendarItemTemplate1/ � ShowGridLines  CalendarStyle20 ��Name1  Name2   CalendarItemStyle��%�1  &	        &	 R     &	 g     &	 |     &	 �     &	 �     &	 �     &	 �     &	 �     &		 �     &	
 �     &	     &	 )    &	 >    7   7  7  7  7  7  7  7 	 7 
 7  7  &	 \    7   7  7  7  7  7  7  7 	 7 
 7  7  &	 z    7  7  7  7  7  &	 �    &	 X    &	 !#    7  7  7  7  7  &	 �/    �� .���  � �� �� .R��� $��2q�$	 1 2R�#��� ��$
 true��$��1���� $ 	#FFDDDDDD���� $ 	#FF707070���� $ #d2d2d2���� $ White���� $	 Red���� $ White���� $ 	#FF3C7FB1���� $ 	#FFC4E5F6���� $ 	#FF2C628B���� $ 	#FFF4F4F4���� $ 	#FFADB2B5���� $ 	#FF838383���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z��$
 true��._��� $	 contentPresenter��$|�False��#��z��#��z��$
��True��# z #��z��
 P�  �@��IsDefaulted$
 true��. ��� $ border��# � �� � ��P�  �@J�IsMouseOver$
 true��. ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ��P�  � ��$
 true��. ��� $ border��8   � ���� $ border��8   � ��P�  � {�$ false��. ��� $ border��8   � ���� $ border��8 	  � ���� $ contentPresenter��8 
  � ���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z��$
 true��._��� $	 contentPresenter��$|�False��#��z��#��z��$
��True��# z #��z��
 P�  �@��IsDefaulted$
 true��. ��� $ border��# � �� � ��P�  �@J�IsMouseOver$
 true��. ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ��P�  � ��$
 true��. ��� $ border��8   � ���� $ border��8   � ��P�  � {�$ false��. ��� $ border��8   � ���� $ border��8 	  � ���� $ contentPresenter��8 
  � ���� "  .���  � ��$ 0,3,0,3q���  � �� �� "   ���� (��       **(CalendarItem.DayTitleTemplateResourceKey+).R��� ���	#FF333333$��
Bebas Neue)�$
��Bold"�$	��9.5(�$��Center=�$��0,6,0,6q�$��Center=����� .R�� $ 	PART_Root�� ���� DisabledColor $ 	#A5FFFFFF��   CommonStates��.   
Normal��  Disabled��. �� .��W� $ 0D�$ PART_DisabledVisual�� 1$ Opacity�.+��� #��z��#��z��#��z��$ 1��._��� ���	#FFFFFFFF$��2q�$ 1��._��  ���� PreviousButtonTemplate " ��.R�� $
 Hand��   CommonStates��.   
Normal��  	MouseOver��. �� .���� $ 0D�$
 path�� #d2d2d2$* $(Shape.Fill).(SolidColorBrush.Color)�  Disabled��. �� .��W� $ 0D�$
 path�� .5$" (Shape.Fill).(Brush.Opacity)�.+��� ���	#11E5EBF1$ 1Q�$
 Fill=�� .+�F� $
 path��"�����5���Ѱ�5h�W��<�h�	���	#FF333333$
��Left=�$��10��$��	14,-6,0,0q�$
 Fill=�$��Center=�$��6���� NextButtonTemplate " ��.R�� $
 Hand��   CommonStates��.   
Normal��  	MouseOver��. �� .���� $ 0D�$
 path�� #d2d2d2$* $(Shape.Fill).(SolidColorBrush.Color)�  Disabled��. �� .��W� $ 0D�$
 path�� .5$" (Shape.Fill).(Brush.Opacity)�.+��� ���	#11E5EBF1$ 1Q�$
 Fill=�� .+�F� $
 path��"����xT��!��xT���S�h4 	���	#FF333333$��Right=�$��10��$��	0,-6,14,0q�$
 Fill=�$��Center=�$��6���� HeaderButtonTemplate " ��.R�� $
 Hand��   CommonStates��.   
Normal��  	MouseOver��. �� .���� $ 0D�$ buttonContent�� #d2d2d2$6 0(TextElement.Foreground).(SolidColorBrush.Color)�  Disabled��. �� .��W� $ 0D�$ buttonContent�� .5$ Opacity�.+��� $	 buttonContent��#��z��#��z�����	#FF333333#��z��$��1,4,1,9q�#��z�� �� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $  PART_PreviousButton��$��0��$|�False��$
��Left=�$��20��$��0��8��  $��28���� $  PART_HeaderButton��$��1��$|�False��$
��Bold"�$
��10.5(�$��Center=�$��0��8�� $��Center=��� $  PART_NextButton��$��2��$|�False��$��Right=�$��20��$��0��8�� $��28��� $ PART_MonthView��$��3��$��Center=�$��6,-1,6,6q�$��1��$y�Visible=� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �� $ PART_YearView��$��3��$��Center=�$��6,-3,7,6q�$��1��$y�Hidden=� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $! PART_DisabledVisual��8�� $ 0Q�$" 2��$# 2��8�� $
 Fill=�$��1��$y�	Collapsed=�
 P�  � {�$ False��. ��� $ PART_DisabledVisual�� � y�$ Visible=��� $
$ Year��% �� *DisplayMode+& �� *FindAncestor+"'  .a��� $ PART_MonthView�� � y�$ Hidden=��� $ PART_YearView�� � y�$ Visible=��� $$ Decade��% �� *DisplayMode+& �� *FindAncestor+"'  .a��� $ PART_MonthView�� � y�$ Hidden=��� $ PART_YearView�� � y�$ Visible=��� "  .���  � �� �#d2d2d2��  � ��$ 40����  � ��$ 42����  � ��$ 10(���  � ��$ Center=���  � ��$ Center=���  � �� �� "  .R��    CommonStates��(   $) 0:0:0.1D�.   
Normal��  	MouseOver��. �� .��W� $ 0D�$ 
Background�� .5$ Opacity�  Pressed��. �� .��W� $ 0D�$ 
Background�� .5$ Opacity�  SelectionStates��(   $) 0D�.   
Unselected��  Selected��. �� .��W� $ 0D�$ SelectedBackground�� .75$ Opacity�  ActiveStates��(   $) 0D�.   
Active��  Inactive��. �� .���� $ 0D�$ 
NormalText��	 White$6 0(TextElement.Foreground).(SolidColorBrush.Color)�  CalendarButtonFocusStates��(   $) 0D�.   CalendarButtonFocused��. �� .��T� $ 0D�$ CalendarButtonFocusVisual��$ 
Visibility�..�i� $* 0��+  Visible=�  CalendarButtonUnfocused��. �� .��T� $ 0D�$ CalendarButtonFocusVisual��$ 
Visibility�..�i� $* 0��+  	Collapsed=�.+��� $! SelectedBackground��#��z��$ 0Q�$" 1��$# 1���� $! 
Background��#��z��$ 0Q�$" 1��$# 1���� $	 
NormalText�����	#FF333333#��z��$��1,0,1,1q�#��z���� $! CalendarButtonFocusVisual��$, false��$" 1��$# 1��
���   �$y�	Collapsed=�
 P�  �@J�	IsFocused$
 True��. ��� $ CalendarButtonFocusVisual�� � y�$ Visible=��� " 	 .���  � ��$ 5����  � ��$ 5����  � ��$ 7(���  � ��$ Center=���  � ��$ Center=���  � �� �� " 	 .R��    CommonStates��(   $) 0:0:0.1D�.   
Normal��  	MouseOver��. �� .��W� $ 0D�$ HighlightBackground�� 0.5$ Opacity�  Pressed��. �� .��W� $ 0D�$ HighlightBackground�� 0.5$ Opacity�  Disabled��. �� .��W� $ 0D�$ HighlightBackground�� 0$ Opacity�W� $ 0D�$ 
NormalText�� .35$ Opacity�  SelectionStates��(   $) 0D�.   
Unselected��  Selected��. �� .��W� $ 0D�$ SelectedBackground�� .75$ Opacity�  CalendarButtonFocusStates��(   $) 0D�.   CalendarButtonFocused��. �� .��T� $ 0D�$ DayButtonFocusVisual��$ 
Visibility�..�i� $* 0��+  Visible=�  CalendarButtonUnfocused��. �� .��T� $ 0D�$ DayButtonFocusVisual��$ 
Visibility�..�i� $* 0��+  	Collapsed=�  ActiveStates��(   $) 0D�.   
Active��  Inactive��. �� .���� $ 0D�$ 
NormalText�� #f1f1f1$6 0(TextElement.Foreground).(SolidColorBrush.Color)�  	DayStates��(   $) 0D�.   
RegularDay��  	Today��. �� .��W� $ 0D�$ TodayBackground�� 1$ Opacity��� $ 0D�$ 
NormalText��	 White$6 0(TextElement.Foreground).(SolidColorBrush.Color)�  BlackoutDayStates��(   $) 0D�.   	NormalDay��  BlackoutDay��. �� .��W� $ 0D�$ Blackout�� .2$ Opacity�.+�A� $- TodayBackground�����#c2c2c2$ 0Q�$��20��$��20��A� $- SelectedBackground�����#c2c2c2$ 0Q�$��20��$��20���� #��z��#��z��#��z��A� $- HighlightBackground�����#f1f1f1$ 0Q�$��20��$��20���� $	 
NormalText�����	#FF777777$
��Bold"�#��z��$��5,1,5,1q�#��z��F� $ Blackout��}�����5 �Z @�J� �Q2� �J� �̉� iV� �A�� �J� �W�� �J� ѷ�� #�� �>8� 7T�K�� 7T�� � ��� ћ�� 7T����G @7T��� �D� 	���#C7D3D5$��Stretch=�$��3q�$ 0Q�$. 0.5,0.5&�$
 Fill=�$��Stretch=�A� $- DayButtonFocusVisual��$, false��$��20��$��20��
���   �$y�	Collapsed=�$	��0.7���� "   ���� (��       **(CalendarItem.DayTitleTemplateResourceKey+).R��� ���#2d2d2d$��
Bebas Neue)�$
��Bold"�$	��9.5(�$��Center=�$��0,6,0,6q�$��Center=����� .R�� $ 	PART_Root�� ���� DisabledColor $ #dfe4ea��   CommonStates��.   
Normal��  Disabled��. �� .��W� $ 0D�$ PART_DisabledVisual�� 1$ Opacity�.+��� #��z��#��z��#��z��$ 1��._��� ���	#FFFFFFFF$��2q�$ 1��._��  ���� PreviousButtonTemplate " ��.R�� $
 Hand��   CommonStates��.   
Normal��  	MouseOver��. �� .���� $ 0D�$
 path�� #d2d2d2$* $(Shape.Fill).(SolidColorBrush.Color)�  Disabled��. �� .��W� $ 0D�$
 path�� .5$" (Shape.Fill).(Brush.Opacity)�.+�� .+�F� $
 path��"�����5���Ѱ�5h�W��<�h�	���#2d2d2d$
��Left=�$��10��$��	14,-6,0,0q�$
 Fill=�$��Center=�$��6���� NextButtonTemplate " ��.R�� $
 Hand��   CommonStates��.   
Normal��  	MouseOver��. �� .���� $ 0D�$
 path�� #d2d2d2$* $(Shape.Fill).(SolidColorBrush.Color)�  Disabled��. �� .��W� $ 0D�$
 path�� .5$" (Shape.Fill).(Brush.Opacity)�.+��� ���	#11E5EBF1$ 1Q�$
 Fill=�� .+�F� $
 path��"����xT��!��xT���S�h4 	���#2d2d2d$��Right=�$��10��$��	0,-6,14,0q�$
 Fill=�$��Center=�$��6���� HeaderButtonTemplate " ��.R�� $
 Hand��   CommonStates��.   
Normal��  	MouseOver��. �� .���� $ 0D�$ buttonContent�� #d2d2d2$6 0(TextElement.Foreground).(SolidColorBrush.Color)�  Disabled��. �� .��W� $ 0D�$ buttonContent�� .5$ Opacity�.+��� $	 buttonContent��#��z��#��z�����#2d2d2d#��z��$��1,4,1,9q�#��z�� �� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $  PART_PreviousButton��$��0��$|�False��$
��Left=�$��20��$��0��8��  $��28���� $  PART_HeaderButton��$��1��$|�False��$
��Bold"�$
��10.5(�$��Center=�$��0��8�� $��Center=��� $  PART_NextButton��$��2��$|�False��$��Right=�$��20��$��0��8�� $��28��� $ PART_MonthView��$��3��$��Center=�$��6,-1,6,6q�$��1��$y�Visible=�$/ False�����#FFFFFE �� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 � �� $
��Auto ��� $��20 ��� $��20 ��� $��20 ��� $��20 ��� $��20 ��� $��20 �� $ PART_YearView��$��3��$��Center=�$��6,-3,7,6q�$��1��$y�Hidden=� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $! PART_DisabledVisual��8�� $ 0Q�$" 2��$# 2��8�� $
 Fill=�$��1��$y�	Collapsed=�
 P�  � {�$ False��. ��� $ PART_DisabledVisual�� � y�$ Visible=��� $
$ Year��% �� *DisplayMode+& �� *FindAncestor+"'  .a��� $ PART_MonthView�� � y�$ Hidden=��� $ PART_YearView�� � y�$ Visible=��� $$ Decade��% �� *DisplayMode+& �� *FindAncestor+"'  .a��� $ PART_MonthView�� � y�$ Hidden=��� $ PART_YearView�� � y�$ Visible=��� "  .���  � �� �	#FF333333��  � ��
 ���� ��  � ��$ 0q���  � �� �� "  .R��� $0 	PART_Root��$��Center=�.+�  $1 PART_CalendarItem��#���  #��z��#��z��#��z��#��z2 