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

namespace OpiskeluSovellus
{	
	public partial class KurssimateriaaliSivu : ContentPage
    {
        ObservableCollection<Kurssimateriaali> dataa = new ObservableCollection<Kurssimateriaali>();

        public KurssimateriaaliSivu(int KurssiId, string Kurssinimi, string Laajuus)
		{
            InitializeComponent();

            // Vaihtuva otsikko kurssin mukaan
            materiaaliotsikko.Text = Kurssinimi + ": kurssimateriaalit";

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

                    client.BaseAddress = new Uri("https://opiskelusovellusrestapi.azurewebsites.net/");
                    string json = await client.GetStringAsync("api/kurssimateriaali");

                    IEnumerable<Kurssimateriaali> kurssimateriaalis = JsonConvert.DeserializeObject<Kurssimateriaali[]>(json);
                    ObservableCollection<Kurssimateriaali> dataa2 = new ObservableCollection<Kurssimateriaali>(kurssimateriaalis);
                    dataa = dataa2;

                    // Näytetään vain valitun kurssin kurssimateraalit
                    kurssimateriaalit.ItemsSource = dataa.Where(x => x.KurssiId == KurssiId);

                }
                catch (Exception e)
                {
                    await DisplayAlert("Virhe", e.Message.ToString(), "Ok");
                }
            }
        }
	}
}

