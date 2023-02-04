using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace FilmSitesiModel.Models
{
    public class Adminler
    {
        [Key]
        public int AdminNo { get; set; }

        [StringLength(30), Required]
        public string AdminAdi { get; set; }

        [StringLength(20), Required]
        public string AdminSifre { get; set; }

        [StringLength(15), Required]
        public string AdminTel { get; set; }

        [StringLength(40), Required]
        public string AdminMail { get; set; }
    }
}
