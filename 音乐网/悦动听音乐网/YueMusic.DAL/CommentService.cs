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
     public class CommentService
    {
        /// <summary>
        /// 按评论ID来查询评论回复信息表
        /// </summary>
        /// <param name="comID"></param>
        /// <returns></returns>
        public static DataTable selectComReturn(int comID)
        {
            string sql = "select * from Reply where CommentID=@CommentID";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@CommentID",comID)
            };
            DataTable dt = DBHelper.GetFillData(sql, sp);
            return dt;
        }
        public static SqlDataReader comReturn(int comID)
        {
            string sql = "select * from Reply where CommentID=" + comID;
            return DBHelper.GetDataReader(sql);
        }
        /// <summary>
        /// 插入数据到评论信息表
        /// </summary>
        /// <param name="comInfo"></param>
        /// <returns></returns>
        public static int insert(Comment comInfo)
        {
            string sql = "insert into Comment values(@CommentID,@UserID,@SongID,@CommContent,@CommentTime,@PraiseHits)";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@CommentID",comInfo.CommentID),
                new SqlParameter("@UserID",comInfo.UserID),
                new SqlParameter("@SongID",comInfo.SongID),
                new SqlParameter("@CommContent",comInfo.CommContent),
                new SqlParameter("@CommentTime",comInfo.CommentTime),
                new SqlParameter("@PraiseHits",comInfo.PraiseHits),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        public static DataTable selectTop1()//测试
        {
            string sql = "select top 2 * from Comment,UserInfo where Comment.UserID=UserInfo.UserID";
            DataTable dt = DBHelper.GetFillData(sql);
            return dt;
        }
        /// <summary>
        /// 插入评论
        /// </summary>
        /// <param name="comm"></param>
        /// <returns></returns>
        public static int addComment(Comment comm)
        {
            
            string sql = "insert into Comment(UserID,SongID,CommContent) values(@UserID,@SongID,@CommContent)";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@UserID",comm.UserID),
                new SqlParameter("@SongID",comm.SongID),
                new SqlParameter("@CommContent",comm.CommContent),
              
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        public static DataTable SelectID(int id)
        {
            string sql = "select a.*,b.UserName from Comment a, UserInfo b where SongID='" + id + "'and a.UserID=b.UserID order by CommentTime";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("CommentID",id)
            };
            DataTable dt = DBHelper.GetFillData(sql, sp);
            return dt;
        }
        /// <summary>
        /// 查找评论信息
        /// </summary>
        /// <returns></returns>
        public static DataTable allComment()
        {
            
            string sql = "select c.*,a.UserName,b.SongName from UserInfo a,Song b,Comment c where c.UserID=a.UserID and c.SongID=b.SongID";
            return DBHelper.GetFillData(sql);
        }

        /// <summary>
        /// 删除用户表的主键（删除指定用户ID的数据）
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public static int DeleteID(int userID)
        {
            string sql = "delete from Comment where CommentID=@CommentID";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@CommentID",userID)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
    }
}
