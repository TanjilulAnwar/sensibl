using ETS.Models.Models;


namespace ETS.DataAccess.Repository.IRepository
{
    public interface IUserSecretRepository:IRepositoryAsync<UserSecret>
    {
        public void Update(UserSecret userSecret);
    }
}
