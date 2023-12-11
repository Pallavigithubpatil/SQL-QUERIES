insert into my_employeee1 values(&id,&&last_name,&&first_name,lower(concat(substr(&&first_name,1,1),substr(&&last_name,1,7))),&salary);

commit;




select * from my_employeee1;

