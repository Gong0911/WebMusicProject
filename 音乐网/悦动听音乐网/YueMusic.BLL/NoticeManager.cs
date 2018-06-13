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
     public class NoticeManager
    {
        /// <summary>
        /// 查询前10的公告信息
        /// </summary>
        /// <returns></returns>
        public static DataTable selectTop10()
        {
            return NoticeService.selectTop10();
        }
        public static DataTable selectTop1()
        {
            return NoticeService.selectTop1();
        }
        /// <summary>
        /// 查询指定的公告信息详情
        /// </summary>
        /// <param name="noticeID"></param>
        /// <returns></returns>
        public static DataTable selectID(int noticeID)
        {
            return NoticeService.selectID(noticeID);
        }
        /// <summary>
        /// 插入公告信息
        /// </summary>
        /// <param name="noticeInfo"></param>
        /// <returns></returns>
        public static int addNotice(Notice noticeInfo)
        {
            return NoticeService.insert(noticeInfo);
        }
        /// <summary>
        /// 删除指定ID的公告信息
        /// </summary>
        /// <param name="noticeID"></param>
        /// <returns></returns>
        public static int deleteID(int noticeID)
        {
            return NoticeService.deleteID(noticeID);
        }
        /// <summary>
        /// 清空公告信息表数据
        /// </summary>
        /// <returns></returns>
        public static int deleteAll()
        {
            return NoticeService.deleteAll();
        }
        /// <summary>
        /// 查询全部公告信息表数据
        /// </summary>
        /// <returns></returns>
        public static DataTable selectAll()
        {
            return NoticeService.allnotice();
        }
        /// <summary>
        /// 更新指定id公告表数据
        /// </summary>
        /// <param name="not"></param>
        /// <returns></returns>
        public static int updateId(Notice not)
        {
            return NoticeService.updateID(not);
        }
    }
}
