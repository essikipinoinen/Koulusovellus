﻿using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace OpiskeluSovellus
{	
	public partial class KirjautumisSivu : ContentPage
	{	
		public KirjautumisSivu ()
		{
			InitializeComponent ();
		}

        async void Button_Clicked(System.Object sender, System.EventArgs e)
        {
            await Navigation.PushAsync(new AloitusSivu());
        }
    }
}

