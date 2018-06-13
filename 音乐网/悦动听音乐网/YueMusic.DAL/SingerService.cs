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
     public class SingerService
    {
        /// <summary>
        /// 查询歌手表id
        /// </summary>
        /// <param name="singerID"></param>
        /// <returns></returns>
        public static DataTable selectID(int singerID)
        {
            string sql = "select * from Singer where SingerID=@SingerID";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@SingerID",singerID)
            };
            DataTable dt = DBHelper.GetFillData(sql, sp);
            return dt;
        }
        /// <summary>
        /// 查询全部歌手
        /// </summary>
        /// <returns></returns>
        public static DataTable selectall()
        {
            string sql = "Select * from Singer";
            DataTable dt = DBHelper.GetFillData(sql);
            return dt;
        }
        /// <summary>
        /// 查询点击量排名前五的歌曲
        /// </summary>
        /// <returns></returns>
        public static DataTable selectTop5()
        {
            string sql = "Select top 5 * from Singer order by SingerHits desc";
            DataTable dt = DBHelper.GetFillData(sql);
            return dt;
        }
        /// <summary>
        /// 查询表中点击连前15的热门歌手信息
        /// </summary>
        /// <returns></returns>
        public static DataTable selectTop15Hotsin()
        {
            string sql = "select top 15 * from Singer order by SingerHits desc";
            return DBHelper.GetFillData(sql);
        }
        /// <summary>
        ///热门歌手前12
        /// </summary>
        /// <returns></returns>
        public static DataTable selectTop12Hotsin()
        {
            string sql = "select top 12 * from Singer order by SingerHits desc";
            return DBHelper.GetFillData(sql);
        }
        /// <summary>
        /// 查询华语男歌手
        /// </summary>
        /// <returns></returns>
        public static DataTable allCMansinger()
        {
            string sql = "select * from Singer where SingerType='华语男歌手'";
            return DBHelper.GetFillData(sql);
        }
        /// <summary>
        /// 查询华语女歌手
        /// </summary>
        /// <returns></returns>
        public static DataTable allCwomansinger()
        {
            string sql = "select * from Singer where SingerType='华语女歌手'";
            return DBHelper.GetFillData(sql);
        }
        /// <summary>
        /// 查询华语组合/乐队
        /// </summary>
        /// <returns></returns>
        public static DataTable allCgroupsinger()
        {
            string sql = "select * from Singer where SingerType='华语组合/乐队'";
            return DBHelper.GetFillData(sql);
        }

        /// <summary>
        /// 删除指定id的歌手信息
        /// </summary>
        /// <param name="singerID"></param>
        /// <returns></returns>
        public static int deleteID(int singerID)
        {
            string sql = "delete from Singer where SingerID=@SingerID";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@SingerID",singerID)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        /// <summary>
        /// 更新指定id的歌手信息
        /// </summary>
        /// <param name="sin"></param>
        /// <returns></returns>
        public static int updateId(Singer singerID)
        {
            string sql = "update Singer set SingerName=@SingerName,SingerType=@SingerType,SingerInfo=@SingerInfo,SingerImg=@SingerImg where SingerID=@SingerID";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@SingerID",singerID.SingerId),
                new SqlParameter("@SingerName",singerID.SingerName),
                new SqlParameter("@SingerType",singerID.SingerType),
                new SqlParameter("@SingerInfo",singerID.SingerInfo),
                new SqlParameter("@SingerImg",singerID.SingerImg),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sin"></param>
        /// <returns></returns>
        public static int insertSinger(Singer sin)
        {
            string sql = "insert into Singer(SingerName,SingerType,SingerInfo,SingerImg) values(@SingerName,@SingerType,@SingerInfo,@SingerImg)";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@SingerName",sin.SingerName),
                new SqlParameter("@SingerType",sin.SingerType),
                new SqlParameter("@SingerInfo",sin.SingerInfo),
                new SqlParameter("@SingerImg",sin.SingerImg),
               

            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        /// <summary>
        /// 点击一次歌手图片，人气值加1
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static int updateClickNum(int id)
        {
            string sql = "update Singer set SingerHits=SingerHits+1 where SingerID=@SingerID";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@SingerID",id)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
    }
}
