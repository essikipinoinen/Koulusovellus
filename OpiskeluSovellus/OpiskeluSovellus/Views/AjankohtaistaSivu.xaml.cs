using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json;
using OpiskeluSovellus.Models;
using OpiskeluSovellus.Views;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace OpiskeluSovellus
{
    public partial class AjankohtaistaSivu : ContentPage
    {
        // Muuttujan alustaminen
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

                    // Asetetaan artikkelit järjestykseen julkaisuajan perusteella uusimmasta vanhimpaan
                    dataa = new ObservableCollection<Artikkelit>(dataa.OrderBy(a => a.Julkaisuaika));

                    artikkelilista.ItemsSource = dataa;


                    // Haetaan kirjautumisessa tallennettu Käyttäjä ID
                    string kayttajaIdString = Preferences.Get("KayttajaId", null);
                    int kayttajaId = 0;
                    if (!string.IsNullOrEmpty(kayttajaIdString))
                    {
                        int.TryParse(kayttajaIdString, out kayttajaId);
                    }

                    // Tarkistetaan käyttäjä ID:n perusteella, onko lisäysnappi näkyvissä
                    if (kayttajaId == 1)
                    {
                        lisäysnappi.IsVisible = true;
                    }

                    // Etsitään listviewistä poistonapit ja muutetaan se näkyväksi käyttäjä ID:n perusteella
                    // (koska poistonappi on listviewissä, sitä ei löydä samalla tavalla kuin lisäysnappia)
                    foreach (var artikkeli in dataa)
                    {
                        var listViewItem = artikkelilista.TemplatedItems.First(item => (item.BindingContext as Artikkelit) == artikkeli);
                        var poistonappi = listViewItem.FindByName<ImageButton>("poistonappi");

                        if (kayttajaId == 1)
                        {
                            poistonappi.IsVisible = true;
                        }
                    }
                }
                catch (Exception e)
                {
                    await DisplayAlert("Virhe", e.Message.ToString(), "Ok");
                }
            }
        }



        // Jos lajittelunappia klikataan, listan järjestys muuttuu päinvastaiseksi
        void lajittelunappi_Clicked(System.Object sender, System.EventArgs e)
        {
            // Tarkistetaan, onko listan ensimmäinen artikkeli julkaisuaikajärjestyksessä viimeinen
            if (dataa.First().Julkaisuaika <= dataa.Last().Julkaisuaika)
            {
                // Asetetaan artikkelit järjestykseen julkaisuajan perusteella uusimmasta vanhimpaan
                dataa = new ObservableCollection<Artikkelit>(dataa.OrderByDescending(a => a.Julkaisuaika));
                artikkelilista.ItemsSource = dataa;
            }
            else
            {
                // Asetetaan artikkelit järjestykseen julkaisuajan perusteella vanhimmasta uusimpaan
                dataa = new ObservableCollection<Artikkelit>(dataa.OrderBy(a => a.Julkaisuaika));
                artikkelilista.ItemsSource = dataa;
            }
        }

        // Kun lisäysnappia klikataan, siirrytään LisääArtikkelitSivulle
        void Lisää_Clicked(System.Object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new LisääArtikkelitSivu());
        }

        async void Deletebutton_Clicked(System.Object sender, System.EventArgs e)
        {
            // Haetaan poistettavan artikkelin tiedot
            var button = sender as ImageButton;
            var artikkeli = button?.BindingContext as Artikkelit;

            // Varmistetaan poisto
            var vastaus = await DisplayAlert("Poista artikkeli", "Haluatko varmasti poistaa artikkelin?", "Kyllä", "Peruuta");

            if (vastaus)
            {
                try
                {
                    // Lähetetään DELETE-pyyntö backendiin
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
                    var response = await client.DeleteAsync($"api/artikkelit/{artikkeli.ArtikkeliId}");

                    if (response.IsSuccessStatusCode)
                    {
                        // Poisto onnistui, poistetaan artikkeli ObservableCollectionista, näytetään vahvistusalertti ja päivitetään näkymä
                        dataa.Remove(artikkeli);
                        await DisplayAlert("Valmista!", "Artikkeli poistettu onnistuneesti", "OK");

                    }
                    else
                    {
                        // Poisto epäonnistui, näytetään virheilmoitus
                        await DisplayAlert("Virhe", "Artikkelin poistaminen epäonnistui.", "OK");
                    }
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Virhe", ex.Message.ToString(), "OK");
                }
            }
        }

    }
}

