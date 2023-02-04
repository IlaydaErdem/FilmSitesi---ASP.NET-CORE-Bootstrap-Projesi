using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace FilmSitesiModel.Models
{
    public class Sinemalar
    {
        [Key]
        public int SinemaNo { get; set; }

        [StringLength(50), Required]
        public string SinemaAdi { get; set; }

        [StringLength(20), Required]
        public string Sehri { get; set; }

        [StringLength(15), Required]
        public string Adres { get; set; }

        [ForeignKey("Filmler")]
        public int FilmNo { get; set; }
        public virtual Filmler Filmlers { get; private set; }


    }
}
