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
    public partial class KurssitSivu : ContentPage
    {

        ObservableCollection<Kurssit> dataa = new ObservableCollection<Kurssit>();
        public KurssitSivu()
        {
            InitializeComponent();

            //Latausilmoitus
            kurssi_lataus.Text = "Ladataan kursseja...";

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
                    string json = await client.GetStringAsync("api/kurssit");

                    IEnumerable<Kurssit> kurssits = JsonConvert.DeserializeObject<Kurssit[]>(json);
                    ObservableCollection<Kurssit> dataa2 = new ObservableCollection<Kurssit>(kurssits);
                    dataa = dataa2;
                    kurssilista.ItemsSource = dataa;

                    kurssi_lataus.Text = "";

                }
                catch (Exception e)
                {
                    await DisplayAlert("Virhe", e.Message.ToString(), "Ok");
                }
            }
        }

        private void OnSearchBarButtonPressed(object sender, EventArgs args)
        {
            SearchBar searchBar = (SearchBar)sender;
            string searchText = searchBar.Text;
            kurssilista.ItemsSource = dataa.Where(x => x.Kurssinimi.ToLower().Contains(searchText.ToLower()));
        }

        async void OnItemSelected(object sender, ItemTappedEventArgs e)
        {
            var kurs = e.Item as Kurssit;
            await Navigation.PushAsync(new KurssimateriaaliSivu(kurs.KurssiId, kurs.Kurssinimi, kurs.Laajuus.ToString())); // Navigoidaan uudelle sivulle

        }

        //async void navibutton_Clicked(object sender, EventArgs e)
        //{
        //    Kurssit kurs = (Kurssit)kurssilista.SelectedItem;

        //    if (kurs == null)
        //    {
        //        await DisplayAlert("Valinta puuttuu", "Valitse kurssi.", "OK"); // (otsikko, teksti, kuittausnapin teksti)
        //        return;
        //    }
        //    else
        //    {
        //        int id = kurs.KurssiId;
        //        await Navigation.PushAsync(new KurssimateriaaliSivu(id)); // Navigoidaan uudelle sivulle
        //    }
        //}
    }
}

