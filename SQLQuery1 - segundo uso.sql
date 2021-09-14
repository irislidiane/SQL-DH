SELECT
[CountryRegion],
[City],
[StateProvince],
COUNT(*) AS 'Contagem'   --SELECIONE TODAS AS LINHAS DA TABELA ENDERÇO E CONTE NUMA COLUNA CHAMADA CONTAGEM
FROM [SalesLT].[Address]
--WHERE [CountryRegion]='Canada' AND [StateProvince]='Quebec'
WHERE [CountryRegion]='Canada' AND [StateProvince] IN ('Quebec', 'Ontario', 'British Columbia')
--WHERE [CountryRegion]='Canada' AND ([StateProvince]='Quebec' OR [StateProvince]='Ontario')
GROUP BY[CountryRegion],[City],[StateProvince] --agrupa o resultado



--Restringe aos 10 resultados
SELECT TOP 10 *
FROM [SalesLT].[Address]
--WHERE StateProvince = 'texas' or StateProvince = 'colorado' -- não poderia usar and, pois soma condições
--WHERE (StateProvince = 'texas' or StateProvince = 'colorado') AND
WHERE (StateProvince IN ('texas', 'colorado')) AND -- OUTRA FORMA DE FAZER O FILTRO DO ESTADO
City = 'DENVER'
ORDER BY [AddressID] DESC -- NATURALMENTE VAI ORDENAR EM ORDEM ASCENDENTE. O DESC DETERMINA O ORDENAMENTO DESCENDENTE (um Bottom)

--SELECT  * 
--FROM SalesLT.Address
--WHERE CountryRegion = 'Canada' 

