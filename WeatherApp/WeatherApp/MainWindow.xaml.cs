using System;
using System.Globalization;
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
        //Todo: Create debug drop down to change weather/picture at will
        //Todo: Create option to change from celcisus to farenheight
        //Todo: use location api to get location
        //Todo: create loading indicator animation for when api is loading
        //Todo: Try creating seperate async methods for each currentWeatherModel and WeatherModel
        //farenheight api call:https://api.openweathermap.org/data/2.5/onecall?lat=34.0234&lon=-84.6155&exclude=minutely,hourly,daily,alerts&units=imperial&appid=15724f573e12682b5fbba6f11449f517
        //celsius api call: https://api.openweathermap.org/data/2.5/onecall?lat=34.0234&lon=-84.6155&exclude=minutely,hourly,daily,alerts&units=metric&appid=15724f573e12682b5fbba6f11449f517
        public MainWindow()
        {
            InitializeComponent();
            returnWeatherContent();
            Uri imageUri = new Uri("\\SlideImages\\sunnyday.jpg", UriKind.RelativeOrAbsolute);
            sunnyday.Source= new BitmapImage(imageUri);
            DateTime dt = DateTime.Now;
            dayLabel.Content = dt.DayOfWeek.ToString();

            monthDateLabel.Content = getFullMonthName(dt.Month)+" "+dt.Day.ToString();

           //Todo: Get API code into here. Write code that switches image based on the days weather
           //hi

        }
        //Returns the full name of the month
        private string getFullMonthName(int month)
        {
            return CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(month);
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

  

        HttpClient client = new HttpClient();
        private async Task returnWeatherContent()
        {
            await getWeatherItems();
              
        }
        
         private async Task getWeatherItems()
        {
            //string weatherInfo = await client.GetStringAsync("https://http://api.openweathermap.org/data/2.5/weather?lat=34.0234&lon=-84.6155&appid=15724f573e12682b5fbba6f11449f517");
            string currentWeatherInfo = await client.GetStringAsync("https://api.openweathermap.org/data/2.5/onecall?lat=34.0234&lon=-84.6155&exclude=minutely,hourly,daily,alerts&units=imperial&appid=15724f573e12682b5fbba6f11449f517");

            //var rootObject = JsonConvert.DeserializeObject<Root>(weatherInfo);
            var currentWeatherObject = JsonConvert.DeserializeObject<CurrentWeatherModel.currentWeatherRoot>(currentWeatherInfo);
            /*if (rootObject != null)
            {
                
                
                description.Content = rootObject.weather[2].ToString() + "°";
                temp_min_max.Content = (rootObject.main.temp_min-273.15).ToString()+"°" + "/" + (rootObject.main.temp_max-273.15).ToString() + "°";
                
            }*/

            if (currentWeatherObject != null)
            {
                temp.Content = (currentWeatherObject.current.temp).ToString() + "°";
                feels_like.Content = (currentWeatherObject.current.feels_like).ToString() + "°";

                MessageBox.Show(currentWeatherObject.current.temp.ToString());
                MessageBox.Show("hello");
            }
            else if (currentWeatherObject == null)
            {
                MessageBox.Show("Null");
            }
        }

    }
}
