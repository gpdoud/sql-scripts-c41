--SELECT cast(88 as varchar(10)) + 'ABC'
--select cast('88A' as int) + 12;


--SELECT convert(varchar(10), 88)


SELECT try_convert(int, '88A');