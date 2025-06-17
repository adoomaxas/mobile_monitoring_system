/* Группы архивирования (одно OPC и БД соединенение на группу)
*/
drop table if exists public.arch_groups;

create table if not exists public.arch_groups (
  name text,
  data_type int not null,
  deleted boolean default false,
  constraint arch_groups_pkey primary key (name)
);

delete from arch_groups;
insert into arch_groups(name, data_type) 
select distinct group_name, data_type from category order by 1;