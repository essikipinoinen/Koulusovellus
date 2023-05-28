using System;
using System.Collections.Generic;
using OpiskeluSovellus.Models;
using System.Collections.ObjectModel;
using Xamarin.Forms;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Net.Http;
using Xamarin.Essentials;
using System.Linq;

namespace OpiskeluSovellus
{
    public partial class KirjautumisSivu : ContentPage
    {
        ObservableCollection<Opiskelijat> dataa = new ObservableCollection<Opiskelijat>();

        public KirjautumisSivu()
        {
            InitializeComponent();
            LoadDataFromRestAPI();
        }

        private async void LoadDataFromRestAPI()
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

                client.BaseAddress = new Uri("https://opiskelusovellusrestapi.azurewebsites.net/");
                string json = await client.GetStringAsync("api/opiskelijat");

                IEnumerable<Opiskelijat> opiskelijat = JsonConvert.DeserializeObject<Opiskelijat[]>(json);
                ObservableCollection<Opiskelijat> dataa2 = new ObservableCollection<Opiskelijat>(opiskelijat);
                dataa = dataa2;
            }
            catch (Exception e)
            {
                await DisplayAlert("Virhe", e.Message.ToString(), "OK");
            }
        }

        private async void Button_Clicked(System.Object sender, System.EventArgs e)
        {
            // Tarkistetaan käyttäjän tunnistetiedot
            bool isAuthenticated = AuthenticateUser(kayttajatunnusEntry.Text, salasanaEntry.Text);

            if (isAuthenticated)
            {
                // Tallennetaan käyttäjän tiedot SecureStorageen
                await SecureStorage.SetAsync("Kayttajatunnus", kayttajatunnusEntry.Text);
                await SecureStorage.SetAsync("Salasana", salasanaEntry.Text);

                // Siirrytään aloitussivulle
                await Navigation.PushAsync(new AloitusSivu());
            }
            else
            {
                // Näytetään virheilmoitus
                await DisplayAlert("Virhe", "Väärä käyttäjätunnus tai salasana", "OK");
            }
        }

        private bool AuthenticateUser(string kayttajatunnus, string salasana)
        {
            // Haetaan käyttäjän tiedot
            var kayttajat = dataa;

            // Tarkistetaan, vastaavatko annetut tunnistetiedot
            // tietokannassa olevan käyttäjän (opiskelijan) tunnistetietoja
            var kayttaja = kayttajat.FirstOrDefault(k => k.Käyttäjätunnus == kayttajatunnus && k.Salasana == salasana);
            int kayttajaId = kayttaja?.OpiskelijaId ?? 0;
            Preferences.Set("KayttajaId", kayttajaId.ToString());

            // Palautetaan true, jos tunnistautuminen on onnistunut, muuten false
            return kayttaja != null;
        }
    }
}
