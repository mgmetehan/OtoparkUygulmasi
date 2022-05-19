using System.Web;
using System.Web.Mvc;

namespace Otopark_Uygulmasi
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
