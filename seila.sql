use cadastro;

select * from cursos;
select * from gafanhotos;
select * from cursos where nome like 'p%'; /*só cursos que começam com p*/
select * from cursos where nome like '%a'; /*só cursos que terminam com a*/
select * from cursos where nome like '%a%'; /*só cursos que têm a em qualquer lugar no nome*/
select * from cursos where nome not like '%a%'; /*só cursos que NÃO têm a em qualquer lugar no nome*/
select * from cursos where nome like 'ph%p'; /*só cursos que começam com ph e terminam com p*/
select * from gafanhotos where nome like '%_silva%'; /*pessoas que têm silva, mas com um espaço antes dele*/

select distinct nacionalidade from gafanhotos;/*os paises sem repetição*/

select distinct carga from cursos order by carga;/*mostra as cargas sem repetição, ordenado por ordem crescente da carga*/

select count(*) from cursos;/*conta e retorna a quantidade de cursos*/
select count(*) from cursos where carga > 48;/*conta e retorna a quantidade de cursos que tem uma carga maior que 48 horas*/
select max(carga) from cursos;/*mostra o curso com maior carga*/
select nome,min(carga) from cursos; /*mostrará o nome do curso com o minimo de carga*/

select sum(totalaulas) from cursos where ano = '2016'; /*mostra a soma de todas as aulas*/
select avg(totalaulas) from cursos where ano = '2016'; /*mostra a média de todas as aulas*/

insert into gafanhotos values(null,7, 'Rebeca Schmdit', 'Pizzaiola', '1945-03-28', 'F', 52.00, 1.73, 'Matelândia');

select * from gafanhotos where nascimento between 1945-01-01 and 2000-01-01;

select nome from gafanhotos where sexo = 'F' and prof = 'Programadora';
