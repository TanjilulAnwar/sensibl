using ETS.Models.Models;

namespace ETS.DataAccess.Repository.IRepository
{
    public interface IUserMerchantRepository:IRepositoryAsync<UserMerchant>
    {
        public void Update(UserMerchant userMerchant);
    }
}
