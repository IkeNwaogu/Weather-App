   M S B A M L   `   `   `  ���� E  AWeatherApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:WeatherApp
WeatherApp      WeatherApp.MainWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:WeatherApp       � Title$   ��$	��720��$
��1280�� � 
ResizeMode$ CanResizeWithGrip=� � WindowStyle$
 None=� � AllowsTransparency$
 True��
������  � WindowStartupLocation$ CenterScreen=�$
��1280��$	��720��$	��720��$	��440�� � 	Resources  �� BasedOn �� 
TargetType   dateYearLabels �� Property	 �� Value  weatherLabels��%�   &	        7��&	 L     7���� 8   " ��.���  � ��$	 
Bebas Neue)���  � ��	 �#2d2d2d�� 8   " ��.���  � ��$	 Fredoka)���  � ��	 �#FFFFFE.���� 
 �� CornerRadius$
 8��$��0q�����  �� Color$ #FFFFFE��._�� -    �Name$ BaseGrid��.+��� -   $
��mask�����#FFFFFE$
 7��� -   $ 	imageGrid��$��0��$��0��$	��640��.+�(� -   $��imageViewBox��$��0��$��0�� (� Stretch$ UniformToFill=�.���� -    ��Name$ weatherImage��$y�Visible=���  �� Orientation$ Vertical=� K� ZIndex$ 1��$��0��$��0��$��Right=�$��	0,10,20,0q�.+��� -   $��location��$��Kennesaw, Georgia��$��20(�#��[ $��Light"�$��0,1,0,0q��� -   $
��temp��$	��---��$��25(�#��[ $��0,1,0,0q�$��DemiBold"��� -   $��
feels_like��$	��---��$��25(�#��[ $��0,1,0,0q�$��DemiBold"��� -	   $��description��$	��---��$��25(�#��[ $��0,1,0,0q�$��DemiBold"��� -
   $��temp_min_max��$	��---��$��25(�#��[ $��0,1,0,0q�$��DemiBold"� � RowDefinitions �� $��* � � ColumnDefinitions �� $��* ��� $
��Auto ��� -   $��1��$��0��$��1��$��Stretch=����#252525$��30��$��	0,0,0,690q�._��� $ 
Horizontal=�$��Right=�$��1��$��0��.+��� -    ��Name$ minimizeButton��  ButtonStyle1#���  $	��―��$��35��$��30��$��0,0,0,0q�$��0,0,0,0q�$
��Bold"�
������ 
�������$��0q��� -   $��X��$��35��$��30��$��0,0,0,0q�$
��Bold"�
�������$��0q�  ButtonStyle2#���  
������ ]� $��1��$��0��$��0,20,0,0q�.+��� -   $��dayLabel��$	��Top=�#��[  $	��DAY��$
��Auto��$
��Auto��$��	0,30,20,0q�$��0,0,0,0q�$��20(�$��Right=�$��Normal"��� -   $��monthDateLabel��$��Bottom=�#��[  $��May 14��$
��Auto��$
��Auto��$��0,0,20,0q�$��30(�$��Right=�(� $ Uniform=�$��1��$��	0,100,0,0q�.��&   System.Windows.Controls.Calendar     CalendarCalendarButtonStyle1   CalendarButtonStyle# �   # CalendarCalendarDayButtonStyle1   CalendarDayButtonStyle# �    CalendarStyle2#���  $��
Bebas Neue)�  CalendarCalendarItemStyle1   CalendarItemStyle# �   J� OpacityMask !�  !� Visual ��  �� ElementName$
 mask������ $ #FFFFFE�� �� $��* � �� $��1* ��� $��1* �