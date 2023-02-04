using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace FilmSitesiModel.Models
{
    public class Yonetmen
    {
        [Key]
        public int YonetmenNo { get; set; }

        [StringLength(50), Required]
        public string YonetmenAdiSoyadi { get; set; }
        

        [StringLength(10), Required]
        public string YonetmenDogumTarihi { get; set; }
        

        [StringLength(30), Required]
        public string YonetmenDogumYeri { get; set; }
        

        [StringLength(30), Required]
        public string YonetmenCinsiyet { get; set; }

        [StringLength(15), Required]
        public string YonetmenTel { get; set; }
        
    }
}
