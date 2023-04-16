using System;
using System.Collections.Generic;

namespace OpiskeluSovellus.Models
{
    public class Opiskelijat
    {
        public int OpiskelijaId { get; set; }

        public string Etunimi { get; set; }

        public string Sukunimi { get; set; }

        public string Käyttäjätunnus { get; set; }

        public string Salasana { get; set; }

        public string Osoite { get; set; }

        public string Puhelinnumero { get; set; }
	}
}
