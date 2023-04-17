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
    public partial class OpiskelijaSivu : ContentPage
    {

        ObservableCollection<Opiskelijat> dataa = new ObservableCollection<Opiskelijat>();
        public OpiskelijaSivu()
        {
            InitializeComponent();

            //Latausilmoitus
            opiskelija_lataus.Text = "Ladataan tietojasi...";

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
                    opiskelijalista.ItemsSource = dataa;

                    opiskelija_lataus.Text = "";


                }
                catch (Exception e)
                {
                    await DisplayAlert("Virhe", e.Message.ToString(), "Ok");
                }
            }
        }

        async void navibutton_Clicked(System.Object sender, System.EventArgs e)
        {
            Opiskelijat opis = (Opiskelijat)opiskelijalista.SelectedItem;

            if (opis == null)
            {
                await DisplayAlert("Valinta puuttuu", "Valitse opiskelija", "OK");
                return;
            }
            else
            {

                int id = opis.OpiskelijaId;
                await Navigation.PushAsync(new KurssitSivu()); 
            }
        }
    }
}

