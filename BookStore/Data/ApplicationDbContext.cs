using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using BookStore.Models;

namespace BookStore.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<BookStore.Models.Product> Product { get; set; }
        public DbSet<BookStore.Models.User> User { get; set; }
        public DbSet<Cart> Carts { get; set; }
    }
}
