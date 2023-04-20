using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace OpiskeluSovellus
{
    public partial class App : Application
    {
        public App ()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new KirjautumisSivu());
        }

        protected override void OnStart ()
        {
        }

        protected override void OnSleep ()
        {
        }

        protected override void OnResume ()
        {
        }
    }
}

