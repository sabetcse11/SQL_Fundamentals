
--delete vs truncate


BEGIN TRANSACTION [Tran1]

BEGIN TRY

    --DELETE from Test_tab
	truncate table Test_tab

	ROLLBACK TRANSACTION [Tran1]
    --COMMIT TRANSACTION [Tran1]

END TRY

BEGIN CATCH

    ROLLBACK TRANSACTION [Tran1]

END CATCH  

--truncate table Test_tab

exec sys.sp_help Test_tab

--insert into Test_tab values(1,'Sabet',120000)

SELECT *from Test_tab


https://unstop.com/blog/difference-between-delete-and-truncate-in-sql

