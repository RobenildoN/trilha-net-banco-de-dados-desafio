-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano from Filmes f;
-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano 
SELECT Nome, Ano, Duracao from Filmes f order by Ano;
-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao from Filmes f WHERE id = 28;
-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao from Filmes f WHERE Ano = 1997;
-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao from Filmes f WHERE Ano > 2000;
-- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao from Filmes f WHERE Duracao > 100 AND Duracao < 150; 
-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(Ano) as Quantidade  FROM Filmes f group by Ano ORDER by Quantidade desc;
--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * from Atores a WHERE Genero='M';
--  9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * from Atores a WHERE Genero='F' ORDER by PrimeiroNome;
-- 10 - Buscar o nome do filme e o gênero
SELECT f.Nome, g.Genero from Filmes f INNER JOIN FilmesGenero fg on f.id = fg.IdFilme inner join Generos g on fg.IdGenero = g.id;
-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome, g.Genero from Filmes f INNER JOIN FilmesGenero fg on f.id = fg.IdFilme inner join Generos g on fg.IdGenero = g.id WHERE g.Genero ='Mistério';
-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.primeiroNome, a.ultimoNome, ef.papel from Filmes f INNER JOIN ElencoFilme ef on f.id = ef.IdFilme inner join Atores a on a.Id = ef.IdAtor; 