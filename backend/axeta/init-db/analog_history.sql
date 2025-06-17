drop table if exists public.analog_history cascade;

create table if not exists public.analog_history(
  id text,                      --'time~item_name' for hibernate
  time timestamptz not null,
  category_id int not null,
  category text,
  item_id int not null,
  item_name text not null,
  value double precision,
  quality smallint default 0
);

select create_hypertable('analog_history', 'time', 
  partitioning_column => 'category_id',
  number_partitions => 30, 
  chunk_time_interval => interval '2 day');

create index analog_history_item_time_idx on analog_history(item_id, time desc);
create index analog_history_category_time_idx on analog_history(category_id, time desc);