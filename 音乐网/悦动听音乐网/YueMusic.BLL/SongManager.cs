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
    public class SongManager
    {
        /// <summary>
        /// 查询歌曲表id
        /// </summary>
        /// <param name="songID"></param>
        /// <returns></returns>
        public static DataTable selectID(int songID)
        {
            return SongService.selectID(songID);
        }
       
        public static DataTable selectTop12()
        {
            return SongService.selectTop12();
        }
        public static DataTable selectTop8()
        {
            return SongService.selectTop8();
        }
        public static DataTable selectAllNew()
        {
            return SongService.selectAllNew();
        }
        public static DataTable selectAllHot()
        {
            return SongService.selectAllHot();
        }
        public static DataTable selectAll()
        {
            return SongService.allsong();
        }
        public static int AddSongType(Song so)
        {
            return SongService.InsertType(so);
        }
    
        public static int addSong(Song son)
        {
            return SongService.insertSong(son);
        }
        /// <summary>
        /// 删除指定id的歌曲信息
        /// </summary>
        /// <param name="songID"></param>
        /// <returns></returns>
        public static int deleteID(int songID)
        {
            return SongService.deleteID(songID);
        }
        /// <summary>
        /// 查询指定id的歌曲信息
        /// </summary>
        /// <param name="son"></param>
        /// <returns></returns>
        public static int updateId(Song son)
        {
            return SongService.updateId(son);
        }
        /// <summary>
        /// 点击一次歌曲图片，点击量+1
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static int updateClickNum(int id)
        {
            return SongService.updateClickNum(id);
        }

        /// <summary>
        /// 查询点击量排名前5的歌曲
        /// </summary>
        /// <returns></returns>
        public static DataTable selectTop5()
        {
            return SongService.selectTop5();
        }

        /// <summary>
        /// 更新下载量
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static int updateDownLoadNum(int id)
        {
            return SongService.updateDownLoadNum(id);
        }

        public static DataTable selectSongName(string name)
        {
            return SongService.selectSongName(name);
        }
    }
}
