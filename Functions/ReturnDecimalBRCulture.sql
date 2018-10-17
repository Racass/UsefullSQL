ALTER FUNCTION dbo.[ReturnDecimalBRCulture] (@Value float, @CasasDecimais int)  
RETURNS varchar (250)
WITH EXECUTE AS CALLER  
AS  
BEGIN
DECLARE @NewValue varchar (250) ;
	SET @Value = STR(@Value, @CasasDecimais + len(CAST(@Value as int)) + 1, @CasasDecimais);
	SET @NewValue = REPLACE(REPLACE(REPLACE(CONVERT(varchar(250), left(@Value, len(CAST(@Value as int)) + @CasasDecimais + 1)),',', '_'), '.', ','), '_', '.') 
	RETURN @NewValue;  
END;  
