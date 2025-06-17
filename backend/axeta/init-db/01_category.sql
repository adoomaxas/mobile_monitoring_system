/* Категории items для 
*/
drop table if exists public.category cascade;

create table public.category (
  id serial,
  name text not null,
  group_name text not null,   --category name for analog items, else 'discrete' or 'string'
  data_type int,              --1 - analog (float), 2 - discrete (int), 3 - string
  deadzone real,              --0.0001 for analog
  is_workflow boolean default false,
  comment text,
  deleted boolean default false,
  created timestamptz default now(),

  constraint category_pkey primary key(id),
  constraint category_uq unique (name)
);

-- copy category(id, name, group_name, data_type, deadzone, is_workflow, comment)
-- from '/var/lib/postgresql/repo/postgres/data/csv/category.csv' delimiter ';' csv header;
