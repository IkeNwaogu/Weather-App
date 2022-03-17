//Copyright Ike Nwaogu
//
using System;
using System.Globalization;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media.Imaging;
using System.Net.Http;
using Newtonsoft.Json;

namespace WeatherApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //Todo: use location api to get location

        public MainWindow()
        {
            InitializeComponent();
            getWeatherItems();
            DateTime dt = DateTime.Now;
            dayLabel.Content = dt.DayOfWeek.ToString();
            monthDateLabel.Content = getFullMonthName(dt.Month) + " " + dt.Day.ToString();

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


        private async Task<List<String>> getWeatherJsonAsync()
        {
            HttpClient client = new HttpClient();
            var weatherInfo = await client.GetStringAsync("https://api.openweathermap.org/data/2.5/weather?lat=34.0234&lon=-84.6155&units=imperial&appid=key");
            var currentWeatherInfo = await client.GetStringAsync("https://api.openweathermap.org/data/2.5/onecall?lat=34.0234&lon=-84.6155&exclude=minutely,hourly,daily,alerts&units=imperial&appid=key");
            List<String> results = new List<String>();
            results.Add(weatherInfo);
            results.Add(currentWeatherInfo);
            return results;
        }


        private void getWeatherItems()
        {
            List<String> weatherItems = Task.Run(getWeatherJsonAsync).Result;
            var rootObject = JsonConvert.DeserializeObject<Root>(weatherItems[0]);
            #region use this to get a description of the weather and the high and low for the day
            Uri imageUri;
            if (rootObject == null)
            {
                MessageBox.Show("Null");
            }

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

                description.Content = rootObject.weather[0].description;
                //rounded to int because API gives decimal
                temp_min_max.Content = ((int)(rootObject.main.temp_min)).ToString() + "°" + "/ " + ((int)(rootObject.main.temp_max)).ToString() + "°";
            }
            #endregion

            #region Use this to get the current temperature and feels like
            var currentWeatherObject = JsonConvert.DeserializeObject<CurrentWeatherModel.currentWeatherRoot>(weatherItems[1]);
            if (currentWeatherObject != null)
            {
                //rounded to int because API gives decimal
                temp.Content = ((int)currentWeatherObject.current.temp).ToString() + "°";
                feels_like.Content = ("Feels like " + (int)(currentWeatherObject.current.feels_like)).ToString() + "°";
            }
            #endregion
        }

    }
}
