   M S B A M L   `   `   `  ����L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      A%clr-namespace:StudentManagement.UtilsStudentManagement.Utils  5	      K*clr-namespace:StudentManagement.ViewModelsStudentManagement.ViewModels  5
      1    +StudentManagement.Components.NavigationItem   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:StudentManagement.Components     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      1utils%clr-namespace:StudentManagement.Utils  5	      ;
viewmodels*clr-namespace:StudentManagement.ViewModels  5
         Gray#���   5        MaterialDesignFont#���  5      $��13(�5      $��Regular"�5        MaterialDesignBody#���  5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5      .��5      �  � 	Resources 5   
     LeftSideBarButton �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius  Transparent �� Triggers	 �� Binding
 �� Value  PrimaryMain �� Orientation'  !MaterialDesignThemes.Wpf.PackIcon   Kind 	 White �� FallbackValue  MaterialDesignTextBlock �� BasedOn �� Triggers P� Property P� Value �� 
TargetName  PrimaryLight��%  &	       7  �� 5      " ��6.   .�5      ��  � �� 5      �� 5      " ��6*   .R�5      �� $��brdNavigate��6%   $ 20��68   ��5   "   �� 5   &   " ��6,   .�5   *   ��  �@�Cursor$
 Hand��6C   �� 5   *    � ��# �  6G    5    *   �� 5!   .   	 6:   �� *	IsPressed+
 True6X   .a�5"   2   ��  � ��# �  6O   5#   /   5%   '   ._�5'   "   � .+�5(   &   �� $ 
Horizontal=�61   .+�5)   *     $��packicon��5*   -   $��20��5+   -   $��20��5,   -   $��
12,12,8,12q�5-   -   $��Center=�5.   -   $��Center=�5/   -    50   -   �� *Icon+��51   .   �� 52   2   "  68   .�53   6   ��  � ��
 �����6S    54   6   �� 55   :   	 6F   �� *	IsPressed+
 True6d   .a�56   >   ��  � ��# �  6[   57   ;   59   3   5;   +   �� 5<   *   $��navigationName��5=   -   $��Center=�5>   -   $��Center=�5?   -   $��14(�5@   -   $��SemiBold"�5A   -   ��5B   -   �� *NavigationHeader+$ NavigationHeader����5C   .   �� 5D   2   8   " ��6k   .�5E   6   ��  � ��
 �����6S    5F   6   �� 5G   :   	 6F   �� *	IsPressed+
 True6d   .a�5H   >   ��  � ��# �  6[   5I   ;   5K   3   5M   +   5N   '   5O   #   5P       5Q      P� 5R   "    �@J�IsMouseOver . . �5S   &   �� $ packicon��6-   # �  6Y    � ���� 5T   &   $ navigationName��6-   # �  6_    � ���� 5U   &   $ brdNavigate��6-   # �  6\    � ��5V   #   5X      5Z      5[      5\       � ColumnDefinitions 5]   
   �� 5^      $��* �6   �� 5_      $
��auto �6   .+�5a   
   �� $��0��5b      $��48��5c      $��8q�5d      #��[ 5f      ��5e      �� *
GoToView+5f      �� 5g   
   $��1��5h      $	��0,8q�5i      $��2q�5j      ��5k      �� 5l      " ��6   .�5m      ��  � ��# �  64    5n      �� 5o      	 6&   �� *	IsPressed+
 True6D   .a�5p      ��  � ��# �  6<   5q      5s      5u      5v      5w      