--Script 1:
SELECT Nome, Ano FROM FILMES;

--Script 2:
SELECT Nome, Ano FROM FILMES ORDER BY Ano;

--Script 3:
SELECT Nome, Ano, Duracao FROM FILMES WHERE Nome = 'de volta para o futuro';

--Script 4:
SELECT Nome, Ano, Duracao FROM FILMES WHERE	Ano = '1997';

--Script 5:
SELECT Nome, Ano, Duracao FROM FILMES WHERE	Ano >=	'2000';

--Script 6: 
SELECT Nome, Ano, Duracao FROM FILMES WHERE	Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

--Script 7:
SELECT Ano, Count(Ano) Quantidade FROM Filmes GROUP BY ANO ORDER BY Quantidade DESC;

--Script 8:
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

--Script 9:
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

--Script 10:
SELECT 
	F.Nome, G.Genero
FROM 
	Filmes F,
	Generos G
INNER JOIN 
	FilmesGenero FG 
ON
	G.id = FG.IdGenero
WHERE 
	F.Id = FG.IdFilme; 

--Script 11:
SELECT 
	F.Nome, G.Genero
FROM 
	Filmes F,
	Generos G
INNER JOIN 
	FilmesGenero FG 
ON
	G.id = FG.IdGenero
WHERE 
	F.Id = FG.IdFilme
AND
	G.Genero = 'Mistério';

--Script 12:
    SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
From
	Filmes F, 
	Atores A 
INNER JOIN
	ElencoFilme EF
ON 
	A.Id = EF.IdAtor
WHERE
	F.Id = EF.IdFilme;

