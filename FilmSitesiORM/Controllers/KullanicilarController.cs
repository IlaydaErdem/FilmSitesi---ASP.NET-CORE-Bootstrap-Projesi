using FilmSitesiData.Data;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FilmSitesiORM.Controllers
{
    public class KullanicilarController : Controller
    {
        private readonly ApplicationDbContext _db;
        public KullanicilarController(ApplicationDbContext db)
        {
            _db = db;
        }
        public IActionResult IndexFilm()
        {
            var objList = _db.Filmlers.ToList();
            return View(objList);
        }
    }
}
