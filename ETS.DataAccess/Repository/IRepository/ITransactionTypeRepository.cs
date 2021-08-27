using ETS.Models.Models;

namespace ETS.DataAccess.Repository.IRepository
{
    public interface ITransactionTypeRepository : IRepositoryAsync<TransactionType>
    {
        public void Update(TransactionType transactionType);
    }
}
