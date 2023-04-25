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

        public KirjautumisSivu ()
		{
			InitializeComponent ();

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


                }
                catch (Exception e)
                {
                    await DisplayAlert("Virhe", e.Message.ToString(), "OK");
                }
            }
        }


        async void Button_Clicked(System.Object sender, System.EventArgs e)
        {

            // Authenticate user's credentials
            bool isAuthenticated = AuthenticateUser(kayttajatunnusEntry.Text, salasanaEntry.Text);

            if (isAuthenticated)
            {
                // Store user data
                await SecureStorage.SetAsync("Kayttajatunnus", kayttajatunnusEntry.Text);
                await SecureStorage.SetAsync("Salasana", salasanaEntry.Text);


                // Navigate to main content page
                await Navigation.PushAsync(new AloitusSivu());
            }
            else
            {
                // Display error message
                await DisplayAlert("Virhe", "Väärä käyttäjätunnus tai salasana", "OK");
            }

        }
        private bool AuthenticateUser(string kayttajatunnus, string salasana)
        {
            // Retrieve user data from an API or database
            var kayttajat = dataa;

            // Check if the provided credentials match a user in the database
            var kayttaja = kayttajat.FirstOrDefault(k => k.Käyttäjätunnus == kayttajatunnus && k.Salasana == salasana);
            int kayttajaId = kayttaja.OpiskelijaId;
            Preferences.Set("KayttajaId", kayttajaId.ToString());
            // Return true if authentication is successful, false otherwise
            return kayttaja != null;
        }
    }



}

