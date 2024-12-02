using Mopups.Pages;
using Mopups.Services;
using MauiAppProject.ViewModels;
using MauiAppProject.Models;
using MauiAppProject.Data.Enums;

namespace MauiAppProject.UI.Componentes;

[XamlCompilation(XamlCompilationOptions.Compile)]
public partial class CustomPopUpCadastroCliente : PopupPage
{
    private ClienteViewModel _vm;
    private ClienteModel _cliente;

    public CustomPopUpCadastroCliente(ClienteViewModel vm, ClienteModel? cliente = null)
    {
        InitializeComponent();
        _vm = vm;
        _cliente = cliente ?? new ClienteModel();
        BindingContext = _cliente;
    }

    private async void Salvar_Clicked(object sender, EventArgs e)
    {
        if (ValidaCampos(_cliente))
        {
            _vm?.Salvar(_cliente);
            await MopupService.Instance.PopAsync();
        }
        else
        {
            await CustomPopUpMensagem.Alerta("AVISO!", "Todos os campos são obrigatórios.", Tipos.TipoNotificacao.Aviso);
        }
    }

    private async void Cancelar_Clicked(object sender, EventArgs e)
    {
        await MopupService.Instance.PopAsync();
    }

    private bool ValidaCampos(ClienteModel cliente)
    {
        return cliente != null && !string.IsNullOrEmpty(cliente.Nome) && !string.IsNullOrEmpty(cliente.Sobrenome)
                               && !string.IsNullOrEmpty(cliente.Idade.ToString()) && !string.IsNullOrEmpty(cliente.Endereco);
    }
}