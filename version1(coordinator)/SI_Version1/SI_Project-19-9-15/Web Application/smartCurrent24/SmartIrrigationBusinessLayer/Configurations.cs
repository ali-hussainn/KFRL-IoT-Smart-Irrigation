using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Diagnostics;

namespace SmartIrrigationBusinessLayer
{
  static   class Configurations
    {
      public static string GetConnectionString(string pstrConnectionStringName)
      {
          if (pstrConnectionStringName != string.Empty)
              return ConfigurationManager.ConnectionStrings[pstrConnectionStringName].ConnectionString;
          else
          {
              return ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ConnectionString;
          }
      }
    }
}
