using Microsoft.EntityFrameworkCore;
namespace WebClientShowRoom.Models
{
    public class ApplicationContext : DbContext
    {
        public DbSet<Cars> Cars { get; set; }
        public ApplicationContext(DbContextOptions<ApplicationContext> options)
            : base(options)
        {
            Database.EnsureCreated();   // создаем базу данных при первом обращении
        }

    }
}
