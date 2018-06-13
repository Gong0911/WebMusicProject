using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using YueMusic.Model;

namespace YueMusic.DAL
{
    public class SongService
    {
        /// <summary>
        /// 查询歌曲表id
        /// </summary>
        /// <param name="songID"></param>
        /// <returns></returns>
        public static DataTable selectID(int songID)
        {
            string sql = "select * from Song where SongID=@SongID";
            SqlParameter[] sp = new SqlParameter[]{
            new SqlParameter("@SongID",songID),
             
            };
            DataTable dt = DBHelper.GetFillData(sql, sp);
            return dt;
        }
     

        /// <summary>
        /// 插入歌曲
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int insertSong(Song model)
        {
            string sql = "Insert Into Song(SingerName,SongName,SongImage,SongType,SongUrl,Lyric) Values(@SingerName,@SongName,@SongImage,@SongType,@SongUrl,@Lyric)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@SingerName",model.Singername),
                new SqlParameter("@SongName",model.SNmae),
                new SqlParameter("@SongImage",model.SImage),
                new SqlParameter("@SongType",model.SType),           
                new SqlParameter("@SongUrl",model.Url),            
                new SqlParameter("@Lyric",model.Lyrics),
              
             };
            return DBHelper.GetExcuteNonQuery(sql, sp);

        }
      
     
        /// <summary>
        /// 查询排名前12热歌
        /// </summary>
        /// <returns></returns>
        public static DataTable selectTop12()
        {
            string sql = "Select top 12 * from Song order by SongHits desc";
            DataTable dt = DBHelper.GetFillData(sql);
            return dt;
        }
        /// <summary>
        /// 查询前8首新歌
        /// </summary>
        /// <returns></returns>
        public static DataTable selectTop8()
        {
            string sql = "Select top 8 * from Song order by SongAddTime desc";
            DataTable dt = DBHelper.GetFillData(sql);
            return dt;
        }
        /// <summary>
        /// 查询所有新歌
        /// </summary>
        /// <returns></returns>
        public static DataTable selectAllNew()
        {
            string sql = "Select * from Song order by SongAddTime desc";
            DataTable dt = DBHelper.GetFillData(sql);
            return dt;
        }
        /// <summary>
        /// 查询所有热歌
        /// </summary>
        /// <returns></returns>
        public static DataTable selectAllHot()
        {
            string sql = "Select * from Song order by SongHits desc";
            DataTable dt = DBHelper.GetFillData(sql);
            return dt;
        }
        /// <summary>
        /// 所有音乐表中的信息
        /// </summary>
        /// <returns></returns>
        public static DataTable allsong()
        {
            string sql = "select * from Song";
            return DBHelper.GetFillData(sql);
        }
        /// <summary>
        /// 插入分类
        /// </summary>
        /// <param name="so"></param>
        /// <returns></returns>
        public static int InsertType(Song so)
        {
            string sql = "insert into Song(SongType) values(@SongType)";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@SongType",so.SType),
               
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        /// <summary>
        /// 删除指定id的歌曲信息
        /// </summary>
        /// <param name="songID"></param>
        /// <returns></returns>
        public static int deleteID(int songID)
        {
            string sql = "delete from Song where SongID=@SongID";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@SongID",songID)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        /// <summary>
        /// 更新指定id的歌曲信息
        /// </summary>
        /// <param name="singerID"></param>
        /// <returns></returns>
        public static int updateId(Song songID)
        {
            string sql = "update Song set SingerName=@SingerName,SongName=@SongName,SongImage=@SongImage,SongType=@SongType,Lyric=@Lyric where SongID=@SongID";
            SqlParameter[] sp = new SqlParameter[]
            {
          
                new SqlParameter("@SongID",songID.Songid),
                new SqlParameter("@SingerName",songID.Singername),
                new SqlParameter("@SongName",songID.SNmae),
                new SqlParameter("@SongImage",songID.SImage),
                new SqlParameter("@SongType",songID.SType),
                new SqlParameter("@Lyric",songID.Lyrics),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        /// <summary>
        /// 点击一次歌曲图片，点击量加1
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static int updateClickNum(int id)
        {
            string sql = "update Song set SongHits=SongHits+1 where SongID=@SongID";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@SongID",id)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        /// <summary>
        /// 查询点击量排名前五的歌曲
        /// </summary>
        /// <returns></returns>
        public static DataTable selectTop5()
        {
            string sql = "Select top 5 * from Song order by SongHits desc";
            DataTable dt = DBHelper.GetFillData(sql);
            return dt;
        }

        /// <summary>
        /// 更新下载量
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static int updateDownLoadNum(int id)
        {
            string sql = "update Song set SongDownLoad=SongDownLoad+1 where SongID=@SongID";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@SongID",id)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        /// <summary>
        /// 搜索歌曲名
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static DataTable selectSongName(string name)
        {
            //string sql = "select * from Song where SongName like @SongName";
            //SqlParameter[] sp = new SqlParameter[]{
            //    new SqlParameter("@SongName","%"+name+"%")
            //};
            //或者
            string sql = "select * from Song where SongName like '%" + @name + "%'";
            SqlParameter[] sp = new SqlParameter[]{
                new SqlParameter("@SongName",name)
            };
            return DBHelper.GetFillData(sql, sp);
        }
    }
}
