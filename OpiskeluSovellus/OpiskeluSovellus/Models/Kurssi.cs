using System;
using System.Collections.Generic;

namespace OpiskeluSovellus.Models
{
	public class Kurssit
	{
        public int KurssiId { get; set; }

        public string Kurssinimi { get; set; }

        public int Laajuus { get; set; }

        public bool Suoritettu { get; set; }

        public int LuokkaId { get; set; }

        public int HenkilökuntaId { get; set; }
    }
}

