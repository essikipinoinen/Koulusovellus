using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using Newtonsoft.Json;
using System.Net.Http;
using OpiskeluSovellus.Models;
using Syncfusion.SfSchedule.XForms;
using Xamarin.Forms;
using Xamarin.Essentials;
using System.Linq;
using System.Threading.Tasks;

namespace OpiskeluSovellus.Views
{	
	public partial class LukujärjestysSivu : ContentPage
    {
        ObservableCollection<Lukujärjestys> dataa = new ObservableCollection<Lukujärjestys>();

        
        ObservableCollection<Kurssit> kurssidataa = new ObservableCollection<Kurssit>();

        ObservableCollection<Luokka> luokkadataa = new ObservableCollection<Luokka>();

        public LukujärjestysSivu ()
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
                    string json = await client.GetStringAsync("api/lukujärjestys");
                    string json2 = await client.GetStringAsync("api/kurssit");
                    string json3 = await client.GetStringAsync("api/luokat");

                    IEnumerable<Lukujärjestys> lukujärjestykset = JsonConvert.DeserializeObject<Lukujärjestys[]>(json);
                    ObservableCollection<Lukujärjestys> dataa2 = new ObservableCollection<Lukujärjestys>(lukujärjestykset);
                    dataa = dataa2;

                    IEnumerable<Kurssit> kurssit = JsonConvert.DeserializeObject<Kurssit[]>(json2);
                    ObservableCollection<Kurssit> kurssidataa2 = new ObservableCollection<Kurssit>(kurssit);
                    kurssidataa = kurssidataa2;

                    IEnumerable<Luokka> luokat = JsonConvert.DeserializeObject<Luokka[]>(json3);
                    ObservableCollection<Luokka> luokkadataa2 = new ObservableCollection<Luokka>(luokat);
                    luokkadataa = luokkadataa2;


                    string kayttajaIdString = Preferences.Get("KayttajaId", null);
                    int kayttajaId = 0;
                    if (!string.IsNullOrEmpty(kayttajaIdString))
                    {
                        int.TryParse(kayttajaIdString, out kayttajaId);
                    }

                    var lukkarilista = from l in dataa.Where(o => o.OpiskelijaId == kayttajaId)
                                       orderby l.Alkamisaika ascending
                                       join k in kurssidataa on l.KurssiId equals k.KurssiId
                                       join lu in luokkadataa on k.LuokkaId equals lu.LuokkaId
                                       select new LukkariItem
                                       {
                                           Alkamisaika = l.Alkamisaika,
                                           Päättymisaika = l.Päättymisaika,
                                           Viikonpäivä = l.Viikonpäivä,
                                           KurssiId = l.KurssiId,
                                           Kurssinimi = k.Kurssinimi,
                                           Laajuus = k.Laajuus,
                                           LuokkaID = k.LuokkaId,
                                           Luokkanimi = lu.Luokkanimi,
                                           Luokkatyyppi = lu.Luokkatyyppi
                                       };

                    lukkarimaanantai.ItemsSource = lukkarilista.ToList().Where(x => x.Viikonpäivä == "Maanantai");
                    lukkaritiistai.ItemsSource = lukkarilista.ToList().Where(x => x.Viikonpäivä == "Tiistai");
                    lukkarikeskiviikko.ItemsSource = lukkarilista.ToList().Where(x => x.Viikonpäivä == "Keskiviikko");
                    lukkaritorstai.ItemsSource = lukkarilista.ToList().Where(x => x.Viikonpäivä == "Torstai");
                    lukkariperjantai.ItemsSource = lukkarilista.ToList().Where(x => x.Viikonpäivä == "Perjantai");

                    DateTime pvm = DateTime.Now;
                    DayOfWeek dayOfWeek = pvm.DayOfWeek;
                    string dayOfWeekString = dayOfWeek.ToString();

                    if (dayOfWeekString == "Monday")
                    {
                        dayOfWeekString = "Maanantai";
                    }

                    else if (dayOfWeekString == "Tuesday")
                    {
                        dayOfWeekString = "Tiistai";
                    }

                    else if (dayOfWeekString == "Wednesday")
                    {
                        dayOfWeekString = "Keskiviikko";
                    }

                    else if (dayOfWeekString == "Thursday")
                    {
                        dayOfWeekString = "Torstai";
                    }

                    else if (dayOfWeekString == "Friday")
                    {
                        dayOfWeekString = "Perjantai";
                    }

                    else if (dayOfWeekString == "Saturday")
                    {
                        dayOfWeekString = "Maanantai";
                    }

                    else if (dayOfWeekString == "Sunday")
                    {
                        dayOfWeekString = "Maanantai";
                    }

