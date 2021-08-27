using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ETS.DataAccess.Repository
{
    public class MerchantRepository : RepositoryAsync<Merchant>, IMerchantRepository
    {
        private readonly ApplicationDbContext _db;

        public MerchantRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

      
        public void Update(Merchant merchant)
        {
            _db.Merchant.Update(merchant);
         
        }
    }
}
