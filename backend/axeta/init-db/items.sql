create table if not exists items (
  id          serial,
  name        text not null,
  short_name  text not null,
  category_id int,
  category    text,
  device      int,
  value       bytea,
  quality     smallint default 0,
  constraint "items_pkey" primary key (id),
  constraint "items_name_uq" unique (name),
  constraint "items_short_name_uq" unique (short_name)
);

create index items_name_idx on items(name);
create index items_short_name_idx on items(short_name);