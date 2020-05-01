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
SELECT * FROM filmes WHERE custo > (SELECT AVG(custo) FROM filmes);

#ans10
SELECT * FROM filmes WHERE nota_especialistas > (SELECT AVG(nota_especialistas) FROM filmes);

#ans11
SELECT * FROM filmes WHERE nota_audiencia > (SELECT AVG(nota_audiencia) FROM filmes);

#ans12
SELECT * FROM filmes WHERE nota_audiencia > (SELECT AVG(nota_audiencia) FROM filmes) ORDER BY nota_audiencia ASC;

#ans13
