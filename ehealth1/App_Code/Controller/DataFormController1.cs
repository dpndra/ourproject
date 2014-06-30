using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DataFormController1
/// </summary>
public class DataFormController1
{
	public DataFormController1()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void AddFormData(DataFormInfo1 objForm)
    {
        DataFormSQLDataProvider1 objSqlDataProvider = new DataFormSQLDataProvider1();
        objSqlDataProvider.AddFormData(objForm);
    }

    public void UpdateFormData(DataFormInfo1 objForm)
    {
        DataFormSQLDataProvider1 objSqlDataProvider = new DataFormSQLDataProvider1();
        objSqlDataProvider.UpdateFormData(objForm);
    }

    public List<DataFormInfo1> GetListOfAllFormData()
    {
        DataFormSQLDataProvider1 objSqlDataProvider = new DataFormSQLDataProvider1();
        List<DataFormInfo1> objList = objSqlDataProvider.GetListOfAllFormData();
        return objList;

        //Not Good
        //DataFormSQLDataProvider1 objSqlDataProvider = new DataFormSQLDataProvider1();
        //return objSqlDataProvider.GetListOfAllFormData();
    }

    public DataFormInfo1 GetListObjectOfFormDataByUserID(int UserID)
    {
        DataFormSQLDataProvider1 objSqlDataProvider = new DataFormSQLDataProvider1();
        DataFormInfo1 objInfo = objSqlDataProvider.GetListObjectOfFormDataByUserID(UserID);
        return objInfo;
    }

    public void DeleteFormDataByID(int UsersID)
    {
        DataFormSQLDataProvider1 objSqlDataProvider = new DataFormSQLDataProvider1();
        objSqlDataProvider.DeleteFormDataByID(UsersID);
    }
}