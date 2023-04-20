using System;
using System.Collections.Generic;

namespace OpiskeluSovellus.Models
{
    public class Kurssimateriaali
    {
        public int KurssimateriaaliId { get; set; }

        public string Ohje { get; set; }

        public string Tehtävä { get; set; }

        public string Otsikko { get; set; }

        public string Materiaali { get; set; }

        public int KurssiId { get; set; }
    }
}


