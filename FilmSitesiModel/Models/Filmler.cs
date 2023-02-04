using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace FilmSitesiModel.Models
{
    public class Filmler
    {
        [Key]
        public int FilmNo { get; set; }

        [StringLength(50), Required]
        public string FilmAdi { get; set; }

        [StringLength(20),Required]
        public string FilmTur { get; set; }

        [StringLength(15),Required]
        public string FilmYayinlamaTarih { get; set; }

        [Required]
        [Range(60,180,ErrorMessage ="Girmiş olduğunuz süre çok uzun")]
        [DisplayName("Film Süresi(Dakika)")]
        public int FilmSuresi { get; set; }

        [ForeignKey("YonetmenNo")]
        public int YonetmenNo { get; set; }
        public virtual Yonetmen Yonetmens { get; private set; }

    }
}
