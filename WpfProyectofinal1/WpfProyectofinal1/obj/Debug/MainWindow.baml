   M S B A M L   `   `   `  ����L  HWpfProyectofinal1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfProyectofinal1WpfProyectofinal1  5   	   "    WpfProyectofinal1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:WpfProyectofinal1     5   	     � Title$)  #Venta de Jugos Naturales por semana��5   	   $	��665��65   $	��861��6B   .��5	      �  J� RenderTransformOrigin$ 	0.524,0.5&�6   .+�5
   
   �� -   5         ��Name$ buttonCargarCSV��5
      $��
Cargar CSV��6*   $
��Left=�6?   $��	36,37,0,0q�6Z   $	��Top=�6m   $��75��6�   6�   �� 5   
   -   5         ��Name$ label��5      $4��.Introdusca Correlativo para buscar al Vendedor��6   $
��Left=�6X   $��	201,7,0,0q�6s   $	��Top=�6�   �� 5   
   -   5        $ buttonBuscarCorrelativo��5      $��Buscar por Correlativo��62   $
��Left=�6S   $��
334,41,0,0q�6n   $	��Top=�6�   $	��136��6�   6�   �� 5   
   -   5         ��Name$ textBoxCorrelativo��5      $
��Left=�6.   $��23��6I   $��
131,37,0,0q�6U    �� TextWrapping$
 Wrap=�6i   $��Correlativo��6}   $	��Top=�6�   $	��120��6�   �� 5   
   -   5        $ textBoxNombre��5      $
��Left=�6)   $��23��6D   $��	36,99,0,0q�6P   $
 Wrap=�6c   $��Nombre��6w   $	��Top=�6�   $	��326��6�   �� 5   
   -   5        $ label1��5      $2��,Introdusca el Nombre para buscar al Vendedor��6    $
��Left=�6W   $��	36,66,0,0q�6r   $	��Top=�6�   �� 5   
   -   5        $ buttonNombres��5      $��Buscar por nombre��6(   $
��Left=�6D   $��
16,135,0,0q�6_   $	��Top=�6s   $	��115��6�   6�   �� 5   
   -   5        $ label2��5      $��Crear nuevo vendedor��6    $
��Left=�6?   $��201,155,0,0q�6Z   $	��Top=�6o   �� 5   
   -	   5        $ textBoxCorrelativo2��5      $
��Left=�6/   $��23��6J   $��
12,191,0,0q�6V   $
 Wrap=�6j   $��Correlativo��6~   $	��Top=�6�   $��75��6�   �� 5   
   -
   5        $ textBoxNombre2��5      $
��Left=�6*   $��23��6E   $��109,191,0,0q�6Q   $
 Wrap=�6f   $��Nombre��6z   $	��Top=�6�   $	��227��6�   �� 5   
   -   5        $ textBoxSemana1��5      $
��Left=�6*   $��23��6E   $��354,191,0,0q�6Q   $
 Wrap=�6f   $��Venta Semana1��6z   $	��Top=�6�   $��94��6�   �� 5   
   -   5        $ textBoxSemana2��5      $
��Left=�6*   $��23��6E   $��465,191,0,0q�6Q   $
 Wrap=�6f   $��Venta Semana2��6z   $	��Top=�6�   $��90��6�   �� 5   
   -   5        $ textBoxSemana3��5      $
��Left=�6*   $��23��6E   $��
36,232,0,0q�6Q   $
 Wrap=�6e   $��Veenta Semana3��6y   $	��Top=�6�   $��95��6�   $ 	0.4,0.478&�6�   �� 5   
   -   5        $ textBoxSemana4��5      $
��Left=�6*   $��23��6E   $��158,232,0,0q�6Q   $
 Wrap=�6f   $��Venta Semana 4��6z   $	��Top=�6�   $��93��6�   �� 5   
   -   5        $ textBoxSucursal��5      $
��Left=�6+   $��23��6F   $��269,232,0,0q�6R   $
 Wrap=�6g   $��Sucursal��6{   $	��Top=�6�   $	��227��6�   �� 5   
   -   5        $ buttonCrearRegistro��5      $��Crear Vendedor��6.   $
��Left=�6G   $��201,279,0,0q�6b   $	��Top=�6w   $	��113��6�   6�   �� 5   
   -   5        $ buttonTodaInforrmacion��5      $��Toda la Informacion��61   $
��Left=�6O   $��
16,366,0,0q�6j   $	��Top=�6~   $	��128��6�   6�   �� 5   
   -   5        $ label3��5      $!��Mostrar toda la informacion��6    $
��Left=�6F   $��254,315,0,0q�6a   $	��Top=�6v   �� 5   
   -   5        $ buttonEliminar��5      $��Eliminar Vendedor��6)   $
��Left=�6E   $��158,135,0,0q�6`   $	��Top=�6u   $	��109��6�   6�   �� 5   
   -   5        $ textBoxSucu��5      $
��Left=�6'   $��23��6B   $��
435,99,0,0q�6N   $
 Wrap=�6b   $	��Top=�6v   $	��120��6�   �� 5   
   -   5        $ label4��5      $��Sucursal que se encuentra��6    $
��Left=�6D   $��
434,65,0,0q�6_   $	��Top=�6s   �� 5   
   -   5        $ buttonActualizar��5      $��Actualizar Vendedor��6+   $
��Left=�6I   $��345,135,0,0q�6d   $	��Top=�6y   $	��125��6�   6�   &   System.Windows.Controls.DataGrid  5    
   -   5          Name$ dataGridventas��5       $
��Left=�6+   $��167,366,0,0q�6F   $	��Top=�6[   $	��151��6s   $	��538��6�   5"      5#      