using Microsoft.AspNetCore.Mvc;
using WebClientShowRoom.Models;
using System.Linq;

namespace WebClientShowRoom.Controllers
{
    public class CarsController : Controller
    {
        ApplicationContext db;
        public CarsController(ApplicationContext context)
        {
            db = context;
        }
        public ActionResult GetCars()
        {
            var prod = db.Cars.ToList();
            return View(prod);
        }

    }
}
