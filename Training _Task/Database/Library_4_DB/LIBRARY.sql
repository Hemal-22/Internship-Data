-- problrm 1 :--

 show book titles along with their authors (i.e., the author’s first name and last name). The book titles are stored in the books table, and the author names are stored in the authors table.

-- query --

SELECT b.id, b.title, a.first_name, a.last_name FROM books b INNER JOIN authors a ON b.author_id = a.id ORDER BY b.id;



-- problem 2 :--

displaying books along with their translators (i.e., the translator’s last name). 
Only half of our books have been translated and thus have a corresponding translator. 
So, what would be the result of joining the books and translators tables using INNER JOIN

-- query ---

SELECT b.id, b.title, b.type, t.last_name AS translator
FROM books b
JOIN translators t
ON b.translator_id = t.id
ORDER BY b.id;


-- problem 3 :--

display information about each book’s author and translator (i.e., their last names). 
We also want to keep the basic information about each book (i.e., id, title, and type).

-- query --

SELECT b.id, b.title, b.type, a.last_name AS author,
 t.last_name AS translator
FROM books b
LEFT JOIN authors a
ON b.author_id = a.id
LEFT JOIN translators t
ON b.translator_id = t.id
ORDER BY b.id;


-- problem 4 :--

show the basic book information (i.e., ID and title) along with the last names of the corresponding editors.
 Again, we want to keep all of the books in the result set. So, what would be the query?

 -- Query --

SELECT b.id, b.title, e.last_name AS editor
FROM books b
LEFT JOIN editors e
ON b.editor_id = e.id
ORDER BY b.id;





