using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ETS.DataAccess.Repository
{
    public class WalletRepository : RepositoryAsync<Wallet>, IWalletRepository
    {
        private readonly ApplicationDbContext _db;

        public WalletRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

      
        public void Update(Wallet wallet)
        {
            _db.Wallet.Update(wallet);
         
        }
    }
}
