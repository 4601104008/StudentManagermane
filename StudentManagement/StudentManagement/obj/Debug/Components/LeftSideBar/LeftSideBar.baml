   M S B A M L   `   `   `  ����L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      K*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      A%clr-namespace:StudentManagement.UtilsStudentManagement.Utils  5
      K*clr-namespace:StudentManagement.ViewModelsStudentManagement.ViewModels  5      A%clr-namespace:StudentManagement.ViewsStudentManagement.Views  5      .    (StudentManagement.Components.LeftSideBar   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      A
components*clr-namespace:StudentManagement.Components     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:StudentManagement.Components     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      1utils%clr-namespace:StudentManagement.Utils  5
      ;
viewmodels*clr-namespace:StudentManagement.ViewModels  5      1views%clr-namespace:StudentManagement.Views  5      -   5        $��LeftSideBarUC��5         Gray#��[  5        MaterialDesignFont#���  5      $��13(�5      $��Regular"�5        MaterialDesignBody#���  5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      �� 5      $
��auto �6   .+�5    
   �� $��1��5!      $��Disabled=�5"      $��Hidden=�5#      .��5$      � .+�5%      �� ��6   �� *NavigationItems+��5&      �� 5'      .R�5(      �� 5)      ��5+      �� 5,      .R�5-      �� ��6/   ��  � 	Resources 50   "     NavigationItem1   +StudentManagement.Components.NavigationItem  NavigationDropDownList9   3StudentManagement.Components.NavigationDropdownList��%d   &	       &	 (     �� 51   &   .R�52   *     53   '   �� 54   &   .R�55   *     56   '   57   #   ��5:   "   �� 5;   &    �� 
TargetType" ��6,    �� Triggers 5<   *   �� 5=   .    �� Binding 6:   �� *CanBeExpanded+ �� Value	 False6\   .a�5>   2   ��  �� Property � ��	 �� Value#	 [ 6T   5?   /   �� 5@   .    6:   �� *CanBeExpanded+ True6\   .a�5A   2   ��  � ��#	 [ 6T   5B   /   5D   '   5G      5H      5J      5K      5L      �� 5M   
   $��2��5N      $
��auto��5O      $��8q�5P      
 � Cursor$

 Hand��5Q       
 MainVM � DataContext# �  5S      ��5R      �� *GotoLoginViewCommand+y�5T      ��  �� ElementName$ LeftSideBarUC�� �� Path$ DataContext.IsMainWindow�   BooleanToVisibilityConverter �� 	Converter# [ ��5U      �� 5V      " ��6   .�5W      ��  � ��	 5X      �� 5Y       �� 
TargetType" ��6.   .R�5Z   "   �� $��brdNavigate��6)    �� CornerRadius$ 20��6<   ._�5[   &   � .+�5\   *   ��  �� Orientation$ 
Horizontal=�65   .+�5]   .   '  !MaterialDesignThemes.Wpf.PackIcon  $��packicon��5^   1   $��20��5_   1   $��20��5`   1   $��
12,12,8,12q�5a   1   $��Center=�5b   1   $��Center=�5c   1   
�������   Kind$ Logout=�5e   1   �� 5f   .   $��navigationName��5g   1   $��Center=�5h   1   $��Center=�5i   1   $��14(�5j   1   $��SemiBold"�5k   1   
�������$��Đăng xuất��5m   1   5n   +   5o   '   5p   #    �� Triggers 5q   "   P� 5r   &    P� Property �@J�IsMouseOver P� Value . . �5s   *   ��  �� 
TargetName$ packicon��61    	 White#	 �  6]    � ���� 5t   *   $ navigationName��61   #	 �  6c    � ���� 5u   *   $ brdNavigate��61     
ErrorLight#	 �  6`    � ��5v   '   5x      5z      5{      5}      5~      5      