   M S B A M L   `   `   `  ����E  AEkzamenWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:EkzamenWPF
EkzamenWPF  5   	       EkzamenWPF.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   $localclr-namespace:EkzamenWPF  5   	     � Title$  
Earthquake��5	   	   $	��450��6   $	��750��6)   .��5
      �  � RowDefinitions 5   
   �� 5      $	��10* �6   �� 5      $	��50* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��earthQuakeGrid��5      $
��auto��6)   $��5q�67   $��1��6B      AutoGenerateColumns .     
IsReadOnly . ��6k   Z�    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 
Место��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 6^   1  +System.Windows.Controls.DataGridBoundColumn   Binding 64   ��  �� Path$ Properties.Place�6^     5      $ Магнитуда��6%   $	 120 6`    68   �� $ Properties.Mag�6`     5      $ Глубина��6%   $	 120 6^    66   �� $ Properties.Sig�6^     5      $ 
Время��6%   $	 180 6]    64   �� $ Properties.Time�6]   5      �� 5   
   	 �� Orientation$	 
Horizontal=�6   .+�5      �� -   5        $��count��5      )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$)
 #Введите количество��6#    %  !MaterialDesignFloatingHintTextBox#��[  6W   $	��130��6�   $��Center=�6�   $��10q�6�   �� 5      -   5        $��update��5      $��Обновить��6#   $	��130��66   $��Right=�6W   $��Center=�6s   5      5      5      