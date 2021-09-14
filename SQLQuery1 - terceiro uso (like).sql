SELECT * 
FROM [SalesLT].[Address]
WHERE 
    ([CountryRegion] IN ('CANADA', 'UNITED STATES'))  -- fixa os pa�ses
	--and ([City] like 'd%') -- filtra cidades come�adas por d. Like serve para pesquisar peda�os de resultados
	--and	([City] like '%al%') -- filtra cidades que contenham al
	--and	(
	--([City] like '%ary%') or ([City] like '%awa%')
	--)
	and ([StateProvince] not like ('alberta')) --filtra tudo que n�o seja alberta



	select [CountryRegion],[StateProvince],[City], 
	COUNT(*) as 'Contagem de Linhas'
	from [SalesLT].[Address]
	group by [CountryRegion],[StateProvince],[City]