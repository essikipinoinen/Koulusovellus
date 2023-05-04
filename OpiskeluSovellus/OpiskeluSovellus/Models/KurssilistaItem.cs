using System;
namespace OpiskeluSovellus.Models
{
	public class KurssilistaItem
    {
        public int KurssiId { get; internal set; }
        public string Kurssinimi { get; set; }
        public int Laajuus { get; set; }
        public bool Suoritettu { get; set; }
        public string Etunimi { get; set; }
        public string Sukunimi { get; set; }
        public string Luokkanimi { get; set; }
        public string Luokkatyyppi { get; set; }
        public string KokoNimi { get; internal set; }
    }
}

