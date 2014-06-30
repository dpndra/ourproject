using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Script.Serialization;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Summary description for EhealthWebMethod
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class EhealthWebMethod : System.Web.Services.WebService 
{

    public EhealthWebMethod () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string SaveRegInfoData(string userEmailAddress, string userPassword, string userType) {
         StringBuilder encryptPasswd=EncryptedPassword(userPassword);
         try
         {
             string CreatedDateTime = DateTime.Now.ToString();
             string IsActive = "yes";
             DataFormInfo objRegFormInfo = new DataFormInfo();
             objRegFormInfo.CreatedDateTime = CreatedDateTime;
             objRegFormInfo.UserEmailAddress = userEmailAddress;
             objRegFormInfo.UserPassword = encryptPasswd.ToString();
             objRegFormInfo.IsActive = IsActive;
             objRegFormInfo.UserType = userType;

             DataFormController objRegFormController = new DataFormController();

             objRegFormController.AddRegisterFormData(objRegFormInfo);
             return "Successfully Registered you as your selected User Type";
            
         }
         catch(Exception ex)
         {
             throw ex;
         }
    }

    public StringBuilder EncryptedPassword(string passwd)
    {
        MD5 md5H = MD5.Create();
        byte[] data = md5H.ComputeHash(Encoding.UTF8.GetBytes(passwd.ToString()));
        StringBuilder encryptPasswdIs = new StringBuilder();
  
        for (int i = 0; i < data.Length; i++)
        {
            encryptPasswdIs.Append(data[i].ToString("x2"));
        }
        return encryptPasswdIs;
    }


   // [WebMethod]
   // public string LoginInfoData(string userEmailAddress, string userPassword)
   /* {
        StringBuilder encryptPasswd = EncryptedPassword(userPassword);
        try
        {
            DataFormInfo objLoginFormInfo = new DataFormInfo();
            objLoginFormInfo.UserEmailAddress = userEmailAddress;
            objLoginFormInfo.UserPassword = encryptPasswd.ToString();
          

            DataFormController objLoginFormController = new DataFormController();

            objLoginFormController.GetListOfAllFormData(objLoginFormInfo);
            Console.Write("Data saved sucessfully!!!!");


            return "success";
        }
        catch (Exception ex)
        {
            throw ex;
           // Console.Write("Error Occured: " + ex.Message);
            //return "failed";
        }
    }



    */

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public string LoginVerification(string UserEmailAddress, string UserPassword)
    {
        try
        {
            StringBuilder encryptPasswd = EncryptedPassword(UserPassword);
            string data = string.Empty;
            DataFormController objLoginController = new DataFormController();
            DataFormInfo objloginList = objLoginController.LoginVerification(UserEmailAddress, encryptPasswd.ToString());
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            data = serializer.Serialize(objloginList);

            return data;
        }
        catch(Exception ex)
        {
            return "failed";
        }

    }


}
