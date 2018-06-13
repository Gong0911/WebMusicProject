using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using YueMusic.Model;

namespace YueMusic.DAL
{
     public class UserInfoService
    {
        /// <summary>
        /// 按主键查询
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public static DataTable selectID(int userID)
        {
            string sql = "select * from UserInfo where UserID=@UserID";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@UserID",userID)
            };
            DataTable dt = DBHelper.GetFillData(sql, sp);
            return dt;
        }
        /// <summary>
        /// 查找用户名
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>

        public static DataTable SelectName(string name)
        {
            string sql = "select * from UserInfo where UserName='" + name + "'";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@UserName",name)
            };
            return DBHelper.GetFillData(sql, sp);
        }
        public static DataTable SelectImage(string img)
        {
            string sql = "select * from UserInfo where UserImage=@UserImage";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@UserImage",img)
            };
            return DBHelper.GetFillData(sql, sp);
        }

        /// <summary>
        /// 插入操作
        /// </summary>
        /// <param name="us"></param>
        /// <returns></returns>
        public static int Insert(UserInfo us)
        {
            string sql = "insert into UserInfo(UserName,UserPwd,UserEmail,UserPhone) values(@UserName,@UserPwd,@UserEmail,@UserPhone)";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@UserName",us.Username),
                new SqlParameter("@UserPwd",us.Password),
                new SqlParameter("@UserEmail",us.Email),
                new SqlParameter("@UserPhone",us.Telephone),
               
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        /// <summary>
        /// 删除用户表的主键（删除指定用户ID的数据）
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public static int DeleteID(int userID)
        {
            string sql = "delete  from UserInfo where UserID=@UserID";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@UserID",userID)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }


        /// <summary>
        /// 查找用户表的全部数据
        /// </summary>
        /// <returns></returns>
        public static DataTable alluser()
        {
            string sql = "select * from UserInfo";
            return DBHelper.GetFillData(sql);
        }
      /// <summary>
      /// 更新个人信息
      /// </summary>
      /// <param name="user"></param>
      /// <returns></returns>
        public static int UpdateUser(UserInfo user)
        {
            string sql = "Update UserInfo set UserName=@UserName,UserPwd=@UserPwd,UserEmail=@UserEmail,UserPhone=@UserPhone,UserImage=@UserImage where UserID=@UserID";
            SqlParameter[] sp = new SqlParameter[]
           {
                new SqlParameter("@UserName",user.Username),
                 new SqlParameter("@UserPwd",user.Password),
                new SqlParameter("@UserImage",user.Userimage),
                new SqlParameter("@UserEmail",user.Email),
                new SqlParameter("@UserPhone",user.Telephone),
                new SqlParameter("@UserID",user.UserID),
           };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        public static DataTable Login(string name, string pwd)
        {
            string sql = "select * from UserInfo where UserName=@UserName and UserPwd=@UserPwd";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@UserName",name),
                new SqlParameter("@UserPwd",pwd)
            };
            return DBHelper.GetFillData(sql, sp);
        }

        /// <summary>
        /// 选择的方法
        /// </summary>
        /// <param name="id">要选择的实体类对象的主键</param>
        /// <returns>如果选择成功，则返回对象，否则返回null。</returns>
        public static UserInfo SelectByPrimaryKey(int userid)
        {
            string sql = "Select * From UserInfo Where [UserID] = @UserID";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@UserID",userid)
            };
            DataTable dt = DBHelper.GetFillData(sql, sp);
            if (dt == null || dt.Rows.Count == 0)
            {
                return null;
            }
            else
            {
                return CreateInstance(dt.Rows[0]);
            }
        }


        /// <summary>
        /// 创建实体类对象的方法
        /// </summary>
        /// <param name="dr">包含实体类数据的数据行对象</param>
        /// <returns>返回实体类的对象或空</returns>
        private static UserInfo CreateInstance(DataRow dr)
        {
            UserInfo model = new UserInfo();
            model.UserID = int.Parse(dr["UserID"].ToString());
            model.Username = dr["UserName"].ToString();
            model.Password = dr["UserPwd"].ToString();
            model.Email = dr["UserEmail"].ToString();
            model.Telephone = dr["UserPhone"].ToString();
            return model;
        }


    

       

    }
}
