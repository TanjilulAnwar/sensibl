using ETS.Models.Models;


namespace ETS.DataAccess.Repository.IRepository
{
    public interface IUserInfoRepository:IRepositoryAsync<UserInfo>
    {
        public void Update(UserInfo userInfo);
    }
}
