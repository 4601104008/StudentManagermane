   M S B A M L   `   `   `  ����L  HStudentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:StudentManagement.ComponentsStudentManagement.Components  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5
      A%clr-namespace:StudentManagement.UtilsStudentManagement.Utils  5      1    +StudentManagement.Components.ForgotPassword   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:StudentManagement.Components     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5	      0sys&clr-namespace:System;assembly=mscorlib  5
      1utils%clr-namespace:StudentManagement.Utils  5      
������ $��16(�5      .��5      �� 
�������  �� CornerRadius$  10��6     J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 8Q�5         Opacity$	 0.6Q�5         ShadowDepth$ 0Q�5         Color$
 Gray��5      ._�5   
   �  � RowDefinitions 5      �� 5      $��* �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5       $
��auto �6    �� 5!      $
��auto �6    �� 5"      $
��auto �6    .+�5%      � $��0��6   $��20,10q�6    .+�5&      �� $
��Left=�5'       &  "MaterialDesignIconForegroundButton#��[  5)      ��5(      �� *
SwitchView+.��5*      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ChevronLeft=�6.   5+      �� 5-      $��Center=�5.      $��Center=�5/      $��24(�50      $��SemiBold"�51      $��ĐẶT LẠI MẬT KHẨU��52      53      �� 55      $��1��56      $��28,16q�57      $��Center=�58      )  #MaterialDesignThemes.Wpf.HintAssist   
Background
 �����	   Hint$	 Email��5:      
   HintOpacity$	
 0.5Q�5;      +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�5<      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton .    HasLeadingIcon .    LeadingIcon$ Account=�5?         TextFieldCornerRadius$ 20��5@      /  )MaterialDesignThemes.Wpf.ValidationAssist   
Background
 �����$��16(�5B      ��5C      �� *Gmail+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�.��6Z   ��5D      �� 5E       ! MaterialDesignOutlinedTextBox �� BasedOn# [ 6    �� 
TargetType" ��6U    �� Triggers 5F      P� 5G       P� Property �@=�HasError P� Value . . �5H   "   ��  �� Property �@ 
Foreground & "MaterialDesignValidationErrorBrush �� Value# �  6Y   5I      5K      .��5L   !   5M      � 5N      $��2��6   $��28,16q�6    .+�5O      �� -   5         ��Name$ txbOTP��5P      $��Center=�5Q      
 �����$	 Nhập mã OTP��5S      $	
 0.5Q�5T      $ Depth2=�5U       . $ 	ShieldKey=�5W      $ 20��5X      
 ����� �� 	MaxLength$ 6��5Z      $��16(�5[      ��5\      �� *	OTPInView+$ PropertyChanged=�$ TwoWay=�.��6b   ��5]      �� 5^      # [ 6    " ��6Y    5_      P� 5`   "    �@=�HasError . . �5a   &   ��  �@ 
Foreground# �  6]   5b   #   5d      .��5e   %   5f      �� 5g      $
��Auto��5h      $��Right=�5i      $��Center=�5j      ��5k      �� *GetOTPCodeCommand+��5l      �� 5m      .R�5n      �� $��0,0,16,0q�5o   !   $��Center=�5p   !   $��16(�5q   !   ��5r   "   �� 5s   &   " ��6,   .�5t   *   ��  � ��$ 	Lấy mã��6A   �� 5u   *    � ��  PrimaryMain# �  6G    5v   *   ^� 5w   .    ^� 
Conditions 5x   2   �� 5y   6    �� Binding 6@   �� *	IsGetCode+ �� Value True6^   �� 5z   6    6@   �� *TimeCountDown+ �� 	Converter -   'StudentManagement.Utils.IsNullConverter  	 false6�   .0�5|   2   ��  � �� 6I   �� *TimeCountDown+�� 5}   2    � ��  DarkGray# �  6O   5~   /   ^� 5   .    5�   2   �� 5�   6    6@   �� *	IsGetCode+ True6^   �� 5�   6    6@   �� *TimeCountDown+    true6�   .0�5�   2   ��  � ��$ Gửi lại mã��6I   5�   /   5�   '   5�      5�      ��5�      �� 5�      " ��6     5�      P� 5�   "    �@J�IsMouseOver . . �5�   &   ��  �@�Cursor$
 Hand��6?   5�   #   ^� 5�   "    5�   &   �� 5�   *    64   �� *	IsGetCode+ True6R   �� 5�   *    64   �� *TimeCountDown+   	 false6y   .0�5�   &   ��  � {� .  6B   5�   #   5�      5�      5�      G� 5�      $��3��5�      $��28,16q�5�      $��Center=�5�      $	 Mật khẩu mới��5�      $	
 0.5Q�5�      $ Depth2=�5�       .  .     HasTrailingIcon  . $
 Lock=�5�      $ 20��5�      !   TrailingIcon$	! Eye=�5�      
 �����$��16(�5�      ��5�      �� " �� Path$" ActualHeight�# �� ElementName$# txbOTP��4   .StudentManagement.Components.PasswordBoxHelper$   Password$ 5�      �� *NewPassWord+$ PropertyChanged=�$ TwoWay=���5�      �� 5�       + 'MaterialDesignOutlinedPasswordBoxCustom# [ 6   " G�6_    5�      P� 5�       �@=�HasError . . �5�   "   ��  �@ 
Foreground# �  6Y   5�      5�      5�      G� 5�      $��4��5�      $��28,16q�5�      $��Center=�5�      $	 Nhập lại mật khẩu��5�      $	
 0.5Q�5�      $ Depth2=�5�       .  .   . $
 Lock=�5�      $ 20��5�      $	! Eye=�5�      
 �����$��16(�5�      ��5�      �� $" ActualHeight�$# txbOTP��$ 5�      �� *ReNewPassWord+$ PropertyChanged=�$ TwoWay=���5�      �� 5�      # [ 6   " G�6_    5�      P� 5�       �@=�HasError . . �5�   "   ��  �@ 
Foreground# �  6Y   5�      5�      5�      ]� 5�      $��5��6   $
��28,4q�6%   .+�5�      �� $��Right=�5�      $��Right=�5�      $��SemiBold"�5�      $+��%Bạn không nhận được mã OTP?��5�      ��5�      �� 5�      " ��6    .�5�      ��  � ��  	ErrorMain# [ 6;    5�      P� 5�   "    �@J�IsMouseOver . . �5�   &   ��  �@�Cursor$
 Hand��6?   �� 5�   &    � ��  
ErrorLight# [ 6C   5�   #   5�      5�      5�      �� 5�      $��6��5�      $	��120��5�      $��40��5�      $��28,16q�5�      +	  %MaterialDesignThemes.Wpf.ButtonAssist% 	  CornerRadius$% 20��5�      $��Xác nhận��5�      $��16(�5�        PrimaryButton#��[ 5�      {�5�      �� *
CanLogin+��5�      �� *ConFirmCommand+5�      5�      5�      5�      