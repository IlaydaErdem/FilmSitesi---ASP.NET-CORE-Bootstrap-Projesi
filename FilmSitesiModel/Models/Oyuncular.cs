using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace FilmSitesiModel.Models
{
    public class Oyuncular
    {
        [Key]
        public int OyuncuNo { get; set; }

        [StringLength(50), Required]
        public string OyuncuAdiSoyadi { get; set; }
        

        [StringLength(10), Required]
        public string OyuncuDogumTarihi { get; set; }
        

        [StringLength(30), Required]
        public string OyuncuDogumYeri { get; set; }
        

        [StringLength(30), Required]
        public string OyuncuCinsiyet { get; set; }
        

        [Required]
        public int OynadigiFilmSayisi { get; set; }
        



    }
}
