#questions

#q1: top rated movie by normal people
#ans1
SELECT * FROM filmes ORDER BY nota_audiencia DESC LIMIT 10;

#q2: top rated movie by professionals
#ans2
SELECT * FROM filmes ORDER BY nota_especialistas DESC LIMIT 10;

#q3: most hated movies by normal people
#ans3
SELECT * FROM filmes ORDER BY nota_audiencia ASC LIMIT 10;

#q4: most hated movies by professionals
#ans4
SELECT * FROM filmes ORDER BY nota_especialistas ASC LIMIT 10;

#q5: most expensive movie and most cheap movie
#ans5
SELECT * FROM filmes WHERE custo = (SELECT MAX(custo) FROM filmes);
SELECT * FROM filmes WHERE custo = (SELECT MIN(custo) FROM filmes);

#q6: mean from professionals rate
#ans6
SELECT AVG(nota_especialistas) FROM filmes;

#q7: mean from normal people rate
#ans7
SELECT AVG(nota_audiencia) FROM filmes;

#q8: mean from movie budget
#ans8
SELECT AVG(custo) FROM filmes;

#q9: movies more expensive than mean value
#ans9
SELECT count(*) FROM filmes WHERE custo > (SELECT AVG(custo) FROM filmes);

#ans10
SELECT * FROM filmes WHERE nota_especialistas > (SELECT AVG(nota_especialistas) FROM filmes);

#ans11
SELECT * FROM filmes WHERE nota_audiencia > (SELECT AVG(nota_audiencia) FROM filmes) ORDER BY nota_audiencia ASC;

#ans12
SELECT DISTINCT genero FROM filmes;

#ans13
SELECT genero, COUNT(*) FROM filmes GROUP BY genero ORDER BY COUNT(*) DESC;

#ans14
SELECT genero, AVG(custo) FROM filmes Group By genero ORDER BY AVG(custo) DESC;

#ans15
SELECT genero, AVG(nota_audiencia) FROM filmes Group By genero ORDER BY AVG(nota_audiencia) DESC;

#ans16
SELECT genero, AVG(nota_especialistas) FROM filmes Group By genero ORDER BY AVG(nota_especialistas) DESC;

#ans17,18
SELECT ano, COUNT(*) FROM filmes Group By ano ORDER BY COUNT(*) DESC;

#ans19
SELECT genero, ano, COUNT(*) FROM filmes Group By genero, ano ORDER BY COUNT(*) DESC;

#ans20
select filme, nota_audiencia, nota_especialistas, SUM(nota_audiencia) + SUM(nota_especialistas) 
	from filmes group by filme, nota_audiencia, nota_especialistas
		ORDER BY SUM(nota_audiencia) + SUM(nota_especialistas) DESC;
