using Otopark_Uygulmasi.Models.db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Otopark_Uygulmasi.Controllers
{
    public class DurumController : Controller
    {

        db_otoparkEntities db = new db_otoparkEntities();
        // GET: Durum
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult otoparkdurumu()
        {
            var liste = db.parkYeri.ToList();
            return View(liste);
        }
        [HttpPost]
        public ActionResult otoparkdurumu(parkYeri P)
        {
            db.parkYeri.Add(P);
            db.SaveChanges();
            return RedirectToAction("otoparkdurumu");
        }
        public ActionResult SIL(int id)
        {
            db.parkYeri.Remove(db.parkYeri.Find(id));
            db.SaveChanges();
            return RedirectToAction("otoparkdurumu");

        }
    }
}
