   M S B A M L   `   `   `  ����E  AWeatherApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:WeatherApp
WeatherApp  5   	       WeatherApp.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:WeatherApp     5   	     � Title$   ��5   	   $	��720��6   $
��1280��6    � 
ResizeMode$ CanResizeWithGrip=�6,    � WindowStyle$
 None=�5	   	    � AllowsTransparency$
 True��5
   	   
������  � WindowStartupLocation$ CenterScreen=�5   	   $
��1280��5   	   $	��720��5   	   $	��720��5   	   $	��440��5   	    � 	Resources 5       �� BasedOn �� 
TargetType   dateYearLabels �� Property	 �� Value  weatherLabels��%  &	        7��&	 �     7���� 5   
   8   " ��5      .�5      ��  � ��$	 
Bebas Neue)�6+   �� 5       � ��	 �#2d2d2d6+   5      �� 5   
   8   " ��5      .�5      ��  � ��$	 Fredoka)�6+   �� 5       � ��	 �#FFFFFE6+   5      5"      .��5$      �� 
 �� CornerRadius$
 8��6   $��0q�6   ��5%   
   �� 5&       �� Color$ #FFFFFE��6   ._�5)   
   � -   5         �Name$ BaseGrid��5)      .+�5+      �� -   5        $
��mask��5+      ���#FFFFFE$
 7��66   � 51      -   5        $ 	imageGrid��51      $��0��6&   $��0��66   $	��640��6C   .+�52      (� -   5        $��imageViewBox��53      $��0��54      $��0��55       (� Stretch$ UniformToFill=�56      .��57      �� -   5         ��Name$ weatherImage��57      $y�Visible=�63   58      �� 5:       �� Orientation$ Vertical=�6    K� ZIndex$ 1��5;      $��0��5<      $��0��5=      $��Right=�5>      $��	0,10,20,0q�5?      .+�5A      �� -   5        $��location��5A      $��Kennesaw, Georgia��5B      $��20(�5C      #��[ 5D      $��Light"�5E      $��0,1,0,0q�5F      5H      �� 5I      -   5        $
��temp��5I      $	��---��5J      $��25(�5K      #��[ 5L      $��0,1,0,0q�5M      $��DemiBold"�5N      5P      �� 5Q      -   5        $��
feels_like��5R      $	��---��5S      $��25(�5T      #��[ 5U      $��0,1,0,0q�5V      $��DemiBold"�5W      5Y      �� 5Z      -	   5        $��description��5[      $	��---��5\      $��25(�5]      #��[ 5^      $��0,1,0,0q�5_      $��DemiBold"�5`      5b      �� 5c      -
   5        $��temp_min_max��5d      $	��---��5e      $��25(�5f      #��[ 5g      $��0,1,0,0q�5h      $��DemiBold"�5i      5k      5m       � RowDefinitions 5o      �� 5p      $��* �6$    � ColumnDefinitions 5r      �� 5s      $��* �6'   �� 5t      $
��Auto �6'   5v      �� 5w      -   5        $��1��5w      $��0��5x      $��1��5y      $��Stretch=�5z      ���#252525$��30��5|      $��	0,0,0,690q�5~      ._�5      �� $ 
Horizontal=�6   $��Right=�5�      $��1��5�      $��0��6-   .+�5�      �� -   5         ��Name$ minimizeButton��5�        ButtonStyle1#���  5�      $	��―��6D   $��35��5�      $��30��5�      $��0,0,0,0q�5�      $��0,0,0,0q�5�      $
��Bold"�5�      
������ 
�������$��0q�5�      5�      �� 5�      -   5        $��X��5�      $��35��5�      $��30��5�      $��0,0,0,0q�5�      $
��Bold"�5�      
�������$��0q�5�        ButtonStyle2#���  5�   7   
������ 5�      5�      5�      ]� 5�      $��1��6   $��0��6(   $��0,20,0,0q�65   .+�5�      �� -   5        $��dayLabel��5�   U   $	��Top=�6   #��[  6-   $	��DAY��6e   $
��Auto��6s   $
��Auto��6�   $��	0,30,20,0q�6�   $��0,0,0,0q�5�      $��20(�5�      $��Right=�5�      $��Normal"�5�      �� 5�      -   5        $��monthDateLabel��5�      $��Bottom=�5�      #��[  5�      $��May 14��5�   .   $
��Auto��5�      $
��Auto��5�      $��0,0,20,0q�5�      $��30(�5�      $��Right=�5�      5�      (� 5�      $ Uniform=�6   $��1��6(   $��	0,100,0,0q�68   .��5�      &   System.Windows.Controls.Calendar     CalendarCalendarButtonStyle1   CalendarButtonStyle# �  6    # CalendarCalendarDayButtonStyle1   CalendarDayButtonStyle# �  5�        CalendarStyle2#���  5�      $��
Bebas Neue)�6E     CalendarCalendarItemStyle1   CalendarItemStyle# �  5�      5�      5�       J� OpacityMask 5�      !� 5�       !� Visual 6   ��  �� ElementName$
 mask����5�      �� 5�      $ #FFFFFE��6"    5�      �� 5�      $��* �6     5�      �� 5�      $��1* �6#   �� 5�      $��1* �6#   5�      5�      5�      