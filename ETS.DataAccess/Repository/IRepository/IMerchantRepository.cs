using ETS.Models.Models;


namespace ETS.DataAccess.Repository.IRepository
{
    public interface IMerchantRepository : IRepositoryAsync<Merchant>
    {
        public void Update(Merchant merchant);
    }
}
