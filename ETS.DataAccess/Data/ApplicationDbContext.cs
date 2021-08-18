using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using ETS.Models;
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
        public DbSet<UserClient> User_client { get; set; }
        public DbSet<Bank> Bank { get; set; }

    }
}
