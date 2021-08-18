using ETS.DataAccess.Repository.IRepository;
using ETS.Models.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ETS.Controllers
{
    public class RegistrationController : BaseController
    {
        private readonly IUnitOfWork _unitOfWork;



        public RegistrationController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;

        }

        [HttpGet]
        [Route("~/User/GetList")]
        public async Task<IActionResult> UserList()
        {
            IEnumerable<UserClient> userlist = await _unitOfWork.User.GetAllAsync();
            return Json(new { success = true, message = userlist });

        }





        [HttpPost]
        [Route("~/User/Add")]
        public async Task<IActionResult> AddUser([FromBody] UserClient userClient)
        {
            try
            {

                if (ModelState.IsValid)
                {
                    if (userClient.id == 0)
                    {

                        await _unitOfWork.User.AddAsync(userClient);

                    }
                    else
                    {
                        _unitOfWork.User.Update(userClient);

                    }
                    await _unitOfWork.SaveAsync();
                    return Json(new { success = true, message = "Registration Successful!" });

                }
                else
                {
                    throw new InvalidOperationException("The Data sent to API is invalid!");
                    //return Json(new { success = false, message = "The Data sent to API is invalid!" });
                }
            }
            catch (Exception e)
            {
                return Json(new { success = false, message = e.Message });
            }


        }






        [HttpDelete]
        [Route("~/User/delete/{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            UserClient userClient = await  _unitOfWork.User.GetFirstOrDefaultAsync(u=>u.id==id);
            if (userClient == null)
            {
                return Json(new { success = false, message = "Error while deleting" });
            }
             _unitOfWork.User.Remove(userClient);
            await _unitOfWork.SaveAsync(); 
            return Json(new { success = true, message = "Delete Successful" });

        }





    }
}
