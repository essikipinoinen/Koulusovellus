﻿using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using OpiskeluSovellus.Views;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace OpiskeluSovellus
{	
	public partial class AloitusSivu : ContentPage
	{


        public AloitusSivu()
        {
            InitializeComponent();
        }

        void Button_Clicked_Kurssit(System.Object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new KurssitSivu());
        }

        void Button_Clicked_Ajankohtaista(System.Object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new AjankohtaistaSivu());
        }

        void Button_Clicked_Luokat(System.Object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new LuokatSivu());
        }

        void Button_Clicked_Henkilökunta(System.Object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new HenkilökuntaSivu());
        }

        void Button_Clicked_Ruokalista(System.Object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new RuokaSivu());
        }

        void Button_Clicked_OmatTiedot(System.Object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new OpiskelijaSivu());
        }

        void Button_Clicked_Lukujärjestys(System.Object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new LukujärjestysSivu());
        }

        // Kun "Kirjaudu ulos" -painiketta klikataan,
        // poistetaan tallennetut käyttäjätunnus ja salasana SecureStoragesta
        // ja siirrytään "KirjautumisSivu" -sivulle
        void Button_Clicked_KirjauduUlos(System.Object sender, System.EventArgs e)
        {
            SecureStorage.Remove("Kayttajatunnus");
            SecureStorage.Remove("Salasana");
            Navigation.PushAsync(new KirjautumisSivu());
        }
    }
}

