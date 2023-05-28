using System;
using System.Collections.ObjectModel;
using System.Linq;
using Xamarin.Forms;

namespace OpiskeluSovellus.Models
{
	public class Ruoka
	{
        public int RuokaId { get; set; }

        public string Ruoka1 { get; set; }

        public string Ruokatiedot { get; set; }

        // Alla olevat ei ole tietokannassa vaan määritetty vain tähän

        public DateTime Pvm { get; set; }

        public string Viikonpäivä => Pvm.ToString("dddd");
    }



 
}

