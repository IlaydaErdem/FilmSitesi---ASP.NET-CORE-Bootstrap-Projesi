using FilmSitesiData.Data;
using FilmSitesiModel.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FilmSitesiORM.Controllers
{
    public class Rapor1Controller : Controller
    {

        private readonly ApplicationDbContext _db;

        public Rapor1Controller(ApplicationDbContext db)
        {
            _db = db;
        }
        public ActionResult Rapor3()
        {
            ////Aynı şehirdeki plazaların sayısını versin
            List<Yorumlar> plaza = _db.Yorumlars.ToList();
            var empcountresult = plaza.GroupBy(G => G.YildizSayisi)
                                  .Select(e => new
                                  {
                                      plazaadres = e.Key,
                                      PlazaSayi = e.Count()
                                  }).ToList();
            return View(empcountresult.ToList());
        }
    }
}
