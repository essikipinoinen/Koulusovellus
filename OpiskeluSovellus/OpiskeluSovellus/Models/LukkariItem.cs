using System;
namespace OpiskeluSovellus.Models
{
	public class LukkariItem
	{
        public DateTime Alkamisaika { get; set; }
        public DateTime Päättymisaika { get; set; }
        public string Viikonpäivä { get; set; }
        public int KurssiId { get; set; }
        public string Kurssinimi { get; set; }
        public int Laajuus { get; set; }
        public int LuokkaID { get; set; }
        public string Luokkanimi { get; set; }
        public string Luokkatyyppi { get; set; }
    }
}

