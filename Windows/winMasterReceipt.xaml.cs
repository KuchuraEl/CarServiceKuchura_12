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
using System.Windows.Shapes;

namespace CarServiceKuchura_12.Windows
{
    /// <summary>
    /// Логика взаимодействия для winMasterReceipt.xaml
    /// </summary>
    public partial class winMasterReceipt : Window
    {
        public winMasterReceipt()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Обработчики переходов на окна
        /// </summary>
        private void btnUsers_Click(object sender, RoutedEventArgs e)
        {
            winUsersList winUsersList = new winUsersList();
            winUsersList.Show();
        }

        private void btnOrders_Click(object sender, RoutedEventArgs e)
        {
            winAddOrder winAddOrder = new winAddOrder();
            winAddOrder.Show();
        }

        private void btnSmenu_Click(object sender, RoutedEventArgs e)
        {
            winAddShift winAddShift = new winAddShift();
            winAddShift.Show();
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            var This = Window.GetWindow(this);
            mainWindow.Show();
            This.Close();
        }
    }
}
