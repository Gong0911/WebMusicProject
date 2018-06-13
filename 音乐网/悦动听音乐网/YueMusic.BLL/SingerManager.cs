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
     public class SingerManager
    {
        /// <summary>
        /// 返回查询歌曲表id
        /// </summary>
        /// <param name="singerID"></param>
        /// <returns></returns>
        public static DataTable selectID(int singerID)
        {
            return SingerService.selectID(singerID);
        }
        public static DataTable selectAll()
        {
            return SingerService.selectall();
        }
        /// <summary>
        /// 查询点击量排名前5
        /// </summary>
        /// <returns></returns>
        public static DataTable selectTop5()
        {
            return SingerService.selectTop5();
        }
        /// <summary>
        ///查询热门前15歌手
        /// </summary>
        /// <returns></returns>
        public static DataTable selectTop15()
        {
            return SingerService.selectTop15Hotsin();
        }
        /// <summary>
        /// 热门前12
        /// </summary>
        /// <returns></returns>
        public static DataTable selectTop12()
        {
            return SingerService.selectTop12Hotsin();
        }
        public static DataTable selectAllCMansi()
        {
            return SingerService.allCMansinger();
        }
        public static DataTable selectAllCwomansi()
        {
            return SingerService.allCwomansinger();
        }
        public static DataTable selectAllCgroupsi()
        {
            return SingerService.allCgroupsinger();
        }
        /// <summary>
        /// 删除指定id的歌手信息
        /// </summary>
        /// <param name="singerID"></param>
        /// <returns></returns>
        public static int deleteID(int singerID)
        {
            return SingerService.deleteID(singerID);
        }
        /// <summary>
        /// 更新指定id的歌手信息
        /// </summary>
        /// <param name="singerID"></param>
        /// <returns></returns>
        public static int updateId(Singer sin)
        {
            return SingerService.updateId(sin);
        }
        /// <summary>
        /// 添加歌手
        /// </summary>
        /// <param name="sin"></param>
        /// <returns></returns>
        public static int addSinger(Singer sin)
        {
            return SingerService.insertSinger(sin);
        }
        /// <summary>
        /// 点击一次歌手图片，人气值+1
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static int updateClickNum(int id)
        {
            return SingerService.updateClickNum(id);
        }
    }
}
