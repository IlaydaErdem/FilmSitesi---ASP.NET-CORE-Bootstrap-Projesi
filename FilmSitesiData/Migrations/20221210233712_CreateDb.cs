using Microsoft.EntityFrameworkCore.Migrations;

namespace FilmSitesiData.Migrations
{
    public partial class CreateDb : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Adminlers",
                columns: table => new
                {
                    AdminNo = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    AdminAdi = table.Column<string>(maxLength: 30, nullable: false),
                    AdminSifre = table.Column<string>(maxLength: 20, nullable: false),
                    AdminTel = table.Column<string>(maxLength: 15, nullable: false),
                    AdminMail = table.Column<string>(maxLength: 40, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Adminlers", x => x.AdminNo);
                });

            migrationBuilder.CreateTable(
                name: "Kullanicilars",
                columns: table => new
                {
                    KullaniciNo = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    KullaniciAdi = table.Column<string>(maxLength: 30, nullable: false),
                    Sifre = table.Column<string>(maxLength: 20, nullable: false),
                    KullaniciTel = table.Column<string>(maxLength: 15, nullable: false),
                    KullaniciMail = table.Column<string>(maxLength: 40, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Kullanicilars", x => x.KullaniciNo);
                });

            migrationBuilder.CreateTable(
                name: "Oyunculars",
                columns: table => new
                {
                    OyuncuNo = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OyuncuAdiSoyadi = table.Column<string>(maxLength: 50, nullable: false),
                    OyuncuDogumTarihi = table.Column<string>(maxLength: 10, nullable: false),
                    OyuncuDogumYeri = table.Column<string>(maxLength: 30, nullable: false),
                    OyuncuCinsiyet = table.Column<string>(maxLength: 30, nullable: false),
                    OynadigiFilmSayisi = table.Column<int>(maxLength: 3, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Oyunculars", x => x.OyuncuNo);
                });

            migrationBuilder.CreateTable(
                name: "Yonetmens",
                columns: table => new
                {
                    YonetmenNo = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    YonetmenAdiSoyadi = table.Column<string>(maxLength: 50, nullable: false),
                    YonetmenDogumTarihi = table.Column<string>(maxLength: 10, nullable: false),
                    YonetmenDogumYeri = table.Column<string>(maxLength: 30, nullable: false),
                    YonetmenCinsiyet = table.Column<string>(maxLength: 30, nullable: false),
                    YonetmenTel = table.Column<string>(maxLength: 15, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Yonetmens", x => x.YonetmenNo);
                });

            migrationBuilder.CreateTable(
                name: "Filmlers",
                columns: table => new
                {
                    FilmNo = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FilmAdi = table.Column<string>(maxLength: 50, nullable: false),
                    FilmTur = table.Column<string>(maxLength: 20, nullable: false),
                    FilmYayinlamaTarih = table.Column<string>(maxLength: 15, nullable: false),
                    FilmSuresi = table.Column<int>(nullable: false),
                    YonetmenNo = table.Column<int>(nullable: false),
                    YonetmensYonetmenNo = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Filmlers", x => x.FilmNo);
                    table.ForeignKey(
                        name: "FK_Filmlers_Yonetmens_YonetmensYonetmenNo",
                        column: x => x.YonetmensYonetmenNo,
                        principalTable: "Yonetmens",
                        principalColumn: "YonetmenNo",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "FilmEkibis",
                columns: table => new
                {
                    EkipNo = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OyuncuNo = table.Column<int>(nullable: false),
                    FilmNo = table.Column<int>(nullable: false),
                    FilmlersFilmNo = table.Column<int>(nullable: true),
                    YonetmenNo = table.Column<int>(nullable: false),
                    YonetmensYonetmenNo = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FilmEkibis", x => x.EkipNo);
                    table.ForeignKey(
                        name: "FK_FilmEkibis_Filmlers_FilmlersFilmNo",
                        column: x => x.FilmlersFilmNo,
                        principalTable: "Filmlers",
                        principalColumn: "FilmNo",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_FilmEkibis_Oyunculars_OyuncuNo",
                        column: x => x.OyuncuNo,
                        principalTable: "Oyunculars",
                        principalColumn: "OyuncuNo",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_FilmEkibis_Yonetmens_YonetmensYonetmenNo",
                        column: x => x.YonetmensYonetmenNo,
                        principalTable: "Yonetmens",
                        principalColumn: "YonetmenNo",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Sinemalars",
                columns: table => new
                {
                    SinemaNo = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SinemaAdi = table.Column<string>(maxLength: 50, nullable: false),
                    Sehri = table.Column<string>(maxLength: 20, nullable: false),
                    Adres = table.Column<string>(maxLength: 15, nullable: false),
                    FilmNo = table.Column<int>(nullable: false),
                    FilmlersFilmNo = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Sinemalars", x => x.SinemaNo);
                    table.ForeignKey(
                        name: "FK_Sinemalars_Filmlers_FilmlersFilmNo",
                        column: x => x.FilmlersFilmNo,
                        principalTable: "Filmlers",
                        principalColumn: "FilmNo",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Yorumlars",
                columns: table => new
                {
                    YorumNo = table.Column<string>(nullable: false),
                    KullaniciNo = table.Column<int>(nullable: false),
                    KullanicilarsKullaniciNo = table.Column<int>(nullable: true),
                    FilmNo = table.Column<int>(nullable: false),
                    FilmlersFilmNo = table.Column<int>(nullable: true),
                    Aciklama = table.Column<string>(maxLength: 100, nullable: false),
                    YildizSayisi = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Yorumlars", x => x.YorumNo);
                    table.ForeignKey(
                        name: "FK_Yorumlars_Filmlers_FilmlersFilmNo",
                        column: x => x.FilmlersFilmNo,
                        principalTable: "Filmlers",
                        principalColumn: "FilmNo",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Yorumlars_Kullanicilars_KullanicilarsKullaniciNo",
                        column: x => x.KullanicilarsKullaniciNo,
                        principalTable: "Kullanicilars",
                        principalColumn: "KullaniciNo",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Elemans",
                columns: table => new
                {
                    islemNo = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OyuncuNo = table.Column<int>(nullable: true),
                    filmekibiEkipNo = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Elemans", x => x.islemNo);
                    table.ForeignKey(
                        name: "FK_Elemans_Oyunculars_OyuncuNo",
                        column: x => x.OyuncuNo,
                        principalTable: "Oyunculars",
                        principalColumn: "OyuncuNo",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Elemans_FilmEkibis_filmekibiEkipNo",
                        column: x => x.filmekibiEkipNo,
                        principalTable: "FilmEkibis",
                        principalColumn: "EkipNo",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Elemans_OyuncuNo",
                table: "Elemans",
                column: "OyuncuNo");

            migrationBuilder.CreateIndex(
                name: "IX_Elemans_filmekibiEkipNo",
                table: "Elemans",
                column: "filmekibiEkipNo");

            migrationBuilder.CreateIndex(
                name: "IX_FilmEkibis_FilmlersFilmNo",
                table: "FilmEkibis",
                column: "FilmlersFilmNo");

            migrationBuilder.CreateIndex(
                name: "IX_FilmEkibis_OyuncuNo",
                table: "FilmEkibis",
                column: "OyuncuNo");

            migrationBuilder.CreateIndex(
                name: "IX_FilmEkibis_YonetmensYonetmenNo",
                table: "FilmEkibis",
                column: "YonetmensYonetmenNo");

            migrationBuilder.CreateIndex(
                name: "IX_Filmlers_YonetmensYonetmenNo",
                table: "Filmlers",
                column: "YonetmensYonetmenNo");

            migrationBuilder.CreateIndex(
                name: "IX_Sinemalars_FilmlersFilmNo",
                table: "Sinemalars",
                column: "FilmlersFilmNo");

            migrationBuilder.CreateIndex(
                name: "IX_Yorumlars_FilmlersFilmNo",
                table: "Yorumlars",
                column: "FilmlersFilmNo");

            migrationBuilder.CreateIndex(
                name: "IX_Yorumlars_KullanicilarsKullaniciNo",
                table: "Yorumlars",
                column: "KullanicilarsKullaniciNo");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Adminlers");

            migrationBuilder.DropTable(
                name: "Elemans");

            migrationBuilder.DropTable(
                name: "Sinemalars");

            migrationBuilder.DropTable(
                name: "Yorumlars");

            migrationBuilder.DropTable(
                name: "FilmEkibis");

            migrationBuilder.DropTable(
                name: "Kullanicilars");

            migrationBuilder.DropTable(
                name: "Filmlers");

            migrationBuilder.DropTable(
                name: "Oyunculars");

            migrationBuilder.DropTable(
                name: "Yonetmens");
        }
    }
}
