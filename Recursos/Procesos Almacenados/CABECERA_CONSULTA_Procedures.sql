--region Drop Existing Procedures

IF OBJECT_ID('dbo.trx_Insert_CabeceraConsultum') IS NOT NULL
	DROP PROCEDURE [dbo].[trx_Insert_CabeceraConsultum]

IF OBJECT_ID('dbo.trx_Update_CabeceraConsultum') IS NOT NULL
	DROP PROCEDURE [dbo].[trx_Update_CabeceraConsultum]

IF OBJECT_ID('dbo.trx_Save_CabeceraConsultum') IS NOT NULL
	DROP PROCEDURE [dbo].[trx_Save_CabeceraConsultum]

IF OBJECT_ID('dbo.trx_Remove_CabeceraConsultum') IS NOT NULL
	DROP PROCEDURE [dbo].[trx_Remove_CabeceraConsultum]

IF OBJECT_ID('dbo.trx_Get_CabeceraConsultum') IS NOT NULL
	DROP PROCEDURE [dbo].[trx_Get_CabeceraConsultum]

IF OBJECT_ID('dbo.trx_Get_CabeceraConsultasAll') IS NOT NULL
	DROP PROCEDURE [dbo].[trx_Get_CabeceraConsultasAll]

--endregion

GO

--region [dbo].[trx_Insert_CabeceraConsultum]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   Kankor using CodeSmith 6.0.0.0
-- Template:       StoredProcedures-SqlServer.cst
-- Procedure Name: [dbo].[trx_Insert_CabeceraConsultum]
-- Date Generated: miércoles, 10 de enero de 2018
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[trx_Insert_CabeceraConsultum]
	@ID_CON numeric(15, 0),
	@CEDULA_EMP varchar(13),
	@INDICACIONES_CON text,
	@MOTIVO_CON text,
	@PRESION_CON numeric(3, 0),
	@FECHA_CON datetime,
	@PESO_CON decimal(5, 2),
	@TEMPERATURA_CON numeric(2, 0),
	@SINTOMAS_CON text,
	@OBSERVACIONES_CON text
AS
DECLARE @error_number	int,
        @error_proc		nvarchar(126),
        @error_message	nvarchar(2048) 
BEGIN TRY

    BEGIN   TRANSACTION
    
    INSERT  INTO [dbo].[CABECERA_CONSULTA] (
    	    [ID_CON],
			[CEDULA_EMP],
			[INDICACIONES_CON],
			[MOTIVO_CON],
			[PRESION_CON],
			[FECHA_CON],
			[PESO_CON],
			[TEMPERATURA_CON],
			[SINTOMAS_CON],
			[OBSERVACIONES_CON] ) 
    VALUES  (
    	    @ID_CON,
			@CEDULA_EMP,
			@INDICACIONES_CON,
			@MOTIVO_CON,
			@PRESION_CON,
			@FECHA_CON,
			@PESO_CON,
			@TEMPERATURA_CON,
			@SINTOMAS_CON,
			@OBSERVACIONES_CON )
    
    COMMIT  TRANSACTION

END TRY
BEGIN CATCH
	SELECT	@error_number = ERROR_NUMBER(),
			@error_proc = ERROR_PROCEDURE(),
			@error_message = ERROR_MESSAGE() 
	RAISERROR( '%s. Error: ( %d ) en %s', 16, 1, @error_message, @error_number,  @error_proc )
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
--endregion

GO

--region [dbo].[trx_Update_CabeceraConsultum]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   Kankor using CodeSmith 6.0.0.0
-- Template:       StoredProcedures-SqlServer.cst
-- Procedure Name: [dbo].[trx_Update_CabeceraConsultum]
-- Date Generated: miércoles, 10 de enero de 2018
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[trx_Update_CabeceraConsultum]
	@ID_CON numeric(15, 0),
	@CEDULA_EMP varchar(13),
	@INDICACIONES_CON text,
	@MOTIVO_CON text,
	@PRESION_CON numeric(3, 0),
	@FECHA_CON datetime,
	@PESO_CON decimal(5, 2),
	@TEMPERATURA_CON numeric(2, 0),
	@SINTOMAS_CON text,
	@OBSERVACIONES_CON text
