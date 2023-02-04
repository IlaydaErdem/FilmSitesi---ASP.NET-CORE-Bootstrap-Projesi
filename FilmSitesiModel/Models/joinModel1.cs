using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace FilmSitesiModel.Models
{
    public class joinModel1
    {
        [Key]
        public int islemNo { get; set; }
        public Oyuncular oyuncu { get; set; }
        public FilmEkibi filmekibi { get; set; }

       

        //public Departman departman { get; set; }
    }
}
