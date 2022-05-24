using Otopark_Uygulmasi.Models.db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Otopark_Uygulmasi.Models;

namespace Otopark_Uygulmasi.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(giris objUser)
        {
            if (ModelState.IsValid)
            {
                using (db_otoparkEntities db = new db_otoparkEntities())
                {
                    var obj = db.giris.Where(a => a.kullaniciAd.Equals(objUser.kullaniciAd) &&

                    a.kullaniciSifre.Equals(objUser.kullaniciSifre)).FirstOrDefault();

                    if (obj != null)
                    {
                        Session["UserID"] = obj.kullaniciId.ToString();
                        Session["UserName"] = obj.kullaniciAd.ToString();
                        return RedirectToAction("UserDashBoard");
                    }
                }
            }
            return View(objUser);
        }
        public ActionResult UserDashBoard()
        {
            if (Session["UserID"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login");
            }
        }
        db_otoparkEntities db = new db_otoparkEntities();

        [HttpPost]
        public ActionResult loginKayit(giris g)
        {
            db.giris.Add(g);
            db.SaveChanges();
            return RedirectToAction("Login");
        }
    }
}