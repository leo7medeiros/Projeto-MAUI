namespace MauiAppProject.Models
{
    public class ClienteModel
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Sobrenome { get; set; }
        public int Idade { get; set; }
        public string Endereco { get; set; }

        public ClienteModel()
        {

        }

        public ClienteModel(int id, string nome, string sobrenome, int idade, string endereco)
        {
            Id = id;
            Nome = nome;
            Sobrenome = sobrenome;
            Idade = idade;
            Endereco = endereco;
        }
    }
}