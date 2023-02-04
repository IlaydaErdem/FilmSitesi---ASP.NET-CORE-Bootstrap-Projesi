using System;
using System.Collections.Generic;
using System.Text;
using FilmSitesiModel.Models;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;

namespace FilmSitesiData.Data
{
    public class ApplicationDbContext:DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {

        }

        public DbSet<Adminler> Adminlers { get; set; }
        public DbSet<FilmEkibi> FilmEkibis { get; set; }

        public DbSet<Filmler> Filmlers { get; set; }
        public DbSet<Kullanicilar> Kullanicilars { get; set; }

        public DbSet<Oyuncular> Oyunculars { get; set; }
        public DbSet<Sinemalar> Sinemalars { get; set; }
        public DbSet<Yonetmen> Yonetmens { get; set; }
        public DbSet<Yorumlar> Yorumlars { get; set; }
        public virtual DbSet<joinModel1> Elemans { get; set; }
    }
    
}


