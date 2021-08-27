using ETS.Models.Models;

namespace ETS.DataAccess.Repository.IRepository
{
    public interface IWalletRepository:IRepositoryAsync<Wallet>
    {
        public void Update(Wallet wallet);
    }
}
