   M S B A M L   `   `   `  ����J  FWpfApplication1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	        WpfApplication1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   /localclr-namespace:WpfApplication1     5   	   9system&clr-namespace:System;assembly=mscorlib     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5       
  myEnum S� 
MethodName S� 
ObjectType  System.Enum S� MethodParameters M� Type   WpfApplication1.SexOpt��%e   &	        S� 5	   
   $ 	GetValues��6,   "  6D    5
      M� 5      "  6   5      5      .��5      � -   5         �Name$ 	GridPanel��5      .+�5   
   �� -   5         ��Name$	 xxx��5      $
��Left=�6   $��23��6:    �� TextWrapping$
 Wrap=�6F   $	��Top=�6Z   $	��120��6r   ��6~   �� 	 �� Path$
	 Name��� 5   
   -   5        $��Button��5      $
��Left=�6"   $��	137,0,0,0q�6=   $	��Top=�6P   $��75��6h   6s   &   System.Windows.Controls.DataGrid  5   
   -   5        
  Name$
 
dataByshow��5      $
��Left=�6'   $��0,69,0,0q�6B      AutoGenerateColumns .  $	��517��6�   ��6T   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 名称1��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 90 62   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *Name+  5      $ 单位��6%   $ 40 61    6<   �� *Unit+4  .System.Windows.Controls.DataGridComboBoxColumn  5      $ 80 6)   $ 性别��64      SelectedItemBinding 6@   �� *Sex+   ItemsSource 6d   ��  �� Source# [  4	  .System.Windows.Controls.DataGridCheckBoxColumn	  5      $ 是否通过考试��6)   $	 100 69    6E   �� *Pass+5
  /System.Windows.Controls.DataGridHyperlinkColumn
  5      $ 电子邮件��6*   $	 150 68    6D   �� *Email+5      (  "System.Windows.Controls.DatePicker  5   
   $
��Left=�6   $��
241,-1,0,0q�60   $	��Top=�6D   5      5      