using System;
using System.Collections.Generic;
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
using System.IO;
using System.Net.Http;
using Newtonsoft.Json;

namespace WeatherApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Uri imageUri = new Uri("\\SlideImages\\sunnyday.jpg", UriKind.RelativeOrAbsolute);
            sunnyday.Source= new BitmapImage(imageUri);

           //Todo: Get API code into here. Write code that switches image based on the days weather
           //hi

        }

        //Allows window to be dragable when border clicked on
        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(e.LeftButton == MouseButtonState.Pressed)
                DragMove(); 
        }

        //Minimizes Window
        private void ButtonMinimize_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.MainWindow.WindowState = WindowState.Minimized;
        }

        //Closes the window
        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        /*private void WindowSateButton_Click(object sender, RoutedEventArgs e)
        {
            if (Application.Current.MainWindow.WindowState != WindowState.Maximized) 
            {
                Application.Current.MainWindow.WindowState = WindowState.Maximized;
            }
            else
            {
                Application.Current.MainWindow.WindowState = WindowState.Normal;
            }
                
        }*/



        /*HttpClient client = new HttpClient();
        static async Task Main(string[] args)
        {
            Program program = new Program();
            await program.getWeatherItems();
        }

         private async Task getWeatherItems()
        {
            string weatherInfo = await client.GetStringAsync("https://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=15724f573e12682b5fbba6f11449f517");

            var rootObject = JsonConvert.DeserializeObject<Root>(weatherInfo);

            Console.WriteLine("lon:"+rootObject.coord.lon);
            Console.WriteLine("lat:" + rootObject.coord.lat);

        }*/

    }
}
