using ETS.Models.Models;


namespace ETS.DataAccess.Repository.IRepository
{
    public interface IUserContactRepository:IRepositoryAsync<UserContact>
    {
        public void Update(UserContact userContact);
    }
}
