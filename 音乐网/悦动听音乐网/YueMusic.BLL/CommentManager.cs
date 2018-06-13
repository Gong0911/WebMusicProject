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
     public class CommentManager
    {
        /// <summary>
        /// 按评论ID查询评论回复信息表
        /// </summary>
        /// <param name="comID"></param>
        /// <returns></returns>
        public static DataTable selectComReturn(int comID)
        {
            return CommentService.selectComReturn(comID);
        }
        public static SqlDataReader comReturn(int comID)
        {
            return CommentService.comReturn(comID);
        }
        /// <summary>
        /// 插入数据到评论信息表
        /// </summary>
        /// <param name="comInfo"></param>
        /// <returns></returns>
        public static int insert(Comment comInfo)
        {
            return CommentService.insert(comInfo);
        }

        public static DataTable selectTop1()
        {
            return CommentService.selectTop1();
        }

        public static int addComment(Comment comm)
        {
            return CommentService.addComment(comm);
        }
        public static DataTable SelectID(int id)
        {
            return CommentService.SelectID(id);
        }

        public static DataTable allComment()
        {
            return CommentService.allComment();
        }
        /// <summary>
        /// 删除指定用户信息
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public static int DeleteID(int userID)
        {
            return CommentService.DeleteID(userID);
        }
    }
}
