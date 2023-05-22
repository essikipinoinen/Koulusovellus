using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xamarin.Forms;
using System.Net.Http;
using System.Text;
using Newtonsoft.Json;
using OpiskeluSovellus.Models;
using Xamarin.Essentials;

namespace OpiskeluSovellus.Views
{
    public partial class LisääArtikkelitSivu : ContentPage
    {
        public LisääArtikkelitSivu()
        {
            InitializeComponent();
        }

        async Task PostDataToRestAPI()
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

                // Haetaan arvot käyttöliittymän tekstikentistä
                string otsikko = otsikkoEntry.Text;
                string teksti = tekstiEntry.Text;
                DateTime julkaisuaika = DateTime.Now;

                // Luodaan uusi Artikkelit-instanssi käyttäjän syöttämillä tiedoilla
                Artikkelit newArtikkelit = new Artikkelit
                {
                    Otsikko = otsikko,
                    Teksti = teksti,
                    Julkaisuaika = julkaisuaika
                };

                // Serialisoidaan newArtikkelit-objekti JSON-muotoon
                string json = JsonConvert.SerializeObject(newArtikkelit);

                // Luodaan HttpContent JSON-datalla
                HttpContent content = new StringContent(json, Encoding.UTF8, "application/json");

                // Lähetetään POST-pyyntö
                HttpResponseMessage response = await client.PostAsync("api/artikkelit", content);

                
                if (response.IsSuccessStatusCode)
                {
                    // onnistunut POST-pyyntö
                    await DisplayAlert("Valmista!", "Uusi artikkeli luotu onnistuneesti", "OK");
                }
                else
                {
                    // epäonnistunut POST-pyyntö
                    await DisplayAlert("Virhe", "Artikkelin luominen epäonnistui", "OK");
                }


            }
            catch (Exception ex)
            {
                await DisplayAlert("Virhe", ex.Message.ToString(), "OK");
            }
        }

        async void Tallenna_Clicked(object sender, EventArgs e)
        {
            // Lähetetään tiedot REST API:lle POST-pyynnön avulla
            await PostDataToRestAPI();
            // Siirrytään takaisin Ajankohtaista-sivulle
            await Navigation.PushAsync(new AjankohtaistaSivu());

        }
    }
}
