INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ( "As Crônicas de Nárnia","C.S. Lewis",1950, TRUE, "Fantasia", '978-0064471190',  "HarperCollins", 768 ,"Inglês");

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, true, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol" and "Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, true, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês" and "O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, true, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

UPDATE Livros 
SET disponivel = false
WHERE ano_publicacao <=2000;

UPDATE Livros 
SET editora = "Penguin Books"
WHERE idioma ="Inglês";

UPDATE Livros 
SET isbn = 978-0439708180
WHERE titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)";

DELETE FROM Livros WHERE  categoria= "Terror";

DELETE FROM Livros WHERE  idioma= "Francês" and ano_publicacao < 1970;

DELETE FROM Livros WHERE  titulo= "As Crônicas de Nárnia";

DELETE FROM Livros WHERE  editora= "Penguin Books";

SELECT quantidade_paginas
FROM Livros
WHERE quantidade_paginas >500;

SELECT COUNT(categoria)
FROM Livros
GROUP BY categoria;

SELECT * FROM Livros
LIMIT 5;

SELECT COUNT(quantidade_paginas) and avg(quantidade_paginas)
FROM Livros
WHERE categoria= "Drama" ;

SELECT AVG(ano_publicacao)
FROM Livros
where disponivel =true;

SELECT MIN(ano_publicacao) and max(ano_publicacao)
FROM Livros;

SELECT titulo
FROM Livros
ORDER BY  ano_publicacao DESC;

SELECT titulo, idioma FROM Livros
WHERE idioma= "Inglês"
UNION
SELECT titulo, idioma FROM Livros
WHERE idioma="Português"
ORDER BY titulo;

SELECT DISTINCT titulo FROM Livros
where autor= "George Orwell";