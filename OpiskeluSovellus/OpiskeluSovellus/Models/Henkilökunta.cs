using System;
namespace OpiskeluSovellus.Models
{
	public class Henkilökunta
	{
        public int HenkilökuntaId { get; set; }

        public string Etunimi { get; set; }

        public string Sukunimi { get; set; }

        public string Osoite { get; set; }

        public string Puhelinnumero { get; set; }

        public string Sähköposti { get; set; }

        public string Rooli { get; set; }

    }
}

