using System;
namespace OpiskeluSovellus.Models
{
	public class Artikkelit
	{
        public int ArtikkeliId { get; set; }

        public string Otsikko { get; set; }

        public string Teksti { get; set; }

        public DateTime Julkaisuaika { get; set; }
    }
}

