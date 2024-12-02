using Android.Widget;
using MauiAppProject.Dependências.Effects;
using Droid = Android;

[assembly: ResolutionGroupName("MauiAppProject.Dependencias.Effects")]
[assembly: ExportEffect(typeof(RemoveEntryBordersEffect), nameof(RemoveEntryBordersEffect))]
namespace MauiAppProject.Platforms.Android.Effects
{
    public class RemoveEntryBordersEffect : PlatformEffect<Entry, EditText>
    {
        protected override void OnAttached()
        {
            if (Control is EditText editText)
            {
                editText.SetBackgroundColor(Droid.Graphics.Color.Transparent);
            }
        }

        protected override void OnDetached()
        {
            if (Control is EditText editText)
            {
                editText.SetBackgroundColor(Droid.Graphics.Color.Transparent);
            }
        }
    }
}