AS
DECLARE @error_number	int,
        @error_proc		nvarchar(126),
        @error_message	nvarchar(2048) 
BEGIN TRY

    BEGIN   TRANSACTION
    UPDATE  [dbo].[CABECERA_CONSULTA] 
    SET     [CEDULA_EMP] = @CEDULA_EMP,
			[INDICACIONES_CON] = @INDICACIONES_CON,
			[MOTIVO_CON] = @MOTIVO_CON,
			[PRESION_CON] = @PRESION_CON,
			[FECHA_CON] = @FECHA_CON,
			[PESO_CON] = @PESO_CON,
			[TEMPERATURA_CON] = @TEMPERATURA_CON,
			[SINTOMAS_CON] = @SINTOMAS_CON,
			[OBSERVACIONES_CON] = @OBSERVACIONES_CON
    WHERE   [ID_CON] = @ID_CON
    COMMIT  TRANSACTION
    
END TRY
BEGIN CATCH
	SELECT	@error_number = ERROR_NUMBER(),
			@error_proc = ERROR_PROCEDURE(),
			@error_message = ERROR_MESSAGE() 
	RAISERROR( '%s. Error: ( %d ) en %s', 16, 1, @error_message, @error_number,  @error_proc )
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
--endregion

GO


--region [dbo].[trx_Save_CabeceraConsultum]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   Kankor using CodeSmith 6.0.0.0
-- Template:       StoredProcedures-SqlServer.cst
-- Procedure Name: [dbo].[trx_Save_CabeceraConsultum]
-- Date Generated: miércoles, 10 de enero de 2018
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[trx_Save_CabeceraConsultum]
	@ID_CON numeric(15, 0),
	@CEDULA_EMP varchar(13),
	@INDICACIONES_CON text,
	@MOTIVO_CON text,
	@PRESION_CON numeric(3, 0),
	@FECHA_CON datetime,
	@PESO_CON decimal(5, 2),
	@TEMPERATURA_CON numeric(2, 0),
	@SINTOMAS_CON text,
	@OBSERVACIONES_CON text
AS
DECLARE @error_number	int,
        @error_proc		nvarchar(126),
        @error_message	nvarchar(2048) 
BEGIN TRY

    BEGIN TRANSACTION
    
    IF ISNULL( @ID_CON, '') <> '' BEGIN 
        UPDATE  [dbo].[CABECERA_CONSULTA] 
        SET     [CEDULA_EMP] = @CEDULA_EMP,
				[INDICACIONES_CON] = @INDICACIONES_CON,
				[MOTIVO_CON] = @MOTIVO_CON,
				[PRESION_CON] = @PRESION_CON,
				[FECHA_CON] = @FECHA_CON,
				[PESO_CON] = @PESO_CON,
				[TEMPERATURA_CON] = @TEMPERATURA_CON,
				[SINTOMAS_CON] = @SINTOMAS_CON,
				[OBSERVACIONES_CON] = @OBSERVACIONES_CON
    	WHERE   [ID_CON] = @ID_CON
    END
                
    ELSE BEGIN
        INSERT  INTO [dbo].[CABECERA_CONSULTA] (
        	    [ID_CON],
				[CEDULA_EMP],
				[INDICACIONES_CON],
				[MOTIVO_CON],
				[PRESION_CON],
				[FECHA_CON],
				[PESO_CON],
				[TEMPERATURA_CON],
				[SINTOMAS_CON],
				[OBSERVACIONES_CON] ) 
        VALUES  (
        	    @ID_CON,
				@CEDULA_EMP,
				@INDICACIONES_CON,
				@MOTIVO_CON,
				@PRESION_CON,
				@FECHA_CON,
				@PESO_CON,
				@TEMPERATURA_CON,
				@SINTOMAS_CON,
				@OBSERVACIONES_CON )
    END

    COMMIT TRANSACTION
    
    SELECT  ID_CON = @ID_CON

