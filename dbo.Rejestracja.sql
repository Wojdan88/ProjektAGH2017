CREATE PROCEDURE [dbo].[Rejestracja]
	@NazwaUzytkownika nvarchar(50),
	@Haslo nchar(10),
	@Email nvarchar(50)
	
	as
Begin
Set NOCOUNT on;

IF Exists(select ID_Klient from [Klient] where NazwaUzytkownika=@NazwaUzytkownika)
Begin
select -1 --NazwaUzytkownika istnieje
end
else if exists(select ID_Klient from [Klient] where Email=@Email)
Begin
select -2 --Email istnieje
end
else
insert into [Klient]
([ID_Klient], [Email], [Haslo]) values (@NazwaUzytkownika, @Email, @Haslo)
select SCOPE_IDENTITY()
End 
