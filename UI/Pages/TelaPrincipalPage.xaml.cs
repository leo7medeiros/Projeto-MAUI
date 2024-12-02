using MauiAppProject.UI.Componentes;
using MauiAppProject.UI.Pages.BaseContent;
using MauiAppProject.ViewModels;
using Mopups.Services;

namespace MauiAppProject.UI.Pages;

[XamlCompilation(XamlCompilationOptions.Compile)]
public partial class TelaPrincipalPage : BaseContentPage
{
    public ClienteViewModel _vm => BindingContext as ClienteViewModel;

    public TelaPrincipalPage()
    {
        InitializeComponent();
        NavigationPage.SetHasNavigationBar(this, false);
    }

    private async void NovoCliente_Clicked(object sender, EventArgs e)
    {
        var popup = new CustomPopUpCadastroCliente(_vm);
        await MopupService.Instance.PushAsync(popup);
    }
}