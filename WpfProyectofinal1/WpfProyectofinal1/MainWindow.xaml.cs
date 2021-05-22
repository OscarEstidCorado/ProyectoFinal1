using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfProyectofinal1.Clases.Archivos;
using WpfProyectofinal1.Clases.BasedeDatos;

namespace WpfProyectofinal1
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void cargarArchivoExterno()
        {
            string fuente = @"C:\Users\OscarEstid\OneDrive\Documentos\PROYECTO.PROGRA1\VENTAS.JUGOS.NATURALES.csv";
            ClsArchivos ar = new ClsArchivos();
            //Obtener todo el archivo linea por linea dentro de un arreglo simple
            string[] ArregloNotas = ar.LeerArchivo(fuente);
            string sentencia_sql = "";
            int Numerolineas = 0;


            foreach (string linea in ArregloNotas)
            {
                //Obtener datos

                String[] datos = linea.Split(';');

                if (Numerolineas > 0)

                {
                    sentencia_sql += $"insert into tb_ventas valus({ datos[0]},'{ datos[1]}','{ datos[2]}','{ datos[3]}','{ datos[4]}','{ datos[5]}','{ datos[6]}');";


                }
                Numerolineas++;
            }


        }

        private void buttonCargarCSV_Click(object sender, RoutedEventArgs e)
        {
            cargarArchivoExterno();

        }

        private void buttonBuscarCorrelativo_Click(object sender, RoutedEventArgs e)
        {
            string id = textBoxCorrelativo.Text;

            string condicion = $"Correlativo ={id}";
            DataTable dt = BuscarDatos(condicion);
            string condi = $"Sucursal ={id}";
            DataTable tb = BuscarDatos(condicion);


            if (dt.Rows.Count > 0)
            {
                string nombre = dt.Rows[0].Field<string>("Nombre");
                textBoxNombre.Text = nombre;
                string nombres = dt.Rows[0].Field<string>("Sucursal");
                textBoxSucu.Text = nombres;
            }
            else
            {
                textBoxNombre.Text = "No hay Informacion";
            }
        }

        

        private void buttonNombres_Click(object sender, RoutedEventArgs e)
        {
            string nombre = textBoxNombre.Text;
            nombre = nombre.Replace(' ', '%');

            string condicion = $" Nombre like '%{nombre}%' ";
            var dt = BuscarDatos(condicion);
            if (dt.Rows.Count > 0)
            {
                int id = dt.Rows[0].Field<int>("Correlativo");
                textBoxCorrelativo.Text = id + "";
            }
            else
            {
                textBoxNombre.Text = "No hay Informacion";
            }
        }


        private DataTable BuscarDatos(string condicion = "1=1")

        {

            ClsConeccion cn = new ClsConeccion();
            DataTable dt = new DataTable();
            string cuerito = $"Select * from tb_ventas where {condicion}";
            dt = cn.consultaTablaDirecta(cuerito);
            dataGridventas.DataContext = dt;
            //dataGridVendedores();
            return dt;

        }

        private void buttonCrearRegistro_Click(object sender, RoutedEventArgs e)
        {
            string correl = textBoxCorrelativo2.Text;
            string nombre = textBoxNombre2.Text;
            string sema1 = textBoxSemana1.Text;
            string sema2 = textBoxSemana2.Text;
            string sema3 = textBoxSemana3.Text;
            string sema4 = textBoxSemana4.Text;
            string sucu = textBoxSucursal.Text;
            string sentencia = $"insert into tb_ventas (Correlativo,Nombre,Semana1(Q),Semana2(Q),Semana3(Q),Semana4(Q),Sucursal) values {correl},'{nombre}',{sema1},{sema2},{sema3},{sema4},'{sucu}'";
            ClsConeccion cn = new ClsConeccion();
            cn.EjecutaSQLDirecto(sentencia);
            BuscarDatos();
        }

        private void buttonTodaInforrmacion_Click(object sender, RoutedEventArgs e)
        {
            var dt = BuscarDatos();
            dataGridventas.DataContext = dt;
            //listB
            
        }

        private void buttonEliminar_Click(object sender, RoutedEventArgs e)
        {
            string id = textBoxCorrelativo.Text;
            string nombre = textBoxNombre.Text;

            string sentencia = $"delete from tb_ventas where Correlativo = {id}";
            ClsConeccion cn = new ClsConeccion();
            cn.EjecutaSQLDirecto(sentencia);
            BuscarDatos();
        }

        private void buttonActualizar_Click(object sender, RoutedEventArgs e)
        {
            string id = textBoxCorrelativo.Text;
            string nombre = textBoxNombre.Text;

            string sentencia = $"update tb_ventas set nombre = '{nombre}' where Correlativo = {id}";
            ClsConeccion cn = new ClsConeccion();
            cn.EjecutaSQLDirecto(sentencia);
            BuscarDatos();
        }
    }
    }

