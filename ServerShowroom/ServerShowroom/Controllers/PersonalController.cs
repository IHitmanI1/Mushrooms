using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ServerShowroom.Models;
using System.Collections;
using System.Linq;

namespace ServerShowroom.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PersonalController : ControllerBase
    {
        private readonly ApplicationContext _context;

        public PersonalController(ApplicationContext context)
        {
            _context = context;

        }
        //https://localhost:44306/api/
        [HttpGet]
        public IEnumerable GetAll()
        {
            return _context.Personal.ToList();
        }

        //https://localhost:44306/api/
        [HttpGet("{id}", Name = "GetPersonal")]
        public IActionResult GetById(int id)
        {
            var item = _context.Personal.FirstOrDefault(t => t.ID == id);
            if (item == null)
            {
                return NotFound();
            }
            return new ObjectResult(item);
        }

        //https://localhost:44306/api/Product
        [HttpPost]
        public IActionResult Create([FromBody] Personal item)
        {
            if (item == null)
            {
                return BadRequest();
            }
            Personal users = new Personal { Login = item.Login, Password = item.Password, FIO = item.FIO, Phone = item.Phone, Permissions = item.Permissions };
            _context.Personal.Add(users);
            _context.SaveChanges();
            return new NoContentResult();

        }
        [HttpPut("{id}")]
        public IActionResult Update(long id, [FromBody] Personal item)
        {
            if (item == null || item.ID != id)
            {
                return BadRequest();
            }

            var us = _context.Personal.FirstOrDefault(t => t.ID == id);
            if (us == null)
            {
                return NotFound();
            }

            us.Login = item.Login;
            us.Password = item.Password;
            us.FIO = item.FIO;
            us.Phone = item.Phone;
            us.Permissions = item.Permissions;
            _context.Personal.Update(us);
            _context.SaveChanges();
            return new NoContentResult();
        }

        //https://localhost:44306/api/Product/28
        [HttpDelete("{id}")]
        public IActionResult Delete(long id)
        {
            var us = _context.Personal.FirstOrDefault(t => t.ID == id);
            if (us == null)
            {
                return NotFound();
            }

            _context.Personal.Remove(us);
            _context.SaveChanges();
            return new NoContentResult();
        }
    }
}
