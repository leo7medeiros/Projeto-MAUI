using MauiAppProject.Models;
using MauiAppProject.ViewModels;

namespace MauiAppProject.UI.Componentes;

[XamlCompilation(XamlCompilationOptions.Compile)]
public partial class CustomCardCliente : ContentView
{
    private CardClienteViewModel _vm => BindingContext as CardClienteViewModel;

    public CustomCardCliente()
    {
        InitializeComponent();
        BindingContext = new CardClienteViewModel();
    }

    private void btnEditar_Tapped(object sender, TappedEventArgs e)
    {
        if (e.Parameter is CardClienteViewModel context)
        {
            _vm?.EditarCliente?.Invoke(new ClienteModel(context.Id, context.Nome, context.Sobrenome, context.Idade, context.Endereco));
        }
    }

    private void btnExcluir_Tapped(object sender, TappedEventArgs e)
    {
        if (e.Parameter is int id)
        {
            _vm?.ExcluirCliente?.Invoke(id);
        }
    }
}