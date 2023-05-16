using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using OpiskeluSovellus.Models;
using System.Collections.ObjectModel;
using System.Net.Http;
using Xamarin.Forms;
namespace OpiskeluSovellus
{
    public partial class HenkilökuntaSivu : ContentPage
	{
        ObservableCollection<Henkilökunta> dataa = new ObservableCollection<Henkilökunta>();
        public HenkilökuntaSivu()
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
                    string json = await client.GetStringAsync("api/henkilökunta");

                    IEnumerable<Henkilökunta> henkilökuntas = JsonConvert.DeserializeObject<Henkilökunta[]>(json);
                    ObservableCollection<Henkilökunta> dataa2 = new ObservableCollection<Henkilökunta>(henkilökuntas);
                    dataa = dataa2;

                    henkilökuntalista.ItemsSource = dataa;

                }
                catch (Exception e)
                {
                    await DisplayAlert("Virhe", e.Message.ToString(), "Ok");
                }

            }
        }
    }
}

