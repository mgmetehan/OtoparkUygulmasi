﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Otopark_Uygulmasi.Models.db
{
    public class OtoparklarBaglanti
    {
        public int otoparkId { get; set; }
        public List<SelectListItem> OtoparkList { get; set; }
    }
}