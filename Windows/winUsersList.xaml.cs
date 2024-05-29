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
using CarServiceKuchura_12.Windows;
using CarServiceKuchura_12.ApplicationData;

namespace CarServiceKuchura_12.Windows
{
    /// <summary>
    /// Логика взаимодействия для winUsersList.xaml
    /// </summary>
    public partial class winUsersList : Window
    {
        public winUsersList()
        {
            InitializeComponent();
            dtListUsers.ItemsSource = DBCarServiceKuchura12Entities.GetContext().user.ToList();
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
