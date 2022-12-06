using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Collections;

using ServerShowroom.Models;

namespace ServerShowroom.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CarController : ControllerBase
    {
        private readonly ApplicationContext _context;

        public CarController(ApplicationContext context)
        {
            _context = context;

        }
        //https://localhost:44306/api/
        [HttpGet]
        public IEnumerable GetAll()
        {
            return _context.Cars.ToList();
        }

        //https://localhost:44306/api/
        [HttpGet("{id}", Name = "GetProduct")]
        public IActionResult GetById(int id)
        {
            var item = _context.Cars.FirstOrDefault(t => t.ID == id);
            if (item == null)
            {
                return NotFound();
            }
            return new ObjectResult(item);
        }

        //https://localhost:44306/api/Product
        [HttpPost]
        public IActionResult Create([FromBody] Cars item)
        {
            if (item == null)
            {
                return BadRequest();
            }
            Cars product = new Cars { Mark = item.Mark, Model = item.Model, YearOfIssue = item.YearOfIssue, Class = item.Class, EngineVolume = item.EngineVolume, HorsePower = item.HorsePower, Transmission = item.Transmission, Price = item.Price, Image = item.Image, URL = item.URL };
            _context.Cars.Add(product);
            _context.SaveChanges();
            return new NoContentResult();

        }
        [HttpPut("{id}")]
        public IActionResult Update(long id, [FromBody] Cars item)
        {
            if (item == null || item.ID != id)
            {
                return BadRequest();
            }

            var product = _context.Cars.FirstOrDefault(t => t.ID == id);
            if (product == null)
            {
                return NotFound();
            }

            product.Mark = item.Mark;
            product.Model = item.Model;
            product.YearOfIssue = item.YearOfIssue;
            product.Class = item.Class;
            product.EngineVolume = item.EngineVolume;
            product.HorsePower = item.HorsePower;
            product.Transmission = item.Transmission;
            product.Price = item.Price;
            product.Image = item.Image;
            product.URL = item.URL;
            _context.Cars.Update(product);
            _context.SaveChanges();
            return new NoContentResult();
        }

        //https://localhost:44306/api/Product/28
        [HttpDelete("{id}")]
        public IActionResult Delete(long id)
        {
            var product = _context.Cars.FirstOrDefault(t => t.ID == id);
            if (product == null)
            {
                return NotFound();
            }

            _context.Cars.Remove(product);
            _context.SaveChanges();
            return new NoContentResult();
        }
    }
}
