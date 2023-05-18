using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Net.Http;
using Newtonsoft.Json;
using OpiskeluSovellus.Models;
using OpiskeluSovellus.Views;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace OpiskeluSovellus
{
    public partial class AjankohtaistaSivu : ContentPage
	{
        ObservableCollection<Artikkelit> dataa = new ObservableCollection<Artikkelit>();

        public AjankohtaistaSivu()
        {
            InitializeComponent();

            LoadDataFromRestAPI();


            async void LoadDataFromRestAPI()
            {
                try
                {
                    HttpClientHandler GetInsecureHandler()
                    {
                        HttpClientHandler handler = new HttpClientHandler();
                        handler.ServerCertificateCustomValidationCallback = (message, cert, chain, errors) =>
                        {
                            if (cert.Issuer.Equals("CN=localhost"))
                                return true;
                            return errors == System.Net.Security.SslPolicyErrors.None;
                        };
                        return handler;
                    }
#if DEBUG
                    HttpClientHandler insecureHandler = GetInsecureHandler();
                    HttpClient client = new HttpClient(insecureHandler);
#else
                    HttpClient client = new HttpClient();
#endif

                    client.BaseAddress = new Uri("https://10.0.2.2:7160/");
                    string json = await client.GetStringAsync("api/artikkelit");

                    IEnumerable<Artikkelit> artikkelits = JsonConvert.DeserializeObject<Artikkelit[]>(json);
                    ObservableCollection<Artikkelit> dataa2 = new ObservableCollection<Artikkelit>(artikkelits);
                    dataa = dataa2;

                    // LISTAN JÄRJESTYKSEKSI LAITETAAN UUDEMMASTA VANHEMPAAN
                    dataa = new ObservableCollection<Artikkelit>(dataa.OrderBy(a => a.Julkaisuaika));


                    artikkelilista.ItemsSource = dataa;

                    string kayttajaIdString = Preferences.Get("KayttajaId", null);
                    int kayttajaId = 0;
                    if (!string.IsNullOrEmpty(kayttajaIdString))
                    {
                        int.TryParse(kayttajaIdString, out kayttajaId);
                    }

                    if (kayttajaId == 1)
                    {
                        lisäysnappi.IsVisible = true;
                    }


                }
                catch (Exception e)
                {
                    await DisplayAlert("Virhe", e.Message.ToString(), "Ok");
                }
            }
        }


        // JOS LAJITTELUNAPPIA KLIKATAAN, LISTAN JÄRJESTYSTÄ MUUTETAAN 
        void lajittelunappi_Clicked(System.Object sender, System.EventArgs e)
        {
            if (dataa.First().Julkaisuaika <= dataa.Last().Julkaisuaika)
            {
                dataa = new ObservableCollection<Artikkelit>(dataa.OrderByDescending(a => a.Julkaisuaika));
                artikkelilista.ItemsSource = dataa;
            }
            else
            {
                dataa = new ObservableCollection<Artikkelit>(dataa.OrderBy(a => a.Julkaisuaika));
                artikkelilista.ItemsSource = dataa;
            }
        }

        void Lisää_Clicked(System.Object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new LisääArtikkelitSivu());
        }
    }
}

