using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DataFormInfo1
/// </summary>
public class DataFormInfo1
{
    /* public int UsersID { get; set; }
     public string UserName { get; set; }
     public string UserAddress { get; set; }*/

    #region "Private Members"
    private int _usersID;
    private string _userName;
    private string _userAddress;

    #region "Constructors"
    public DataFormInfo1()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    #endregion

    /// <summary>
    /// Initalize values at the time of object creation with passed values
    /// </summary>
    /// <param name="usersID">Must be Unique UserID</param>
    /// <param name="userName">A string Value for User Name</param>
    /// <param name="userAddress">A User address related with User</param>
    public DataFormInfo1(int usersID, string userName, string userAddress)
    {
        this.UsersID = usersID;
        this.UserName = userName;
        this.UserAddress = userAddress;
    }
    #endregion

    #region "Public Properties"
    public int UsersID
    {
        get { return _usersID; }
        set
        {
            if (_usersID != value)
            {
                _usersID = value;
            }
        }
    }
    public string UserName
    {
        get { return _userName; }
        set
        {
            if (_userName != value)
            {
                _userName = value;
            }
        }
    }
    public string UserAddress
    {
        get { return _userAddress; }
        set
        {
            if (_userAddress != value)
            {
                _userAddress = value;
            }
        }
    } 
    #endregion
}