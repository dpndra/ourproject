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
    private string _createdDateTime;
    private string _userEmailAddress;
    private string _userPassword;
    private string _isActive;
    private string _deletedDateTime;
    #endregion
    #region "UserCategory"
    private int _userCategoryID;
    private string _userType;
    #endregion
    #region "UserProfile"
    private int _userProfileID;
    //private string _createdDateTime;
    //private string _deletedDateTime;
    private string _firstName;
    private string _lastName;
    private string _gender;
    private string _dateofBirth;
    private string _phoneNo;
    private string _description;
    private string _qualification;
    private string _experience;
    private string _establishedYear;
    private string _location;
    private string _hospitalName;
    private string _employeeInfo;
    private string _imgPathSmall;
    private string _imgPathMedium;
    private string _imgPathLarge;
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

    public DataFormInfo(
    int userProfileID, string firstName,string lastName,
    string gender, string dateofBirth, string phoneNo, string description,
    string qualification, string experience, string establishedYear,
    string location, string hospitalName, string employeeInfo, string imgPathSmall,
    string imgPathMedium, string imgPathLarge,
    int userID, int userCategoryID, string createdDateTime, string userEmailAddress,
    string userPassword, string isActive, string deletedDateTime, string userType)
    {
        this.UserID = userID;
        this.UserCategoryID = userCategoryID;
        this.CreatedDateTime = createdDateTime;//this is also used for UserProfile Table
        this.UserEmailAddress = userEmailAddress;
        this.UserPassword = userPassword;
        this.IsActive = isActive;
        this.DeletedDateTime = deletedDateTime;//this is also used for UserProfile Table
        this.UserType = userType;

        this.UserProfileID= userProfileID; 
        
        this.FirstName  = firstName;
        this.LastName = lastName;
        this.Gender= gender;
        this.DateOfBirth = dateofBirth; 
        this.PhoneNo = phoneNo; 
        this.Description = description;
        this.Qualification = qualification;
        this.Experience = experience; 
        this.EstablishedYear= establishedYear;
        this.Location=location;
        this.HospitalName= hospitalName; 
        this.EmployeeInfo=employeeInfo; 
        this.ImgPathSmall= imgPathSmall;
        this.ImgPathMedium =imgPathMedium;
        this.ImgPathLarge=imgPathLarge;




    }


    
    #region "Public Properties"
    #region "Public Properties of RegisterUsers"
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

    

    #endregion
    # region "Public properties of UserCategory"

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
    public string UserType
    {
        get
        {
            return _userType;
        }
        set
        {
            if (_userType != value)
            {
                _userType = value;
            }
        }
    }


    #endregion

    #region "Public properties of UserProfile"
    public int UserProfileID
    {
        get { return _userProfileID; }
        set
        {
            if (_userProfileID != value)
            {
                _userProfileID = value;
            }
        }
    }
    public string FirstName
    {
        get
        {
            return _firstName;
        }
        set
        {
            if (_firstName != value)
            {
                _firstName = value;
            }
        }
    }
    public string LastName
    {
        get
        {
            return _lastName;
        }
        set
        {
            if (_lastName != value)
            {
                _lastName = value;
            }
        }
    }
    public string Gender
    {
        get
        {
            return _gender;
        }
        set
        {
            if (_gender != value)
            {
                _gender = value;
            }
        }
    }
    public string DateOfBirth
    {
        get
        {
            return _dateofBirth;
        }
        set
        {
            if (_dateofBirth != value)
            {
                _dateofBirth = value;
            }
        }
    }
    public string PhoneNo
    {
        get
        {
            return _phoneNo;
        }
        set
        {
            if (_phoneNo != value)
            {
                _phoneNo = value;
            }
        }
    }
    public string Description
    {
        get
        {
            return _description;
        }
        set
        {
            if (_description != value)
            {
                _description = value;
            }
        }
    }
    public string Qualification
    {
        get
        {
            return _qualification;
        }
        set
        {
            if (_qualification != value)
            {
                _qualification = value;
            }
        }
    }
    public string Experience
    {
        get
        {
            return _experience;
        }
        set
        {
            if (_experience != value)
            {
                _experience = value;
            }
        }
    }
    public string EstablishedYear
    {
        get
        {
            return _establishedYear;
        }
        set
        {
            if (_establishedYear != value)
            {
                _establishedYear = value;
            }
        }
    }
    public string Location
    {
        get
        {
            return _location;
        }
        set
        {
            if (_location != value)
            {
                _location = value;
            }
        }
    }
    public string HospitalName
    {
        get
        {
            return _hospitalName;
        }
        set
        {
            if (_hospitalName != value)
            {
                _hospitalName = value;
            }
        }
    }
    public string EmployeeInfo
    {
        get
        {
            return _employeeInfo;
        }
        set
        {
            if (_employeeInfo != value)
            {
                _employeeInfo = value;
            }
        }
    }
    public string ImgPathSmall
    {
        get
        {
            return _imgPathSmall;
        }
        set
        {
            if (_imgPathSmall != value)
            {
                _imgPathSmall = value;
            }
        }
    }
    public string ImgPathMedium
    {
        get
        {
            return _imgPathMedium;
        }
        set
        {
            if (_imgPathMedium != value)
            {
                _imgPathMedium = value;
            }
        }
    }
    public string ImgPathLarge
    {
        get
        {
            return _imgPathLarge;
        }
        set
        {
            if (_imgPathLarge != value)
            {
                _imgPathLarge = value;
            }
        }
    }
    #endregion
    #endregion
}