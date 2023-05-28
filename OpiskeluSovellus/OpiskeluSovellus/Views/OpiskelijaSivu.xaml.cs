using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using OpiskeluSovellus.Models;
using Newtonsoft.Json;
using static Xamarin.Forms.Internals.Profile;
using System.Collections.ObjectModel;
using Xamarin.Essentials;

namespace OpiskeluSovellus
{
    public partial class OpiskelijaSivu : ContentPage
    {

        ObservableCollection<Opiskelijat> dataa = new ObservableCollection<Opiskelijat>();
        public OpiskelijaSivu()
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
                    string json = await client.GetStringAsync("api/opiskelijat");

                    IEnumerable<Opiskelijat> opiskelijat = JsonConvert.DeserializeObject<Opiskelijat[]>(json);
                    ObservableCollection<Opiskelijat> dataa2 = new ObservableCollection<Opiskelijat>(opiskelijat);
                    dataa = dataa2;

                    // Haetaan SecureStoragesta kirjautuneen käyttäjän ID
                    string kayttajaIdString = Preferences.Get("KayttajaId", null);
                    int kayttajaId = 0;
                    if (!string.IsNullOrEmpty(kayttajaIdString))
                    {
                        int.TryParse(kayttajaIdString, out kayttajaId);
                    }

                    // Näytetään vain kirjautuneen käyttäjän tiedot
                    var opiskelija = dataa.Where(k => k.OpiskelijaId == kayttajaId);
                    opiskelijatiedot.ItemsSource = opiskelija;
                }

                catch (Exception e)
                {
                    await DisplayAlert("Virhe", e.Message.ToString(), "Ok");
                }

            }
        }
    }
}

