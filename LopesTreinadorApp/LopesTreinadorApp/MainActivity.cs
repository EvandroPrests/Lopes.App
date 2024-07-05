
using Android.Content;
using LopesTreinadorApp.Activities;

namespace LopesTreinadorApp
{
    [Activity(Label = "@string/app_name", MainLauncher = true)]
    public class MainActivity : Activity
    {
        protected override void OnCreate(Bundle? savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.activity_main);

            var intent = new Intent(this, typeof(LoginActivity));
            StartActivity(intent);
        }
    }
}