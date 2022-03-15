//Copyright Ike Nwaogu
//
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
        
        public MainWindow()
        {
            InitializeComponent();
            getWeatherItems();
            
            DateTime dt = DateTime.Now;
            dayLabel.Content = dt.DayOfWeek.ToString();

            monthDateLabel.Content = getFullMonthName(dt.Month) + " " + dt.Day.ToString();
            

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
            if (e.LeftButton == MouseButtonState.Pressed)
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


        private async Task getWeatherItems()
        {
            HttpClient client = new HttpClient();
            //use this to get a description of the weather and the high and low for the day
            string weatherInfo = await client.GetStringAsync("https://api.openweathermap.org/data/2.5/weather?lat=34.0234&lon=-84.6155&units=imperial&appid=key");
            var rootObject = JsonConvert.DeserializeObject<Root>(weatherInfo);
            Uri imageUri;
            if (rootObject != null)
            {
               
                switch (rootObject.weather[0].main)
                {
                    case "Clear":
                        imageUri = new Uri("\\SlideImages\\sunnyday.jpg", UriKind.RelativeOrAbsolute);
                        weatherImage.Source = new BitmapImage(imageUri);
                        break;
                    case "Clouds":
                        imageUri = new Uri("\\SlideImages\\cloudy.jpg", UriKind.RelativeOrAbsolute);
                        weatherImage.Source = new BitmapImage(imageUri);
                        break;
                    case "Snow":
                        imageUri = new Uri("\\SlideImages\\snowstorm.jpg", UriKind.RelativeOrAbsolute);
                        weatherImage.Source = new BitmapImage(imageUri);
                        break;
                    case "Rain":
                        imageUri = new Uri("\\SlideImages\\rain.jpg", UriKind.RelativeOrAbsolute);
                        weatherImage.Source = new BitmapImage(imageUri);
                        break;
                    case "Thunderstorm":
                        imageUri = new Uri("\\SlideImages\\thunderstorm.jpg", UriKind.RelativeOrAbsolute);
                        weatherImage.Source = new BitmapImage(imageUri);
                        break;
                }
            }
           
            
            /*if (rootObject.weather[0].main == "Clear")
            {
                imageUri = new Uri("\\SlideImages\\sunnyday.jpg", UriKind.RelativeOrAbsolute);
                weatherImage.Source = new BitmapImage(imageUri);
            }
            else if (rootObject.weather[0].main == "Clouds")
            {
                imageUri = new Uri("\\SlideImages\\cloudy.jpg", UriKind.RelativeOrAbsolute);
                weatherImage.Source = new BitmapImage(imageUri);
            }
            else if (rootObject.weather[0].main.Equals("Snow"))
            {
                imageUri = new Uri("\\SlideImages\\snowstorm.jpg", UriKind.RelativeOrAbsolute);
                weatherImage.Source = new BitmapImage(imageUri);

            }
            else if (rootObject.weather[0].main == "Rain")
            {
                imageUri = new Uri("\\SlideImages\\rain.jpg", UriKind.RelativeOrAbsolute);
                weatherImage.Source = new BitmapImage(imageUri);
            }
            else if (rootObject.weather[0].main == "Thunderstorm")
            {
                imageUri = new Uri("\\SlideImages\\rain.jpg", UriKind.RelativeOrAbsolute);
                weatherImage.Source = new BitmapImage(imageUri);
            }*/

            if (rootObject != null)
            {
                description.Content = rootObject.weather[0].description;
                //rounded to int because API gives decimal
                temp_min_max.Content = ((int)(rootObject.main.temp_min)).ToString() + "°" + "/ " + ((int)(rootObject.main.temp_max)).ToString() + "°";

            }

            //Use this to get the current temperature and feels like
            var currentWeatherInfo = await client.GetStringAsync("https://api.openweathermap.org/data/2.5/onecall?lat=34.0234&lon=-84.6155&exclude=minutely,hourly,daily,alerts&units=imperial&appid=key");
            var currentWeatherObject = JsonConvert.DeserializeObject<CurrentWeatherModel.currentWeatherRoot>(currentWeatherInfo);
            if (currentWeatherObject != null)
            {
                //rounded to int because API gives decimal
                temp.Content = ((int)currentWeatherObject.current.temp).ToString() + "°";
                feels_like.Content = ("Feels like "+(int)(currentWeatherObject.current.feels_like)).ToString() + "°";
            }
        }

    }
}
