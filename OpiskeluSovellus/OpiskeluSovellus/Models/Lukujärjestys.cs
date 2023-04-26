using System;
namespace OpiskeluSovellus.Models
{
	public class Lukujärjestys
	{
        public int LukujärjestysId { get; set; }

        public DateTime Alkamisaika { get; set; }

        public DateTime Päättymisaika { get; set; }

        public string Viikonpäivä { get; set; }

        public int OpiskelijaId { get; set; }

        public int KurssiId { get; set; }
    }
}

