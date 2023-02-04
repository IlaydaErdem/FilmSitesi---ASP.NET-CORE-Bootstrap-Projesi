using FilmSitesiModel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FilmSitesiORM.ModelView
{
    public class joinModel
    {
        public Oyuncular oyuncu { get; set; }
        public FilmEkibi filmekibi { get; set; }

        //public Departman departman { get; set; }
    }
}
