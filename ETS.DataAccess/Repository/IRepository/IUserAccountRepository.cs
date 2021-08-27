using ETS.Models.Models;


namespace ETS.DataAccess.Repository.IRepository
{
    public interface IUserAccountRepository:IRepositoryAsync<UserAccount>
    {
        public void Update(UserAccount userAccount);
    }
}
