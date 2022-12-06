using Microsoft.EntityFrameworkCore;

namespace ServerShowroom.Models
{
    public class ApplicationContext : DbContext
    {
        public ApplicationContext(DbContextOptions<ApplicationContext> options)
            : base(options)
        {
        }
        public DbSet<Cars> Cars { get; set; }
        public DbSet<Users> Users { get; set; }
        public DbSet<Personal> Personal { get; set; }
    }
}
