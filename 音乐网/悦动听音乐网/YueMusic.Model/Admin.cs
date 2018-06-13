using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YueMusic.Model
{
     public class Admin
    {
        //private int adminid;
        private string adminname;
        private string adminpwd;

        //public int AdminID
        //{
        //    get { return this.adminid; }
        //    set { this.adminid = value; }
        //}

        public string AdminName
        {
            get { return this.adminname; }
            set { this.adminname = value; }
        }

        public string AdminPassword
        {
            get { return this.adminpwd; }
            set { this.adminpwd = value; }
        }
    }
}
