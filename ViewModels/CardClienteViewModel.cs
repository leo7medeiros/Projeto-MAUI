using MauiAppProject.Models;
using MauiAppProject.UI.Pages.BaseContent;

namespace MauiAppProject.ViewModels;

public class CardClienteViewModel : BaseViewModel
{
    #region PROPERTIES

    private int _id;
    public int Id
    {
        get => _id;
        set { _id = value; OnPropertyChanged(nameof(Id)); }
    }

    private string _nome;
    public string Nome
    {
        get => _nome;
        set { _nome = value; OnPropertyChanged(nameof(Nome)); }
    }

    private string _sobrenome;
    public string Sobrenome
    {
        get => _sobrenome;
        set { _sobrenome = value; OnPropertyChanged(nameof(Sobrenome)); }
    }

    private int _idade;
    public int Idade
    {
        get => _idade;
        set { _idade = value; OnPropertyChanged(nameof(Idade)); }
    }

    private string _endereco;
    public string Endereco
    {
        get => _endereco;
        set { _endereco = value; OnPropertyChanged(nameof(Endereco)); }
    }

    #endregion

    #region ACTIONS

    private Action<int> excluirCliente;
    public Action<int> ExcluirCliente
    {
        get { return excluirCliente; }
        set { excluirCliente = value; }
    }

    private Action<ClienteModel> editarCliente;
    public Action<ClienteModel> EditarCliente
    {
        get { return editarCliente; }
        set { editarCliente = value; }
    }

    #endregion

    public CardClienteViewModel()
    {

    }

    public CardClienteViewModel(int id, string nome, string sobrenome, int idade, string endereco)
    {
        _id = id;
        _nome = nome;
        _sobrenome = sobrenome;
        _idade = idade;
        _endereco = endereco;
    }
}