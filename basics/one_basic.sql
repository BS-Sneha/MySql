/*show databases;
select database();
use photo_store;
select database();

--create table cameras(model_name varchar(30),quantity int);

desc cameras; 

drop table cameras;*/

/*create table cannon_cameras(model_name varchar(30),quantity int);
desc cannon_cameras;*/

/*insert into cannon_cameras(model_name,quantity)values
("70d",12),
("80d",19),
("EOS-r",25),
("Eos-r5",80),
("Eos-r6",50);*/

/*select model_name from cannon_cameras;*/ /*only to retrieve model name*/
/* select model_name,quantity from cannon_cameras where model_name='80d';*/
/*select model_name,quantity from cannon_cameras where quantity>=50;*/
/*UPDATE cannon_cameras set quantity=100 WHERE model_name="70d";*/
INSERT INTO cannon_cameras(model_name,quantity)VALUES("E56",92);
