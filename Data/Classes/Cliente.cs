using MauiAppProject.Data.Classes.Base;
using System.Runtime.Serialization;

namespace MauiAppProject.Data.Classes
{
    [Serializable]
    [DataContract]
    public class Cliente : EntityBase
    {
        private int _id;
        private string _nome = string.Empty;
        private string _sobrenome = string.Empty;
        private int _idade = 0;
        private string _endereco = string.Empty;

        public Cliente() { }

        public Cliente(string nome, string sobrenome, int idade, string endereco)
        {
            _nome = nome;
            _sobrenome = sobrenome;
            _idade = idade;
            _endereco = endereco;
        }

        #region PUBLIC PROPERTIES

        [DataMember]
        public virtual int Id
        {
            get => _id;
            set => _id = value;
        }

        [DataMember]
        public virtual string Nome
        {
            get => _nome;
            set => _nome = value;
        }

        [DataMember]
        public virtual string Sobrenome
        {
            get => _sobrenome;
            set => _sobrenome = value;
        }

        [DataMember]
        public virtual int Idade
        {
            get => _idade;
            set => _idade = value;
        }

        [DataMember]
        public virtual string Endereco
        {
            get => _endereco;
            set => _endereco = value;
        }

        #endregion
    }
}