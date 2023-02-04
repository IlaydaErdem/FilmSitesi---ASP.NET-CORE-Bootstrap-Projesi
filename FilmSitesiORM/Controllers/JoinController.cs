using FilmSitesiData.Data;
using FilmSitesiModel.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FilmSitesiORM.ModelView;

namespace FilmSitesiORM.Controllers
{
    public class JoinController : Controller
    {
       
        
        private readonly ApplicationDbContext _db;

        public JoinController(ApplicationDbContext db)
        {
            _db = db;
        }
        public IActionResult Index()
        {
            List<Oyuncular> oyuncu = _db.Oyunculars.ToList();
            List<FilmEkibi> filmekibi = _db.FilmEkibis.ToList();
            var birlestir = from o in oyuncu
                            join f in filmekibi on o.OyuncuNo equals f.OyuncuNo into OyuncuEkip
                            from f in OyuncuEkip.DefaultIfEmpty()
                            select new joinModel1
                            {
                                oyuncu = o,

                                filmekibi = f,

                               

                               //film=f.Filmlers.FilmAdi
                                
                            };
            return View(birlestir);
        }
    }
}
