using System.Reflection;
using System.Runtime.Serialization;

namespace MauiAppProject.Data.Classes.Base
{
    [Serializable]
    [DataContract]
    public abstract class EntityBase : NotifyPropertyChangedBase
    {
        public int SafeGetHashCode(object? obj)
        {
            return obj?.GetHashCode() ?? 0;
        }

        public override int GetHashCode()
        {
            var fields = GetType().GetFields(BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.Public);
            var properties = GetType().GetProperties(BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.Public);

            unchecked
            {
                int hash = fields.Select(field => field.GetValue(this)).Aggregate(17, (current, value) => current * 23 + SafeGetHashCode(value));
                return (from property in properties where property.CanRead select property.GetValue(this)).Aggregate(hash, (current, value) => current * 23 + SafeGetHashCode(value));
            }
        }
    }
}