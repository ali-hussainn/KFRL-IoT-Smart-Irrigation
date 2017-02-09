using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace SmartIrrigation
{
    public class Email
    {
        private string smtpadd;
        private int smtpport;
        private string username;
        private string password;

        public Email()
        {
            smtpadd = "smtp.gmail.com";
            smtpport = 587;
            username = "dk.syed009@gmail.com";
            password = "mypassword";
        }

        public string Padd
        {
            get
            {
                return smtpadd;
            }
            set
            {
                smtpadd = value;
            }
        }

        public int Pport
        {
            get
            {
                return smtpport; 
            }
            set
            {
                smtpport = value;
            }
        }

        public string Pusername
        {
            get
            {
                return username;
            }
            set
            {
                username = value;
            }
        }

        public string Ppassword
        {
            get
            {
                return password;
            }
            set
            {
                password = value;
            }
        }
    }
}
