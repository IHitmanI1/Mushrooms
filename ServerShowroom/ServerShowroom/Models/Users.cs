using System;

namespace ServerShowroom.Models
{
    public class Users
    {
        public int ID { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
        public string FIO { get; set; }
        public Nullable<decimal> Phone { get; set; }
        public string Permissions { get; set; }
    }
}
