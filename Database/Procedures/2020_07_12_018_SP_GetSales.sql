USE [Hotels_DB]
GO
/****** Object:  StoredProcedure [dbo].[CancelBooking]    Script Date: 07.12.2020 10:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSales] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT [hotel_id]

  FROM [dbo].[Rooms] WHERE sale_bool = 1
END
