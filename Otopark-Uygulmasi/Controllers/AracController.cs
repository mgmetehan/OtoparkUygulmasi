using Otopark_Uygulmasi.Models.db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Otopark_Uygulmasi.Controllers
{
    public class AracController : Controller
    {
        db_otoparkEntities db = new db_otoparkEntities();
        // GET: Arac
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult AracGoster()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AracGoster(araclar P)
        {
            db.araclar.Add(P);
            db.SaveChanges();
            return RedirectToAction("AracCikis");
        }
        public ActionResult AracCikis()
        {
            var listee = db.araclar.ToList();
            return View(listee);
        }
        public ActionResult SIL(int id)
        {
            db.araclar.Remove(db.araclar.Find(id));
            db.SaveChanges();
            return RedirectToAction("AracCikis");

        }
        public ActionResult AracGetir(int id)
        {
            var arac = db.araclar.Find(id);
            return View("AracGetir", arac);
        }
        public ActionResult AracıGuncelle(araclar P)
        {
            var kisi = db.araclar.Find(P.aracId);
            kisi.aracPlaka = P.aracPlaka;
            kisi.aracMarka = P.aracMarka;
            kisi.aracRenk= P.aracRenk;
            kisi.kisiId= P.kisiId;
            db.SaveChanges();
            return RedirectToAction("AracCikis");
        }
    }
}