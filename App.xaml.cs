using MauiAppProject.UI.Pages;

namespace MauiAppProject
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new TelaPrincipalPage());
            NavigationPage.SetHasNavigationBar(MainPage, false);
        }
    }
}