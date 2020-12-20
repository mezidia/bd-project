USE [Hotels_DB]
GO
/****** Object:  StoredProcedure [dbo].[GetRoom]    Script Date: 16.12.2020 18:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUser]
	-- Add the parameters for the stored procedure here
@UserID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT [user_id],
		[country_id],
		[permission_int],
		[phoneNumber_int],
		[email_str],
		[login_str],
		[userName_str],
		[age_int],
		[password_str]
FROM [dbo].[Users] WHERE [user_id] = @UserID
END
