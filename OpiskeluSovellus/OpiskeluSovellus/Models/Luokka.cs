using System;
namespace OpiskeluSovellus.Models
{
	public class Luokka
	{
        public int LuokkaId { get; set; }

        public string Luokkanimi { get; set; }

        public int Kapasiteetti { get; set; }

        public string Varustelu { get; set; }

        public string Luokkatyyppi { get; set; }
    }
}

