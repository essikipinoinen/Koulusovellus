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
using Xamarin.CommunityToolkit.UI.Views;

namespace OpiskeluSovellus
{
    public partial class KurssitSivu : ContentPage
    {


        ObservableCollection<Kurssit> dataa = new ObservableCollection<Kurssit>();
        ObservableCollection<Luokka> luokkadataa = new ObservableCollection<Luokka>();
        ObservableCollection<Henkilökunta> henkilökuntadataa = new ObservableCollection<Henkilökunta>();
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
                    string json2 = await client.GetStringAsync("api/luokat");
                    string json3 = await client.GetStringAsync("api/henkilökunta");

                    IEnumerable<Kurssit> kurssits = JsonConvert.DeserializeObject<Kurssit[]>(json);
                    ObservableCollection<Kurssit> dataa2 = new ObservableCollection<Kurssit>(kurssits);
                    dataa = dataa2;

                    IEnumerable<Luokka> luokkas = JsonConvert.DeserializeObject<Luokka[]>(json2);
                    ObservableCollection<Luokka> luokkadataa2 = new ObservableCollection<Luokka>(luokkas);
                    luokkadataa = luokkadataa2;

                    IEnumerable<Henkilökunta> henkilökuntas = JsonConvert.DeserializeObject<Henkilökunta[]>(json3);
                    ObservableCollection<Henkilökunta> henkilökuntadataa2 = new ObservableCollection<Henkilökunta>(henkilökuntas);
                    henkilökuntadataa = henkilökuntadataa2;



                    var kurssilistaus = from kl in dataa
                                        where kl.Kurssinimi != "Ruoka"
                                        join hk in henkilökuntadataa on kl.HenkilökuntaId equals hk.HenkilökuntaId
                                        join lu in luokkadataa on kl.LuokkaId equals lu.LuokkaId
                                        select new KurssilistaItem
                                        {
                                            KurssiId = kl.KurssiId,
                                            Kurssinimi = kl.Kurssinimi,
                                            Laajuus = kl.Laajuus,
                                            Suoritettu = kl.Suoritettu,
                                            KokoNimi = hk.Etunimi + " " + hk.Sukunimi,
                                            Luokkanimi = lu.Luokkanimi,
                                            Luokkatyyppi = lu.Luokkatyyppi
                                        };

                    kurssilista2.ItemsSource = kurssilistaus.Where(x => x.Suoritettu == true).ToList();
                    kurssilista.ItemsSource = kurssilistaus.Where(x => x.Suoritettu == false).ToList();

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
            KurssilistaItem selectedKurssilistaItem = (KurssilistaItem)e.Item;
            int id = selectedKurssilistaItem.KurssiId;
            await Navigation.PushAsync(new KurssimateriaaliSivu(id, selectedKurssilistaItem.Kurssinimi, selectedKurssilistaItem.Laajuus.ToString()));
        }


    }
}

