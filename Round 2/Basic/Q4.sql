SELECT 
    [Person].[CountryRegion].[?Name], 
    [AdventureWorks2019].[Sales].[Currency].[CurrencyCode]
FROM 
    [AdventureWorks2019].[Person].[CountryRegion]
INNER JOIN 
    [AdventureWorks2019].[Sales].[Currency]
ON 
    [].[Person].[CountryRegion].[CountryRegionCode] = [AdventureWorks2019].[Sales].[Currency].[CurrencyCode];

  select cr.Name [Country], rc.CurrencyCode 
  from person.CountryRegion cr 
  inner join sales.countryRegionCurrency rc on cr.CountryRegionCode=rc.CountryRegionCode 
  order by country