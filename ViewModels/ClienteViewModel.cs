using MauiAppProject.Data.Enums;
using MauiAppProject.Models;
using MauiAppProject.UI.Componentes;
using MauiAppProject.UI.Pages.BaseContent;
using Mopups.Services;
using System.Collections.ObjectModel;

namespace MauiAppProject.ViewModels;

public class ClienteViewModel : BaseViewModel
{
    #region PROPERTIES

    private ObservableCollection<CardClienteViewModel> _cardClienteView = [];
    public ObservableCollection<CardClienteViewModel> CardClienteView
    {
        get => _cardClienteView;
        set
        {
            _cardClienteView = value; OnPropertyChanged(nameof(CardClienteView));
        }
    }

    private int IdClienteExclusão = 0;

    #endregion

    public async void Salvar(ClienteModel cliente)
    {
        try
        {
            MainThread.BeginInvokeOnMainThread(() =>
            {
                if (cliente.Id != 0) // EDITAR CLIENTE
                {
                    CardClienteViewModel card = CardClienteView.FirstOrDefault(x => x.Id == cliente.Id);

                    card.Nome = cliente.Nome;
                    card.Sobrenome = cliente.Sobrenome;
                    card.Idade = cliente.Idade;
                    card.Endereco = cliente.Endereco;
                }
                else // SALVAR NOVO CLIENTE
                {
                    int idCliente = CardClienteView.Count > 0 ? CardClienteView.OrderByDescending(x => x.Id)
                                                                               .Select(x => x.Id)
                                                                               .FirstOrDefault() : 0;

                    CardClienteViewModel cardCliente = new CardClienteViewModel(idCliente + 1, cliente.Nome, cliente.Sobrenome, cliente.Idade, cliente.Endereco)
                    {
                        EditarCliente = Editar_Command,
                        ExcluirCliente = Excluir_Command,
                    };

                    CardClienteView.Add(cardCliente);
                }
            });
        }
        catch (Exception ex)
        {
            await CustomPopUpMensagem.Alerta("ERRO!", ex.Message, Tipos.TipoNotificacao.Erro);
        }
    }

    public async Task ExcluirCliente()
    {
        try
        {
            var cardCliente = CardClienteView.FirstOrDefault(c => c.Id == IdClienteExclusão);
            if (cardCliente != null)
            {
                CardClienteView.Remove(cardCliente);
            }

            if (MopupService.Instance.PopupStack.Count > 0)
            {
                await MopupService.Instance.PopAsync();
            }
        }
        catch (Exception ex)
        {
            await CustomPopUpMensagem.Alerta("ERRO!", ex.Message, Tipos.TipoNotificacao.Erro);
        }
    }

    #region COMMANDS

    public async void Editar_Command(ClienteModel cliente)
    {
        var popup = new CustomPopUpCadastroCliente(this, cliente);
        await MopupService.Instance.PushAsync(popup);
    }

    public async void Excluir_Command(int IdCliente)
    {
        IdClienteExclusão = IdCliente;
        var pop = new CustomPopUpConfirmar("ATENÇÃO!", "Deseja confirmar a exclusão?", "icone_aviso.svg", ExcluirCliente, CancelarAcesso);
        await MopupService.Instance.PushAsync(pop);
    }

    public async Task CancelarAcesso()
    {
        if (MopupService.Instance.PopupStack.Count > 0)
        {
            await MopupService.Instance.PopAsync();
        }
    }

    #endregion
}