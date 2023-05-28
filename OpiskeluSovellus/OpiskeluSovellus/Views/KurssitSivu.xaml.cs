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
using System.Windows.Input;
using Xamarin.Essentials;

namespace OpiskeluSovellus
{
    public partial class KurssitSivu : ContentPage
    {


        ObservableCollection<Kurssit> dataa = new ObservableCollection<Kurssit>();
        ObservableCollection<Luokka> luokkadataa = new ObservableCollection<Luokka>();
        ObservableCollection<Henkilökunta> henkilökuntadataa = new ObservableCollection<Henkilökunta>();
        IEnumerable<KurssilistaItem> kurssilistaus;

        public KurssitSivu()
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
                    client.BaseAddress = new Uri("https://opiskelusovellusrestapi.azurewebsites.net/");

                    // Haetaan JSON-tiedot kurssitietojen, luokkien ja henkilökunnan osalta
                    string json = await client.GetStringAsync("api/kurssit");
                    string json2 = await client.GetStringAsync("api/luokat");
                    string json3 = await client.GetStringAsync("api/henkilökunta");


                    // Deserialisoi JSON-tiedot vastaaviin luokkiin ja luo ObservableCollections niiden pohjalta
                    IEnumerable<Kurssit> kurssits = JsonConvert.DeserializeObject<Kurssit[]>(json);
                    ObservableCollection<Kurssit> dataa2 = new ObservableCollection<Kurssit>(kurssits);
                    dataa = dataa2;

                    IEnumerable<Luokka> luokkas = JsonConvert.DeserializeObject<Luokka[]>(json2);
                    ObservableCollection<Luokka> luokkadataa2 = new ObservableCollection<Luokka>(luokkas);
                    luokkadataa = luokkadataa2;

                    IEnumerable<Henkilökunta> henkilökuntas = JsonConvert.DeserializeObject<Henkilökunta[]>(json3);
                    ObservableCollection<Henkilökunta> henkilökuntadataa2 = new ObservableCollection<Henkilökunta>(henkilökuntas);
                    henkilökuntadataa = henkilökuntadataa2;

                    // Liitetään kurssitiedot, luokkatiedot ja henkilökuntatiedot yhteen kurssilistausta varten
                    kurssilistaus = from kl in dataa
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

                    // Asetetaan kurssilistatiedot näkymille sen mukaan, onko kurssi suoritettu vai ei
                    kurssilista.ItemsSource = kurssilistaus.Where(x => !x.Suoritettu).ToList();
                    kurssilista2.ItemsSource = kurssilistaus.Where(x => x.Suoritettu).ToList();

                }
                catch (Exception e)
                {
                    await DisplayAlert("Virhe", e.Message.ToString(), "Ok");
                }
            }
        }

        // Haku, joka reagoi jo tekstin kirjoittamiseen
        // -> ei tarvitse ns. nollata, jotta saa kaikki kurssit näkyviin,
        // vaan voi ottaa tekstin pois
        private void OnTextChanged(object sender, EventArgs args)
        {
            SearchBar searchBar = (SearchBar)sender;
            string searchText = searchBar.Text;
            kurssilista.ItemsSource = kurssilistaus.Where(x => !x.Suoritettu && x.Kurssinimi.ToLower().Contains(searchText.ToLower())).ToList();
            kurssilista2.ItemsSource = kurssilistaus.Where(x => x.Suoritettu && x.Kurssinimi.ToLower().Contains(searchText.ToLower())).ToList();
        }

        // Käsittelijä valittujen kohteiden tapahtumille
        async void OnItemSelected(object sender, ItemTappedEventArgs e)
        {
            KurssilistaItem selectedKurssilistaItem = (KurssilistaItem)e.Item;
            int id = selectedKurssilistaItem.KurssiId;

            // Siirrytään kurssimateriaalisivulle valitun kurssin perusteella
            await Navigation.PushAsync(new KurssimateriaaliSivu(id, selectedKurssilistaItem.Kurssinimi, selectedKurssilistaItem.Laajuus.ToString()));
        }
    }
}

