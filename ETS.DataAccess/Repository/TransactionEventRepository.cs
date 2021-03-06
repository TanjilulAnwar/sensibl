using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ETS.DataAccess.Repository
{
    public class TransactionEventRepository : RepositoryAsync<TransactionEvent>, ITransactionEventRepository
    {
        private readonly ApplicationDbContext _db;

        public TransactionEventRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(TransactionEvent transactionEvent)
        {
            _db.Transaction_event.Update(transactionEvent);
        }
    }
}
