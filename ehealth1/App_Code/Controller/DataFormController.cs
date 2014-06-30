using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DataFormController
/// </summary>
public class DataFormController
{
	public DataFormController()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void AddRegisterFormData(DataFormInfo objRegUserForm)
    {
        DataFormSQLDataProvider objSqlDataProvider = new DataFormSQLDataProvider();
        objSqlDataProvider.AddRegFormData(objRegUserForm);
       
    }


    public DataFormInfo LoginVerification(string UserEmailAddress, string UserPassword)
    {
        DataFormSQLDataProvider objSqlDataProvider = new DataFormSQLDataProvider();
        DataFormInfo objLoginInfo = objSqlDataProvider.LoginVerfication(UserEmailAddress, UserPassword);
        return objLoginInfo;
    }
   
}