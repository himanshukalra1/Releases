IF DB_ID(N'$(NewDBName)') IS NOT NULL
BEGIN
	USE MASTER
	DECLARE SYSPROC CURSOR LOCAL FORWARD_ONLY DYNAMIC READ_ONLY FOR
	SELECT SPID FROM MASTER.DBO.SYSPROCESSES
                        WHERE DBID = (SELECT DBID FROM MASTER.DBO.SYSDATABASES   WHERE NAME =N'$(NewDBName)')

	DECLARE @SYSPROCID SMALLINT
	OPEN SYSPROC    --KILL ALL THE PROCESSES RUNNING AGAINST THE DATABASE
    FETCH NEXT FROM SYSPROC INTO @SYSPROCID
    DECLARE @KILLSTATEMENT CHAR(30)
    WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @KILLSTATEMENT = 'KILL ' + CAST(@SYSPROCID AS CHAR(30))
		EXEC (@KILLSTATEMENT)
		FETCH NEXT FROM SYSPROC INTO @SYSPROCID
    END
    CLOSE SYSPROC
    DEALLOCATE SYSPROC
    WAITFOR DELAY '000:00:01'
    DROP DATABASE $(NewDBName)
END
GO
CREATE DATABASE $(NewDBName)
GO
USE  $(NewDBName)
GO
-- NOW CREATE THE ROLES AND LOGINS

DECLARE  @LOGINDB NVARCHAR(132)
		,@USER NVARCHAR(128)
		,@ROLE  NVARCHAR(128)
		,@PASSWORD NVARCHAR(128)

SELECT @LOGINDB = N'$(NewDBName)',
			 @USER   = N'ws_web_user',
			 @ROLE   = N'wswebuser',
			 @PASSWORD = N'ws_web_user'


IF NOT EXISTS (SELECT * FROM MASTER.DBO.SYSLOGINS WHERE LOGINNAME = @USER)
	EXEC ('CREATE LOGIN [' + @USER + '] with Password = ''' + @PASSWORD + ''', CHECK_POLICY = OFF')
IF NOT EXISTS (SELECT * FROM DBO.SYSUSERS WHERE NAME = @USER AND UID < 16382)
	EXEC SP_GRANTDBACCESS @USER, @USER
IF NOT EXISTS (SELECT * FROM DBO.SYSUSERS WHERE NAME = @ROLE AND UID > 16399)
	EXEC SP_ADDROLE @ROLE
EXEC SP_ADDROLEMEMBER @ROLE, @USER
GO
