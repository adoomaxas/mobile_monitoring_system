drop table if exists public.alarms cascade;

create table if not exists public.alarms(
    id text,                                 --'time~item_name' for hibernate
    "time" timestamptz not null,
    active_time timestamptz not null,
    item_id int,
    item_name text,
    item_value real,
    alarm_state text,
    alarm_type text
);

select create_hypertable('alarms', 'time', chunk_time_interval => interval '6 month');

create index alarms_item_name_time_idx on alarms(item_id, time desc);
