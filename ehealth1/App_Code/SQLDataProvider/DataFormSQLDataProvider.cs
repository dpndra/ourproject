using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SQLData.Web.Utilities;

/// <summary>
/// Summary description for DataFormSQLDataProvider
/// </summary>
public class DataFormSQLDataProvider
{
	public DataFormSQLDataProvider()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void AddRegFormData(DataFormInfo objRegUserForm)
    {
        try
        {
            List<KeyValuePair<string, object>> paraCollection = new List<KeyValuePair<string, object>>();
            paraCollection.Add(new KeyValuePair<string, object>("@CreatedDateTime",objRegUserForm.CreatedDateTime));
            paraCollection.Add(new KeyValuePair<string, object>("@UserEmailAddress",objRegUserForm.UserEmailAddress));
            paraCollection.Add(new KeyValuePair<string, object>("@UserPassword", objRegUserForm.UserPassword));
            paraCollection.Add(new KeyValuePair<string, object>("@IsActive", objRegUserForm.IsActive));
            paraCollection.Add(new KeyValuePair<string, object>("@UserType", objRegUserForm.UserType));

            SQLHandler objSQLH = new SQLHandler();
            objSQLH.ExecuteNonQuery("[dbo].[usp_AddRegFormData]", paraCollection);
        }
        catch (Exception e)
        {
            throw e;
        }

    }
    
    public DataFormInfo LoginVerfication(string UserEmailAddress, String UserPassword)
    {
        try
        {
            List<KeyValuePair<string, object>> paraCollection = new List<KeyValuePair<string, object>>();
            paraCollection.Add(new KeyValuePair<string, object>("@UserEmailAddress", UserEmailAddress));
            paraCollection.Add(new KeyValuePair<string, object>("@UserPassword", UserPassword));

            SQLHandler objSQLH = new SQLHandler();
            return objSQLH.ExecuteAsObject<DataFormInfo>("[dbo].[usp_CheckLoginData]", paraCollection);
        }
        catch (Exception e)
        {
            throw e;
        }

    }

}