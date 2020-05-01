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