                    viikonpäiväteksti.Text = dayOfWeekString;

                    if (dayOfWeekString == "Maanantai" )
                    {
                        vasemmallenappi.BackgroundColor = Color.LightGray;
                    }

                    if (dayOfWeekString == "Perjantai")
                    {
                        oikeallenappi.BackgroundColor = Color.LightGray;
                    }




                }
                catch (Exception e)
                {
                    await DisplayAlert("Virhe", e.Message.ToString(), "Ok");
                }
            }
        }

        async void OnItemSelected(object sender, ItemTappedEventArgs e)
        {
            if (e.Item != null)
            {
                LukkariItem selectedLukkariItem = (LukkariItem)e.Item;
                int id = selectedLukkariItem.KurssiId;
                await Navigation.PushAsync(new KurssimateriaaliSivu(id, selectedLukkariItem.Kurssinimi, selectedLukkariItem.Laajuus.ToString()));
                if (selectedLukkariItem.Kurssinimi == "Ruoka")
                {
                    await Navigation.PushAsync(new RuokaSivu());

                }
            }
            else
            {
                await Navigation.PushAsync(new AloitusSivu());
            }
            //    var kurs = e.Item as Kurssit;
            //    await Navigation.PushAsync(new KurssimateriaaliSivu(kurs.KurssiId, kurs.Kurssinimi, kurs.Laajuus.ToString()));
        }

  

        void Oikealle_Clicked(System.Object sender, System.EventArgs e)
        {
            if (viikonpäiväteksti.Text == "Maanantai")
            {
                lukkarimaanantai.IsVisible = false;
                lukkaritiistai.IsVisible = true;
                viikonpäiväteksti.Text = "Tiistai";
                oikeallenappi.BackgroundColor = Color.White;
                vasemmallenappi.BackgroundColor = Color.White;
            }

            else if (viikonpäiväteksti.Text == "Tiistai")
            {
                lukkaritiistai.IsVisible = false;
                lukkarikeskiviikko.IsVisible = true;
                viikonpäiväteksti.Text = "Keskiviikko";
                oikeallenappi.BackgroundColor = Color.White;
                vasemmallenappi.BackgroundColor = Color.White;
            }

            else if (viikonpäiväteksti.Text == "Keskiviikko")
            {
                lukkarikeskiviikko.IsVisible = false;
                lukkaritorstai.IsVisible = true;
                viikonpäiväteksti.Text = "Torstai";
                oikeallenappi.BackgroundColor = Color.White;
                vasemmallenappi.BackgroundColor = Color.White;
            }

            else if (viikonpäiväteksti.Text == "Torstai")
            {
                lukkaritorstai.IsVisible = false;
                lukkariperjantai.IsVisible = true;
                viikonpäiväteksti.Text = "Perjantai";
                oikeallenappi.BackgroundColor = Color.LightGray;
                vasemmallenappi.BackgroundColor = Color.White;
            }

            else if (viikonpäiväteksti.Text == "Perjantai")
            {

            }
        }

        void Vasemmalle_Clicked(System.Object sender, System.EventArgs e)
        {
            if (viikonpäiväteksti.Text == "Maanantai")
            {
            }

            else if (viikonpäiväteksti.Text == "Tiistai")
            {
                vasemmallenappi.BackgroundColor = Color.LightGray;
                oikeallenappi.BackgroundColor = Color.White;
                lukkarimaanantai.IsVisible = true;
                lukkaritiistai.IsVisible = false;
                viikonpäiväteksti.Text = "Maanantai";
            }

            else if (viikonpäiväteksti.Text == "Keskiviikko")
            {
                vasemmallenappi.BackgroundColor = Color.White;
                oikeallenappi.BackgroundColor = Color.White;
                lukkaritiistai.IsVisible = true;
                lukkarikeskiviikko.IsVisible = false;
                viikonpäiväteksti.Text = "Tiistai";
            }

            else if (viikonpäiväteksti.Text == "Torstai")
            {
                vasemmallenappi.BackgroundColor = Color.White;
                oikeallenappi.BackgroundColor = Color.White;
                lukkarikeskiviikko.IsVisible = true;
                lukkaritorstai.IsVisible = false;
                viikonpäiväteksti.Text = "Keskiviikko";
            }

            else if (viikonpäiväteksti.Text == "Perjantai")
            {
                vasemmallenappi.BackgroundColor = Color.White;
                oikeallenappi.BackgroundColor = Color.White;
                lukkaritorstai.IsVisible = true;
                lukkariperjantai.IsVisible = false;
                viikonpäiväteksti.Text = "Torstai";
            }
        }
    }
}

