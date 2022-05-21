using Otopark_Uygulmasi.Models.db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Otopark_Uygulmasi.Controllers
{
    public class CerezController : Controller
    {
        db_otoparkEntities db = new db_otoparkEntities();
        kisiler k = new kisiler();
        // GET: Cerez
        public ActionResult OnlineUyeSayisi()

        {
            ViewBag.OnlineUyeSayisi = HttpContext.Application["OnlineUyeSayisi"];
            return View();
        }
        public ActionResult Olustur()

        {
            HttpCookie cookieKullanici = new HttpCookie("kullanici",k.kisiAd+"Cookies eklendi");
            HttpContext.Response.Cookies.Add(cookieKullanici);

            ViewBag.Kullanici = HttpContext.Request.Cookies["kullanici"].Value;

            return View();
        }
    }
}