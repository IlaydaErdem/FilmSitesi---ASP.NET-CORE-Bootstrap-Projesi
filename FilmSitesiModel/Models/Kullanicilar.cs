using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace FilmSitesiModel.Models
{
    public class Kullanicilar
    {
        [Key]
        public int KullaniciNo { get; set; }

        [StringLength(30),Required]
        public string KullaniciAdi { get; set; }

        [StringLength(20),Required]
        public string Sifre { get; set; }

        [StringLength(15), Required]
        public string KullaniciTel { get; set; }

        [StringLength(40), Required]
        public string KullaniciMail { get; set; }
    }
}
