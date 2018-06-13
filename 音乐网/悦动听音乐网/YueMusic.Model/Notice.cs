using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YueMusic.Model
{
     public class Notice
    {
        private int noticeId;
        private string noticeTitle;
        private string noticeCont;//公告内容
        private DateTime noticeTime;

        public int NoticeId
        {
            get { return this.noticeId; }
            set { this.noticeId = value; }
        }

        public string NoticeTitle
        {
            get { return this.noticeTitle; }
            set { this.noticeTitle = value; }
        }

        public string NoticeContent
        {
            get { return this.noticeCont; }
            set { this.noticeCont = value; }
        }

        public DateTime NoticeTime
        {
            get { return this.noticeTime; }
            set { this.noticeTime=value;}
        }
    }
}
