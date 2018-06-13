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
    public class NoticeService
    {
        /// <summary>
        /// 查询前十个公告数据
        /// </summary>
        /// <returns></returns>
        public static DataTable selectTop10()
        {
            string sql = "select top 10 * from Notice order by NoticeTime desc";
            DataTable dt = DBHelper.GetFillData(sql);
            return dt;
        }

        public static DataTable selectTop1()//测试
        {
            string sql = "select top 2 * from Notice";
            DataTable dt = DBHelper.GetFillData(sql);
            return dt;
        }
        /// <summary>
        /// 查询公告ID
        /// </summary>
        /// <returns></returns>
        public static DataTable selectID(int noticeID)
        {
            string sql = "select * from Notice where NoticeID=@NoticeID";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@NoticeID",noticeID)
            };
            DataTable dt = DBHelper.GetFillData(sql, sp);
            return dt;
        }
        /// <summary>
        /// 插入公告信息表数据
        /// </summary>
        /// <param name="noticeInfo"></param>
        /// <returns></returns>
        public static int insert(Notice noticeInfo)
        {
            string sql = "insert into Notice(NoticeTitle,NoticeContent) values(@NoticeTitle,@NoticeContent)";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@NoticeTitle",noticeInfo.NoticeTitle),
                new SqlParameter("@NoticeContent",noticeInfo.NoticeContent),
                //new SqlParameter("@NoticeTime",noticeInfo.NoticeTime),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        /// <summary>
        /// 删除指定ID的公告信息
        /// </summary>
        /// <param name="noticeID"></param>
        /// <returns></returns>
        public static int deleteID(int noticeID)
        {
            string sql = "delete from Notice where NoticeID=@NoticeID";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@NoticeID",noticeID)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        /// <summary>
        /// 清空公告信息表
        /// </summary>
        /// <returns></returns>
        public static int deleteAll()
        {
            string sql = "truncate table Notice";
            return DBHelper.GetExcuteNonQuery(sql);
        }
        /// <summary>
        /// 所有公告
        /// </summary>
        /// <returns></returns>
        public static DataTable allnotice()
        {
            string sql = "select * from Notice";
            return DBHelper.GetFillData(sql);
        }
        /// <summary>
        /// 更新指定id公告
        /// </summary>
        /// <param name="stu"></param>
        /// <returns></returns>
        public static int updateID(Notice not)
        {
            string sql = "update Notice set NoticeTitle=@NoticeTitle,NoticeContent=@NoticeContent where NoticeID=@NoticeID";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@NoticeID",not.NoticeId),
                new SqlParameter("@NoticeTitle",not.NoticeTitle),
                new SqlParameter("@NoticeContent",not.NoticeContent),
               
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
    }
}
