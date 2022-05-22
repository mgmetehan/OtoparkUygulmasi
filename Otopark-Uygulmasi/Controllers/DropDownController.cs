﻿using Otopark_Uygulmasi.Models.db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Otopark_Uygulmasi.Controllers
{
    public class DropDownController : Controller
    {
        OtoparklarBaglanti model = new OtoparklarBaglanti();
        db_otoparkEntities db = new db_otoparkEntities();
        // GET: DropDown
        public ActionResult Index()
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