END TRY
BEGIN CATCH
	SELECT	@error_number = ERROR_NUMBER(),
			@error_proc = ERROR_PROCEDURE(),
			@error_message = ERROR_MESSAGE() 
	RAISERROR( '%s. Error: ( %d ) en %s', 16, 1, @error_message, @error_number,  @error_proc )
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
--endregion

GO


--region [dbo].[trx_Remove_CabeceraConsultum]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   Kankor using CodeSmith 6.0.0.0
-- Template:       StoredProcedures-SqlServer.cst
-- Procedure Name: [dbo].[trx_Remove_CabeceraConsultum]
-- Date Generated: miércoles, 10 de enero de 2018
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[trx_Remove_CabeceraConsultum]
	@ID_CON numeric(15, 0)
AS
DECLARE @error_number	int,
        @error_proc		nvarchar(126),
        @error_message	nvarchar(2048) 
BEGIN TRY

    BEGIN   TRANSACTION
    DELETE  FROM [dbo].[CABECERA_CONSULTA]
    WHERE   [ID_CON] = @ID_CON
    COMMIT  TRANSACTION
    
END TRY
BEGIN CATCH
	SELECT	@error_number = ERROR_NUMBER(),
			@error_proc = ERROR_PROCEDURE(),
			@error_message = ERROR_MESSAGE() 
	RAISERROR( '%s. Error: ( %d ) en %s', 16, 1, @error_message, @error_number,  @error_proc )
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
--endregion

GO

--region [dbo].[trx_Get_CabeceraConsultum]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   Kankor using CodeSmith 6.0.0.0
-- Template:       StoredProcedures-SqlServer.cst
-- Procedure Name: [dbo].[trx_Get_CabeceraConsultum]
-- Date Generated: miércoles, 10 de enero de 2018
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[trx_Get_CabeceraConsultum]
	@ID_CON numeric(15, 0)
AS
DECLARE @error_number	int,
        @error_proc		nvarchar(126),
        @error_message	nvarchar(2048) 
BEGIN TRY

	SET TRANSACTION ISOLATION LEVEL READ COMMITTED

    SELECT  [ID_CON],
			[CEDULA_EMP],
			[INDICACIONES_CON],
			[MOTIVO_CON],
			[PRESION_CON],
			[FECHA_CON],
			[PESO_CON],
			[TEMPERATURA_CON],
			[SINTOMAS_CON],
			[OBSERVACIONES_CON]
    FROM    [dbo].[CABECERA_CONSULTA]
    WHERE   [ID_CON] = @ID_CON

END TRY
BEGIN CATCH
	SELECT	@error_number = ERROR_NUMBER(),
			@error_proc = ERROR_PROCEDURE(),
			@error_message = ERROR_MESSAGE() 
	RAISERROR( '%s. Error: ( %d ) en %s', 16, 1, @error_message, @error_number,  @error_proc )
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
--endregion

GO

--region [dbo].[trx_Get_CabeceraConsultasAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   Kankor using CodeSmith 6.0.0.0
-- Template:       StoredProcedures-SqlServer.cst
-- Procedure Name: [dbo].[trx_Get_CabeceraConsultasAll]
-- Date Generated: miércoles, 10 de enero de 2018
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[trx_Get_CabeceraConsultasAll]
AS
DECLARE @error_number	int,
        @error_proc		nvarchar(126),
        @error_message	nvarchar(2048) 
BEGIN TRY

	SET TRANSACTION ISOLATION LEVEL READ COMMITTED

    SELECT  [ID_CON],
			[CEDULA_EMP],
			[INDICACIONES_CON],
			[MOTIVO_CON],
			[PRESION_CON],
			[FECHA_CON],
			[PESO_CON],
			[TEMPERATURA_CON],
			[SINTOMAS_CON],
			[OBSERVACIONES_CON]
    FROM    [dbo].[CABECERA_CONSULTA]

END TRY
BEGIN CATCH
	SELECT	@error_number = ERROR_NUMBER(),
			@error_proc = ERROR_PROCEDURE(),
			@error_message = ERROR_MESSAGE() 
	RAISERROR( '%s. Error: ( %d ) en %s', 16, 1, @error_message, @error_number,  @error_proc )
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
END CATCH
--endregion

GO

