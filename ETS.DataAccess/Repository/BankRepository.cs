using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ETS.DataAccess.Repository
{
    public class BankRepository : RepositoryAsync<Bank>, IBankRepository
    {
        private readonly ApplicationDbContext _db;

        public BankRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }
        public void Update(Bank bank)
        {
            _db.Bank.Update(bank);
         
        }
    }
}
