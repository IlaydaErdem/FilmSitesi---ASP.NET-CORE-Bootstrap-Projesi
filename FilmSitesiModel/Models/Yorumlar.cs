using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace FilmSitesiModel.Models
{
    public class Yorumlar
    {
        [Key]
        public string YorumNo { get; set; }

        [ForeignKey("Kullanicilar")]
        public int KullaniciNo { get; set; }
        public virtual Kullanicilar Kullanicilars { get; private set; }

        [ForeignKey("Filmler")]
        public int FilmNo { get; set; }
        public virtual Filmler Filmlers { get; private set; }

        [StringLength(100), Required]
        public string Aciklama { get; set; }

        [Required]
        [Range(1,5,ErrorMessage ="Yanliş Derecelenrime yaptınız")]
        [DisplayName("Reyting")]
        public int YildizSayisi { get; set; }

    }
}
