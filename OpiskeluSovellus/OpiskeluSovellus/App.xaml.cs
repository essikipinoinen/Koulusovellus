using System;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Prism.Navigation;
using OpiskeluSovellus.Models;
using Prism;
using Prism.Ioc;

namespace OpiskeluSovellus
{
    public partial class App : Application
    {

        public App()
        {
            InitializeComponent();

            // Sovellus aukeaa kirjautumissivulta
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

