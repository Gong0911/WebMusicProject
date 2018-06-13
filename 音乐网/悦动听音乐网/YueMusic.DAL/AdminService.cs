using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using YueMusic.Model;

namespace YueMusic.DAL
{
  
    public class AdminService
    {
      /// <summary>
      /// 管理员登录
      /// </summary>
      /// <param name="name"></param>
      /// <param name="pwd"></param>
      /// <returns></returns>

        public static DataTable Login(string name, string pwd)
        {
            string sql = "select * from Admin where AdminName=@AdminName and AdminPwd=@AdminPwd";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@AdminName",name),
                new SqlParameter("@AdminPwd",pwd)
            };
            return DBHelper.GetFillData(sql, sp);
        }
        /// <summary>
        /// 添加管理员
        /// </summary>
        /// <param name="ad"></param>
        /// <returns></returns>
        public static int Insert(Admin ad)
        {
            string sql = "insert into Admin values(@AdminName,@AdminPwd)";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@AdminName",ad.AdminName),
                new SqlParameter("@AdminPwd",ad.AdminPassword)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
    }
  

}
