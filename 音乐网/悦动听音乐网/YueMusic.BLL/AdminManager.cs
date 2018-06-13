using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using YueMusic.DAL;
using YueMusic.Model;

namespace YueMusic.BLL
{
     public class AdminManager
    {
        public static DataTable Login(string name, string pwd)
        {
            return AdminService.Login(name, pwd);
        }
        /// <summary>
        /// 插入管理员信息表
        /// </summary>
        /// <param name="adminInfo"></param>
        /// <returns></returns>
      
        public static int AddAdmin(Admin us)
        {
            return AdminService.Insert(us);
        }
    }
}
