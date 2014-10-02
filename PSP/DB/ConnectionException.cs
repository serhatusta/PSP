using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSP.DB
{
    public class ConnectionException
    {
        public string errText;
        public int errCode;
        public string errCommand;
        public ConnectionException(int code, string text, string command)
        {
            errCode = code;
            errText = text;
            errCommand = command;
        }
    }
}