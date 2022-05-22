using Otopark_Uygulmasi.Models.db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Otopark_Uygulmasi.Controllers
{
    public class HomeController : Controller
    {
        db_otoparkEntities db = new db_otoparkEntities();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult About()
        {
            ViewBag.Message = HttpContext.Application["developer"];
            HttpContext.Application.Remove("developer");
            return View();

        }
        [HttpGet]
        public ActionResult kayit()
        {
            kisiler k = new kisiler();
            HttpCookie cookieKullanici = new HttpCookie("kullanici", k.kisiAd);
            HttpContext.Response.Cookies.Add(cookieKullanici);

            ViewBag.Kullanici = HttpContext.Request.Cookies["kullanici"].Value;
            return View();
        }
        [HttpPost]
        public ActionResult kayit(kisiler P)
        {
            db.kisiler.Add(P);
            db.SaveChanges();
            return RedirectToAction("otoparkcikis");
        }
        public ActionResult otoparkcikis()
        {
            var liste = db.kisiler.ToList();
            return View(liste);
        }
        public ActionResult SIL(int id)
        {
            db.kisiler.Remove(db.kisiler.Find(id));
            db.SaveChanges();
            return RedirectToAction("otoparkcikis");

        }
        public ActionResult KisiGetir(int id)
        {
            var kisi = db.kisiler.Find(id);
            return View("KisiGetir", kisi);
        }
        public ActionResult KisiyiGuncelle(kisiler P1)
        {
            var kisi = db.kisiler.Find(P1.kisiId);
            kisi.kisiTc = P1.kisiTc;
            kisi.kisiAd = P1.kisiAd;
            kisi.kisiSoyad = P1.kisiSoyad;
            kisi.kisiTelNo= P1.kisiTelNo;
            kisi.Adres = P1.Adres;
            db.SaveChanges();
            return RedirectToAction("otoparkcikis");
        }
        OtoparklarBaglanti model = new OtoparklarBaglanti();
         public ActionResult Otopark()
        {
            List<otoparklar> otoparkList = db.otoparklar.OrderBy(f => f.otoparkAd).ToList();
            model.otoparkList = (from u in otoparkList
                                 select new SelectListItem
                                 {
                                     Text = u.otoparkAd,
                                     Value = u.otoparkId.ToString()
                                 }).ToList();
            return View(model);
        }
    }
}