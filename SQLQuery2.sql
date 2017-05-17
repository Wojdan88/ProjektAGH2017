select distinct Samochody.ID_Samochodu, Kolor, Lokalizacja.Nazwa from Samochody  
             left join Lokalizacja on Samochody.ID_Samochodu = Lokalizacja.ID_Lokalizacji left join Rezerwacja on   
             Samochody.ID_Samochodu = Rezerwacja.ID_Samochodu where not exists(Select * From Rezerwacja where   
             Rezerwacja.ID_Samochodu = Samochody.ID_Samochodu and Data_zwrotu >= '2017-05-26' and Data_Odbioru <= '2017-05-27')

			 Select * From Rezerwacja where Data_zwrotu >= '2017-05-26' and Data_Odbioru <= '2017-