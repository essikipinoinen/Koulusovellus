using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using OpiskeluSovellus.Models;
using System.Collections.ObjectModel;
using System.Net.Http;
using Xamarin.Forms;

namespace OpiskeluSovellus
{	
	public partial class LuokatSivu : ContentPage
	{
        ObservableCollection<Luokka> dataa = new ObservableCollection<Luokka>();
        public LuokatSivu()
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
                    string json = await client.GetStringAsync("api/luokat");

                    IEnumerable<Luokka> luokat = JsonConvert.DeserializeObject<Luokka[]>(json);
                    ObservableCollection<Luokka> dataa2 = new ObservableCollection<Luokka>(luokat);
                    dataa = dataa2;

                    luokkalista.ItemsSource = dataa;

                }
                catch (Exception e)
                {
                    await DisplayAlert("Virhe", e.Message.ToString(), "Ok");
                }

            }
        }
    }
}

