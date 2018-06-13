using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YueMusic.Model
{
     public class Singer
    {
        private int singgerid;
        private string singername;
        private string singertype;
        private string singerinfo;
        private string singerimg;
        private int singerhits;
     
        public int SingerId
        {
            get { return this.singgerid; }
            set { this.singgerid = value; }
        }

       public string SingerName
        {
            get { return this.singername; }
            set { this.singername = value; }
        }
        public string SingerType
        {
            get { return this.singertype; }
            set { this.singertype = value; }
        }
        public string SingerInfo
        {
            get { return this.singerinfo; }
            set { this.singerinfo = value; }
        }
        public string SingerImg
        {
            get { return this.singerimg; }
            set { this.singerimg = value; }
        }
        public int SingerHit
        {
            get { return this.singerhits; }
            set { this.singerhits = value; }
        }

    }
}
