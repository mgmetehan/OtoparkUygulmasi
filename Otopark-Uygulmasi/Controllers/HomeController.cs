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
        public ActionResult kayitekle()
        {
            return View();
        }
        public ActionResult kayitlistele()
        {
            var liste = db.kisiler.ToList();
            return View(liste);
        }
        
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}