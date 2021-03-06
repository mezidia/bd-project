USE [Hotels_DB]
GO
/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 20.12.2020 18:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[GetUser]
	-- Add the parameters for the stored procedure here
@UserID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT	[country_id],
		[permission_int],
		[phoneNumber_int],
		[email_str],
		[login_str],
		[userName_str],
		[age_int],
		[password_str]
FROM [dbo].[Users] WHERE [user_id] = @UserID
END
