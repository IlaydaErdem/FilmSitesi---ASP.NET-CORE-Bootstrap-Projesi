using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace FilmSitesiModel.Models
{
    public class FilmEkibi
    {
        [Key]
        public int EkipNo { get; set; }

        [ForeignKey("Oyuncular")]
        public int OyuncuNo { get; set; }
        public virtual Oyuncular Oyuncular { get; private set; }

        [ForeignKey("Filmler")]
        public int FilmNo { get; set; }
        public virtual Filmler Filmlers  { get; private set; }

        [ForeignKey("Yonetmen")]
        public int YonetmenNo { get; set; }
        public virtual Yonetmen Yonetmens { get; private set; }
    }
}
