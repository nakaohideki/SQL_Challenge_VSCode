SELECT
	/*Seleção dos campos de retorno da query*/
	QUARTER(dss.DATE) AS QUARTER,
	/*Cálculo do trimestre e inserção no novo campo para QUARTER*/
	YEAR(dss.DATE) AS YEAR,
	/*Cálculo do ano e inserção no novo campo YEAR*/
	BUSINESS_NAME,
	SUM(dss.SALES_VALUE) AS TOTAL
	/*Cálculo do valor total de vendas e inserção no novo campo TOTAL*/
FROM data_store_cad AS dsc
	INNER JOIN data_product_sales AS dss
	/*Juntando a tabela data_store_cad com a tabela data_store_sales atribuindo a variável dss*/
	USING (STORE_CODE)
	/*Estabelecendo STORE_CODE como chave primária para a junção*/
GROUP BY
	/*Agrupamento por ordem ascendente nos campos BUSINESS_name, QUARTER e YEAR.*/
	BUSINESS_NAME,
	QUARTER,
	YEAR
HAVING
	/*Filtrando os campos QUARTER (Trimestre) com o valor 1 e year com o ano 2019*/
	QUARTER = 1
	AND YEAR = 2019
ORDER BY
	/*Ordenação descendente do campo TOTAL.*/
	TOTAL DESC;