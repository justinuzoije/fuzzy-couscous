postgres=#
postgres=# CREATE TABLE "books" (
postgres(#      "id"           integer NOT NULL,
postgres(#      "title"        text NOT NULL,
postgres(#      "author_id"    integer,
postgres(#      "subject_id"   integer,
postgres(#      Constraint "books_id_pkey" Primary Key ("id")
postgres(# );
NOTICE:  CREATE TABLE / PRIMARY KEY will create implicit index "books_id_pkey" for table "books"
CREATE TABLE
postgres=#
postgres=#
postgres=# insert into books values (7808,  'Java',                  4156, 9);
INSERT 0 1
postgres=# insert into books values (4513,  'Javascript',            1866, 15);
INSERT 0 1
postgres=# insert into books values (4267,  'C#',                    2001, 15);
INSERT 0 1
postgres=# insert into books values (1608,  'Oracle',                1809, 2);
INSERT 0 1
postgres=# insert into books values (1590,  'Sql Server',            1809, 2);
INSERT 0 1
postgres=# insert into books values (25908, 'Postgre SQL',          15990, 2);
INSERT 0 1
postgres=# insert into books values (1501,  'Python',                2031, 2);
INSERT 0 1
postgres=# insert into books values (190,   'Java by API',             16, 6);
INSERT 0 1
postgres=# insert into books values (1234,  '2D',                   25041, 3);
INSERT 0 1
postgres=# insert into books values (2038,  'C',                     1644, 0);
INSERT 0 1
postgres=# insert into books values (156,   'C++',                    115, 9);
INSERT 0 1
postgres=# insert into books values (41473, 'Programming Python',    7805, 4);
INSERT 0 1
postgres=# insert into books values (41477, 'Learning Python',       7805, 4);
INSERT 0 1
postgres=# insert into books values (41478, 'Perl Cookbook',         7806, 4);
INSERT 0 1
postgres=# insert into books values (41472, 'Practical PostgreSQL',  1212, 4);
INSERT 0 1
postgres=#
postgres=# select * from books;
  id   |        title         | author_id | subject_id
-------+----------------------+-----------+------------
  7808 | Java                 |      4156 |          9
  4513 | Javascript           |      1866 |         15
  4267 | C#                   |      2001 |         15
  1608 | Oracle               |      1809 |          2
  1590 | Sql Server           |      1809 |          2
 25908 | Postgre SQL          |     15990 |          2
  1501 | Python               |      2031 |          2
   190 | Java by API          |        16 |          6
  1234 | 2D                   |     25041 |          3
  2038 | C                    |      1644 |          0
   156 | C++                  |       115 |          9
 41473 | Programming Python   |      7805 |          4
 41477 | Learning Python      |      7805 |          4
 41478 | Perl Cookbook        |      7806 |          4
 41472 | Practical PostgreSQL |      1212 |          4
(15 rows)

postgres=#
postgres=# CREATE TABLE "authors" (
postgres(#      "id" integer NOT NULL,
postgres(#      "last_name" text,
postgres(#      "first_name" text,
postgres(#      Constraint "authors_pkey" Primary Key ("id")
postgres(# );
NOTICE:  CREATE TABLE / PRIMARY KEY will create implicit index "authors_pkey" for table "authors"
CREATE TABLE
postgres=#
postgres=#
postgres=# insert into authors values (1111,  'Martin',       'Jason');
INSERT 0 1
postgres=# insert into authors values (1212,  'Worsley',      'Robert');
INSERT 0 1
postgres=# insert into authors values (15990, 'Mathews',      'John');
INSERT 0 1
postgres=# insert into authors values (25041, 'Smith',       'Williams');
INSERT 0 1
postgres=# insert into authors values (16,    'Alcott',       'May');
INSERT 0 1
postgres=# insert into authors values (4156,  'King',         'Stephen');
INSERT 0 1
postgres=# insert into authors values (1866,  'Herbert',      'Margaret');
INSERT 0 1
postgres=# insert into authors values (1644,  'Hogarth',      'Celia');
INSERT 0 1
postgres=# insert into authors values (2031,  'Brown',        'Wise');
INSERT 0 1
postgres=# insert into authors values (115,   'Poe',          'Allen');
INSERT 0 1
postgres=# insert into authors values (7805,  'Lutz',         'Mark');
INSERT 0 1
postgres=# insert into authors values (7806,  'Rice',         'Tom');
INSERT 0 1
postgres=# insert into authors values (1533,  'Black',        'Chris');
INSERT 0 1
postgres=# insert into authors values (1717,  'Brite',        'Linda');
INSERT 0 1
postgres=# insert into authors values (2112,  'Larry',        'Edward');
INSERT 0 1
postgres=# insert into authors values (2001,  'Clarke',       'Alison');
INSERT 0 1
postgres=# insert into authors values (1213,  'Green',        'Mary');
INSERT 0 1
postgres=#
postgres=# select * from authors;
  id   | last_name | first_name
-------+-----------+------------
  1111 | Martin    | Jason
  1212 | Worsley   | Robert
 15990 | Mathews   | John
 25041 | Smith     | Williams
    16 | Alcott    | May
  4156 | King      | Stephen
  1866 | Herbert   | Margaret
  1644 | Hogarth   | Celia
  2031 | Brown     | Wise
   115 | Poe       | Allen
  7805 | Lutz      | Mark
  7806 | Rice      | Tom
  1533 | Black     | Chris
  1717 | Brite     | Linda
  2112 | Larry     | Edward
  2001 | Clarke    | Alison
  1213 | Green     | Mary
(17 rows)

postgres=#
postgres=# -- Comparing INNER JOIN to WHERE
postgres=#
postgres=# SELECT title, last_name, first_name
postgres-#         FROM books, authors
postgres-#         WHERE (books.author_id = authors.id)
postgres-#         AND last_name = 'Geisel';
 title | last_name | first_name
-------+-----------+------------
(0 rows)

postgres=#
postgres=#
postgres=#
postgres=#
postgres=# drop table authors;
DROP TABLE
postgres=# drop table books;
DROP TABLE
postgres=#
postgres=#
