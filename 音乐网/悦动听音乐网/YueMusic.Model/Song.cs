using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YueMusic.Model
{
     public class Song
    {
        private int SongID;
        private string SingerName;
        private int SongHits;
        private int SongDownLoad;
        private string SongImage;
        private string SongName;
        private string SongType;
       
        private DateTime SongAddTime;
        private string SongUrl;
        private string Lyric;



        public Song() { }




        public int Songid
        {
            get { return this.SongID; }
            set { this.SongID = value; }
        }



        public string Singername
        {
            get { return this.SingerName; }
            set { this.SingerName = value; }
        }

        public int SHits
        {
            get { return this.SongHits; }
            set { this.SongHits = value; }
        }
        public int Download
        {
            get { return this.SongDownLoad; }
            set { this.SongDownLoad = value; }
        }
        public string SNmae
        {
            get { return this.SongName; }
            set { this.SongName = value; }
        }
        public string SImage
        {
            get { return this.SongImage; }
            set { this.SongImage = value; }
        }

        public string SType
        {
            get { return this.SongType; }
            set { this.SongType = value; }
        }


        public DateTime PublishTime
        {
            get { return this.SongAddTime; }
            set { this.SongAddTime = value; }
        }


      

        public string Url
        {
            get { return this.SongUrl; }
            set { this.SongUrl = value; }
        }
        public string Lyrics
        {
            get { return this.Lyric; }
            set { this.Lyric = value; }
        }

    }
}

