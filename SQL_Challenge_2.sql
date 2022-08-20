SELECT
	/*Seleção dos campos de retorno da query*/
	DISTINCT SECTION_NAME,
	/*Seleção única do campo SECTION_NAME*/
	DEP_NAME
FROM
	/*Direcionamento da query para a tabela data_product*/
	data_product
WHERE
	/*Filtro do campo DEP_NAME por BEBIDAS e por PADARIA.*/
	DEP_NAME = 'BEBIDAS'
	OR DEP_NAME = 'PADARIA'
GROUP BY
	/*Agrupamento por ordem ascendente nos campos DEP_NAME e SECTION_NAME*/
	DEP_NAME,
	SECTION_NAME;