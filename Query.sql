-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- 5 
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

-- 7
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 8
SELECT * FROM Atores WHERE Genero = 'M'

-- 9
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10
SELECT F.Nome, G.Genero FROM FilmesGenero FG
INNER JOIN Filmes F ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

-- 11
SELECT F.Nome, G.Genero FROM FilmesGenero FG
INNER JOIN Filmes F ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

-- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM ElencoFilme EF
INNER JOIN Filmes F ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor
