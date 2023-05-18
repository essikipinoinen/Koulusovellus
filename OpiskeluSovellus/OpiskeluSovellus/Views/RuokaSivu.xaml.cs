﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.Http;
using Newtonsoft.Json;
using OpiskeluSovellus.Models;
using Xamarin.Essentials;
using Xamarin.Forms;
namespace OpiskeluSovellus
{
    public partial class RuokaSivu : ContentPage
	{


        ObservableCollection<Ruoka> dataa = new ObservableCollection<Ruoka>();
        public RuokaSivu()
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
                    string json = await client.GetStringAsync("api/ruoka");

                    IEnumerable<Ruoka> ruoat = JsonConvert.DeserializeObject<Ruoka[]>(json);
                    ObservableCollection<Ruoka> dataa2 = new ObservableCollection<Ruoka>(ruoat);
                    dataa = dataa2;

                    ruokalista.ItemsSource = dataa;

                    DateTime pvm = DateTime.Now;
                    DayOfWeek dayOfWeek = pvm.DayOfWeek;
                    string dayOfWeekString = dayOfWeek.ToString();

                }
                catch (Exception e)
                {
                    await DisplayAlert("Virhe", e.Message.ToString(), "Ok");
                }

            }
        }
    }
}

