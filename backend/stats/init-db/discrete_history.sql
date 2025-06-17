drop table if exists public.discrete_history cascade;

create table if not exists public.discrete_history(
  id text,                      --'time~item_name' for hibernate
  time timestamptz not null,
  item_id int not null,
  item_name text not null,
  category_id int not null,
  category text,
  value int,
  quality smallint default 0
);

select create_hypertable('discrete_history', 'time', 
  chunk_time_interval => interval '1 month');

create index discrete_history_item_time_idx on discrete_history(item_id, time desc);
create index discrete_history_category_time_idx on discrete_history(category_id, time desc);