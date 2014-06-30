
GO
/****** Object:  StoredProcedure [dbo].[usp_AddRegFormData]    Script Date: 6/19/2014 10:40:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		KUInternsatBD
-- Create date: 17/6/2014
-- Description:	EhealthLibrary Project Stored Procedure
-- =============================================
Create PROCEDURE [dbo].[usp_AddRegFormData]

	@CreatedDateTime datetime,
	@UserEmailAddress NVARCHAR(50),
	@UserPassword NVARCHAR(50),
	@IsActive NVARCHAR(50),
	@UserType NVARCHAR(50)

AS
BEGIN
	
Declare @UserCategoryID int;
Declare @CheckUserType VARCHAR(50);

DECLARE userType_cursor   CURSOR FOR 

select UserType from UserCategory
OPEN userType_cursor
FETCH next  FROM userType_cursor
INTO @CheckUserType
WHILE @@FETCH_STATUS = 0
BEGIN

 IF(@CheckUserType =@UserType)
Begin
select @UserCategoryID=UserCategoryID from UserCategory where UserType=@UserType
goto outside
break;
END 
ELSE
GOTO up
elsema:
Begin
	Insert into UserCategory(UserType)
		Values(@UserType)
	select @UserCategoryID=UserCategoryID from UserCategory
	goto outside
	break;
END
up:
FETCH NEXT FROM userType_cursor 
INTO @CheckUserType
END 
GOTO elsema
outside:
CLOSE userType_cursor;
DEALLOCATE userType_cursor;

	Insert into RegisterUsers(UserCategoryID,CreatedDateTime,UserEmailAddress,UserPassword,IsActive)
	Values(@UserCategoryID,@CreatedDateTime,@UserEmailAddress,@UserPassword,@IsActive)
    


END

Go

/****** Object:  StoredProcedure [dbo].[usp_CheckLoginData]    Script Date: 20/6/2014 10:40:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_CheckLoginData]
	@UserEmailAddress NVARCHAR(50),
	@UserPassword NVARCHAR(50)
	AS
BEGIN
	
	Declare @CheckUserEmailAddress VARCHAR(50);
	Declare @CheckUserPassword VARCHAR(50);
	Declare @error VARCHAR(50);
	Declare userEmailAddress_cursor CURSOR FOR
	
	Select UserEmailAddress, UserPassword from RegisterUsers
	Open userEmailAddress_cursor
	Fetch Next From userEmailAddress_cursor
	Into @CheckUserEmailAddress, @CheckUserPassword
	
	While @@FETCH_STATUS = 0
	Begin
		If(@CheckUserEmailAddress = @UserEmailAddress  and @CheckUserPassword = @UserPassword)
			Begin
				Select UserID from RegisterUsers where UserEmailAddress = @UserEmailAddress;
				Goto outside
			End
		Else
		
			Goto up
			elseloop:
			BEGIN
			select 'Please Enter Valid EmailAddress and Password.'
			goto outside
			END			
			
			
		up:
			FETCH NEXT FROM userEmailAddress_cursor 
			INTO  @CheckUserEmailAddress, @CheckUserPassword	
	End

	Goto elseloop
	outside:
		CLOSE userEmailAddress_cursor;
		DEALLOCATE userEmailAddress_cursor;
	
	
	
END
Go
