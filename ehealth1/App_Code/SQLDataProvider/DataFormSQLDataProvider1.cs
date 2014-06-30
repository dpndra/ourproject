using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SQLData.Web.Utilities;

/// <summary>
/// Summary description for DataFormSQLDataProvider1
/// </summary>
public class DataFormSQLDataProvider1
{
	public DataFormSQLDataProvider1()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void AddFormData(DataFormInfo1 objForm)
    {
        try
        {
            List<KeyValuePair<string, object>> paraCollection = new List<KeyValuePair<string, object>>();
            paraCollection.Add(new KeyValuePair<string, object>("@UserName", objForm.UserName));
            paraCollection.Add(new KeyValuePair<string, object>("@UserAddress", objForm.UserAddress));

            SQLHandler objSQLH = new SQLHandler();
            objSQLH.ExecuteNonQuery("[dbo].[usp_AddFormData]", paraCollection);
        }
        catch (Exception e)
        {
            throw e;
        }

    }

    public void UpdateFormData(DataFormInfo1 objForm)
    {
        try
        {
            List<KeyValuePair<string, object>> paraCollection = new List<KeyValuePair<string, object>>();
            paraCollection.Add(new KeyValuePair<string, object>("@UsersID", objForm.UsersID));
            paraCollection.Add(new KeyValuePair<string, object>("@UserName", objForm.UserName));
            paraCollection.Add(new KeyValuePair<string, object>("@UserAddress", objForm.UserAddress));

            SQLHandler objSQLH = new SQLHandler();
            objSQLH.ExecuteNonQuery("[dbo].[usp_UpdateFormData]", paraCollection);
        }
        catch (Exception e)
        {
            throw e;
        }

    }

    public List<DataFormInfo1> GetListOfAllFormData()
    {
        try
        {
            SQLHandler objSQLH = new SQLHandler();
            return objSQLH.ExecuteAsList<DataFormInfo1>("[dbo].[usp_GetListOfAllFormData]");            
        }
        catch (Exception e)
        {
            throw e;
        }

    }

    public DataFormInfo1 GetListObjectOfFormDataByUserID(int UserID)
    {
        try
        {
            List<KeyValuePair<string, object>> paraCollection = new List<KeyValuePair<string, object>>();
            paraCollection.Add(new KeyValuePair<string, object>("@UsersID", UserID));
            SQLHandler objSQLH = new SQLHandler();
            return objSQLH.ExecuteAsObject<DataFormInfo1>("[dbo].[usp_GetListObjectOfFormDataByUserID]", paraCollection);
        }
        catch (Exception e)
        {
            throw e;
        }

    }

    public void DeleteFormDataByID(int UsersID)
    {
        try
        {
            List<KeyValuePair<string, object>> paraCollection = new List<KeyValuePair<string, object>>();
            paraCollection.Add(new KeyValuePair<string, object>("@UsersID", UsersID));

            SQLHandler objSQLH = new SQLHandler();
            objSQLH.ExecuteNonQuery("[dbo].[usp_DeleteFormDataByID]", paraCollection);
        }
        catch (Exception e)
        {
            throw e;
        }

    }
}