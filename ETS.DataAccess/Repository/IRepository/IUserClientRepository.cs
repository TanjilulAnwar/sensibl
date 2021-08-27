using ETS.Models.Models;


namespace ETS.DataAccess.Repository.IRepository
{
    public interface IUserClientRepository:IRepositoryAsync<UserClient>
    {
        public void Update(UserClient userClient);
    }
}
