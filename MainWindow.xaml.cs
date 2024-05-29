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
using CarServiceKuchura_12.ApplicationData;
using CarServiceKuchura_12.Windows;

namespace CarServiceKuchura_12
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            /// <c>
            /// Подключение БД
            /// </c>
            AppConnect.dBCar = new ApplicationData.DBCarServiceKuchura12Entities();
        }

        private void btnSignIn_Click(object sender, RoutedEventArgs e)
        {
            /// <summary>
            /// код для авторизации: поиск по логину/паролю и присвоение роли
            /// </summary>
            try
            {
                user curUser = DBCarServiceKuchura12Entities.GetContext().user.FirstOrDefault(p => p.login == txbLogin.Text && p.password == pxbPassword.Password);

                if (curUser == null)
                    MessageBox.Show("Пользователь не найден");
                else
                {
                    winCarDiagnost winCarDiagnost = new winCarDiagnost();
                    winCarMechanic winCarMechanic = new winCarMechanic();
                    winMasterReceipt winMasterReceipt = new winMasterReceipt();

                    winGuest winGuest = new winGuest();

                    switch (curUser.userroleid)
                    {
                        case 1:
                            MessageBox.Show("Здравствуйте, автомеханик " + curUser.firstname);
                            var MW = Window.GetWindow(this);
                            winCarMechanic.Show();
                            MW.Close();
                            break;
                        case 2:
                            MessageBox.Show("Здравствуйте, мастер приемщик " + curUser.firstname);
                            MW = Window.GetWindow(this);
                            winMasterReceipt.Show();
                            MW.Close();
                            break;
                        case 3:
                            MessageBox.Show("Здравствуйте, автодиагност " + curUser.firstname);
                            MW = Window.GetWindow(this);
                            winCarDiagnost.Show();
                            MW.Close();
                            break;
                    }
                }
            }
            /// <summary>
            /// обработка исключения
            /// </summary>
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void btnGuest_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
