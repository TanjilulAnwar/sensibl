using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using ETS.Models.Models;
using ETS.Models.Models.Authentication;

namespace ETS.DataAccess.Data
{
    public class ApplicationDbContext : IdentityDbContext<AppUser>
    {
        //public DbSet<Server> Servers { get; set; }

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
            Database.EnsureCreated();
        }
        //protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        //{
        //    optionsBuilder.UseMySql(
        //        "server=localhost;user=root;port=3306;Connect Timeout=5;",
        //        new MySqlServerVersion(new Version(8, 0, 11))
        //    );
        //}

        //public class Server
        //{
        //    public ulong Id { get; set; }
        //    public string Prefix { get; set; }
        //}

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
        
        public DbSet<Bank> Bank { get; set; }
        public DbSet<Merchant> Merchant { get; set; }
        public DbSet<RequestEvent> Request_event { get; set; }
        public DbSet<RequestType> Request_type { get; set; }
        public DbSet<TransactionEvent> Transaction_event { get; set; }
        public DbSet<TransactionType> Transaction_type { get; set; }
        public DbSet<UserAccount> User_account { get; set; }
        public DbSet<UserClient> User_client { get; set; }
        public DbSet<UserContact> User_contact{ get; set; }
        public DbSet<UserInfo> User_info { get; set; }
        public DbSet<UserMerchant> User_merchant { get; set; }
        public DbSet<UserSecret> User_secret { get; set; }
        public DbSet<Wallet> Wallet { get; set; }


    }
}
