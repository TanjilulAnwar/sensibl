using ETS.Models.Models;


namespace ETS.DataAccess.Repository.IRepository
{
    public interface ITransactionEventRepository : IRepositoryAsync<TransactionEvent>
    {
        public void Update(TransactionEvent transactionEvent);
    }
}
