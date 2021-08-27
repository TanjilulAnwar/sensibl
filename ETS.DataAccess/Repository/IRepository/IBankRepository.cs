using ETS.Models.Models;


namespace ETS.DataAccess.Repository.IRepository
{
    public interface IBankRepository : IRepositoryAsync<Bank>
    {
        public void Update(Bank bank);
    }
}
