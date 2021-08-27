using ETS.DataAccess.Data;
using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ETS.DataAccess.Repository
{
    public class RequestEventRepository : RepositoryAsync<RequestEvent>, IRequestEventRepository
    {
        private readonly ApplicationDbContext _db;

        public RequestEventRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(RequestEvent requestEvent)
        {
            _db.Request_event.Update(requestEvent);
        }
    }
}
