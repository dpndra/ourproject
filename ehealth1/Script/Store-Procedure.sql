/****** Object:  StoredProcedure [dbo].[usp_DeleteFormDataByID]    Script Date: 4/27/2014 10:37:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_DeleteFormDataByID]
	@UsersID INT	
As
DELETE FROM [dbo].[AppUsers]
	WHERE UsersID = @UsersID
GO

/****** Object:  StoredProcedure [dbo].[usp_GetListObjectOfFormDataByUserID]    Script Date: 4/27/2014 10:37:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_GetListObjectOfFormDataByUserID]
	@UsersID INT	
As
SELECT 
	[UsersID],
	[UserName],
	[UserAddress]
FROM [dbo].[AppUsers]
	WHERE [UsersID] = @UsersID
GO

/****** Object:  StoredProcedure [dbo].[usp_GetListOfAllFormData]    Script Date: 4/27/2014 10:37:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_GetListOfAllFormData]	
As
SELECT 
	[UsersID],
	[UserName],
	[UserAddress]
FROM [dbo].[AppUsers]
GO

/****** Object:  StoredProcedure [dbo].[usp_UpdateFormData]    Script Date: 4/27/2014 10:37:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_UpdateFormData]
	@UsersID INT, 
	@UserName NVARCHAR(50),
	@UserAddress NVARCHAR(50)
As
UPDATE [dbo].[AppUsers] SET 
	[UserName] = @UserName,
	[UserAddress] = @UserAddress
WHERE UsersID = @UsersID
GO

/****** Object:  StoredProcedure [dbo].[usp_AddFormData]    Script Date: 4/27/2014 10:37:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_AddFormData]
	@UserName NVARCHAR(50),
	@UserAddress NVARCHAR(50)
As
INSERT INTO [dbo].[AppUsers]
	(
		[UserName],
		[UserAddress]
	)
	VALUES
	(
		@UserName,
		@UserAddress
	)




GO


