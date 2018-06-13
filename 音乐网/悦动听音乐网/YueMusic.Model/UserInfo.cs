using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace YueMusic.Model
{
    public class UserInfo
    {
        private int userid;
        private string username;
        private string password;
        private string email;
        private string telephone;
        private string userimg;

        public int UserID
        {
            get { return this.userid; }
            set { this.userid = value; }
        }

      
        

        public string Username
        {
            get { return this.username; }
            set { this.username = value; }
        }
        public string Password
        {
            get { return this.password; }
            set { this.password = value; }
        }
        public string Email
        {
            get { return this.email; }
            set { this.email = value; }
        }
        public string Telephone
        {
            get { return this.telephone; }
            set { this.telephone = value; }
        }
        public string Userimage
        {
            get { return this.userimg; }
            set { this.userimg = value; }
        }


    }
}
