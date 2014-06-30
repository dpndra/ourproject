using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DataFormInfo
/// </summary>
public class DataFormInfo
{

    #region "Private Members
    #region "Registeruser "
    private int _userID;
    private int _userCategoryID;
    private string _createdDateTime;
    private string _userEmailAddress;
    private string _userPassword;
    private string _isActive;
    private string _deletedDateTime;
    private string _userType;
    #endregion

    #endregion

    #region "Constructors"
    public DataFormInfo()
	{
		//
		// TODO: Add constructor logic here
		//
    }
    #endregion

    public DataFormInfo(int userID, int userCategoryID, string createdDateTime, string userEmailAddress, string userPassword, string isActive, string deletedDateTime, string userType)
    {
        this.UserID = userID;
        this.UserCategoryID = userCategoryID;
        this.CreatedDateTime = createdDateTime;
        this.UserEmailAddress = userEmailAddress;
        this.UserPassword = userPassword;
        this.IsActive = isActive;
        this.DeletedDateTime = deletedDateTime;
        this.UserType = userType;
    }


    
    #region "Public Properties"

    public int UserID
    {
        get { return _userID; }
        set
        {
            if (_userID != value)
            {
                _userID = value;
            }
        }
    }

    public int UserCategoryID
    {
        get
        {
            return _userCategoryID;
        }
        set
        {
            if (_userCategoryID != value)
            {
                _userCategoryID = value;
            }
        }
    }

    public string CreatedDateTime
    {
        get
        {
            return _createdDateTime;
        }
        set
        {
            if(_createdDateTime!=value)
            {
                _createdDateTime = value;
            }
        }

    }

    public string UserEmailAddress
    {
        get
        {
            return _userEmailAddress;
        }
        set
        {
            if(_userEmailAddress!=value)
            {
                _userEmailAddress = value;
            }
        }
    }

    public string UserPassword
    {
        get
        {
            return _userPassword;
        }
        set
        {
            if (_userPassword != value)
            {
                _userPassword = value;
            }
        }
    }

    public string IsActive
    {
        get
        {
            return _isActive;
        }
        set
        {
            if(_isActive!=value)
            {
                _isActive = value;
            }
        }
    }

    public string DeletedDateTime
    {
        get
        {
            return _deletedDateTime;
        }
        set
        {
            if(_deletedDateTime!=value)
            {
                _deletedDateTime = value;
            }
        }
    }

    public string UserType
    {
        get
        {
            return _userType;
        }
        set
        {
            if(_userType!=value)
            {
                _userType = value;
            }
        }
    }


    #endregion
}