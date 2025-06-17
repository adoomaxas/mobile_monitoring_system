/* Деревья устройств
*/

create table if not exists public.tree_node(
    id serial,
    name varchar(80) not null,
    
    tree_id smallint not null,
    type_id smallint not null default 2,    --папка-1, устройство-2, 3-набор устройств, запрос-4

    path_name text,                          --полный путь из модели данных КД
    kd_name varchar(80),                     --наименование из модели данных КД

    parent_id int,                          --родительский узел (не обязательно папка)
    device_id int,                          --на графике выводится информация по устройству    
    query_id smallint,                      --на графике выводится запрос вместо устройства

    --номер для сортировки внутри parent_id
    sort_num int not null,
    --default (         
    --    select coalesce(max(n.sort_num), 0) + 1 
    --    from tree_node n where n.parent_id = parent_id),                                     

    icon_id smallint,     --иконка (если null, выбирается из категории устройств)

    deleted boolean default false,   
    creation_date timestamptz(0) default now(),
    creation_user varchar(30),
    del_date timestamptz(0),
    del_user varchar(30),   
    
    constraint tree_node_pkey primary key(id)
--     constraint tree_node_device_fkey foreign key(device_id) references device(id),
--     constraint tree_node_query_fkey foreign key(query_id) references query(id),
--     constraint tree_node_type_fkey foreign key(type_id) references tree_node_type(id),
--     constraint tree_node_icon_fkey foreign key(icon_id) references icon(id)
);

alter table tree_node add constraint tree_node_fkey foreign key(parent_id) references tree_node(id);