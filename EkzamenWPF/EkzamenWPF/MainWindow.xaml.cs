using EkzamenWPF.DTO;
using EkzamenWPF.Service;
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

namespace EkzamenWPF
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        public void GetEarthQuake(int countForJson)
        {
            var deserilize = new Deserialize();
            FeatureCollection result = deserilize.GetJson(countForJson);

            earthQuakeGrid.ItemsSource = result.Features;
        }

        private void UpdateButton(object sender, RoutedEventArgs e)
        {
            var countForJson = 0;
            if (count.Text.Length == 0 || !int.TryParse(count.Text, out countForJson))
            {
                MessageBox.Show("Введите количество корректно");
            }
            else
            {
                GetEarthQuake(countForJson);
            }
        }
    }
}
