using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ServerShowroom.Models;
using System.Collections;
using System.Linq;

namespace ServerShowroom.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly ApplicationContext _context;

        public UsersController(ApplicationContext context)
        {
            _context = context;

        }
        //https://localhost:44306/api/
        [HttpGet]
        public IEnumerable GetAll()
        {
            return _context.Users.ToList();
        }

        //https://localhost:44306/api/
        [HttpGet("{id}", Name = "GetUsers")]
        public IActionResult GetById(int id)
        {
            var item = _context.Users.FirstOrDefault(t => t.ID == id);
            if (item == null)
            {
                return NotFound();
            }
            return new ObjectResult(item);
        }

        [HttpPost]
        public IActionResult Create([FromBody] Users item)
        {
            if (item == null)
            {
                return BadRequest();
            }
            Users users = new Users { Login = item.Login, Password = item.Password, FIO = item.FIO, Phone = item.Phone, Permissions = item.Permissions };
            _context.Users.Add(users);
            _context.SaveChanges();
            return new NoContentResult();

        }
        [HttpPut("{id}")]
        public IActionResult Update(long id, [FromBody] Users item)
        {
            if (item == null || item.ID != id)
            {
                return BadRequest();
            }

            var us = _context.Users.FirstOrDefault(t => t.ID == id);
            if (us == null)
            {
                return NotFound();
            }

            us.Login = item.Login;
            us.Password = item.Password;
            us.FIO = item.FIO;
            us.Phone = item.Phone;
            us.Permissions = item.Permissions;
            _context.Users.Update(us);
            _context.SaveChanges();
            return new NoContentResult();
        }

        //https://localhost:44306/api/Product/28
        [HttpDelete("{id}")]
        public IActionResult Delete(long id)
        {
            var us = _context.Users.FirstOrDefault(t => t.ID == id);
            if (us == null)
            {
                return NotFound();
            }
            _context.Users.Remove(us);
            _context.SaveChanges();
            return new NoContentResult();
        }
    }
}
