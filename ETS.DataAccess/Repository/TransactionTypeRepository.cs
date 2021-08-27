using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ETS.DataAccess.Repository
{
    public class TransactionTypeRepository : RepositoryAsync<TransactionType>, ITransactionTypeRepository
    {
        private readonly ApplicationDbContext _db;

        public TransactionTypeRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(TransactionType transactionType)
        {
            _db.Transaction_type.Update(transactionType);
        }
    }
}
