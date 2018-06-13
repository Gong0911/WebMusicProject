using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using YueMusic.Model;
using YueMusic.DAL;

namespace YueMusic.BLL
{
    public class UserInfoManager
    {
       //查询主键
       public static DataTable selectID(int userID)
        {
            return UserInfoService.selectID(userID);
        }

        public static int AddUser(UserInfo us)
        {
            return UserInfoService.Insert(us);
        }

        public static DataTable Login(string name, string pwd)
        {
            return UserInfoService.Login(name, pwd);
        }

        //查询所有用户信息
        public static DataTable alluser()
        {
            return UserInfoService.alluser();
        }

        //查询用户名
        public static DataTable SelectName(string name)
        {
            return UserInfoService.SelectName(name);
        }
        //查询头像
        public static DataTable SelectImage(string img)
        {
            return UserInfoService.SelectImage(img);
        }

        //更新用户信息
        public static int Modify(UserInfo us)
        {
            return UserInfoService.UpdateUser(us);
        }

        /// <summary>
        /// 删除指定用户信息
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public static int DeleteID(int userID)
        {
            return UserInfoService.DeleteID(userID);
        }

        public static int DeleteID(string userID)
        {
            throw new NotImplementedException();
        }
    }
}

