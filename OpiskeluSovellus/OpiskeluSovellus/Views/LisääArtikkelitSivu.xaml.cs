﻿using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xamarin.Forms;
using System.Net.Http;
using System.Text;
using Newtonsoft.Json;
using OpiskeluSovellus.Models;
using Xamarin.Essentials;

namespace OpiskeluSovellus.Views
{
    public partial class LisääArtikkelitSivu : ContentPage
    {
        public LisääArtikkelitSivu()
        {
            InitializeComponent();
        }

        async Task PostDataToRestAPI()
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

                // Retrieve values from UI entries
                string otsikko = otsikkoEntry.Text;
                string teksti = tekstiEntry.Text;
                DateTime julkaisuaika = DateTime.Now;

                // Create a new instance of Artikkelit with the data entered by the user
                Artikkelit newArtikkelit = new Artikkelit
                {
                    Otsikko = otsikko,
                    Teksti = teksti,
                    Julkaisuaika = julkaisuaika
                };

                // Serialize the newArtikkelit object to JSON
                string json = JsonConvert.SerializeObject(newArtikkelit);

                // Create the HttpContent with the JSON data
                HttpContent content = new StringContent(json, Encoding.UTF8, "application/json");

                // Send the POST request
                HttpResponseMessage response = await client.PostAsync("api/artikkelit", content);

                // Check the response status
                if (response.IsSuccessStatusCode)
                {
                    // POST request successful
                    await DisplayAlert("Success", "Article created successfully", "OK");
                }
                else
                {
                    // POST request failed
                    await DisplayAlert("Error", "Failed to create article", "OK");
                }


            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message.ToString(), "OK");
            }
        }

        async void Tallenna_Clicked(object sender, EventArgs e)
        {
            await PostDataToRestAPI();
            await Navigation.PushAsync(new AjankohtaistaSivu());

        }
    }
}
