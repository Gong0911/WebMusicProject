using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YueMusic.Model
{
     public class Comment
    {
        private int commID;
        private int userID;
        private int songID;
        private int praiseHits;
        private string commContent;
        private DateTime commTime;

        public int CommentID
        {
            get { return this.commID; }
            set { this.commID = value; }
        }

        public int UserID
        {
            get { return this.userID; }
            set { this.commID = value; }
        }

        public int SongID
        {
            get { return this.songID; }
            set { this.songID = value; }
        }

        public int PraiseHits
        {
            get { return this.praiseHits; }
            set { this.praiseHits = value; }
        }

        public string CommContent
        {
            get { return this.commContent; }
            set { this.commContent = value; }
        }

        public DateTime CommentTime
        {
            get { return this.commTime; }
            set { this.commTime = value; }
        }
    }
}
