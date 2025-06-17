/* Деревья устройств
*/

create table if not exists public.tree(
    id smallserial,
    name  varchar(127) not null,
    
    task_id int,                  --задание экспорта из КД, по которому создано дерево
    active boolean default false,
    deleted boolean default false,   
    
    creation_date timestamptz(0) default now(),
    creation_user varchar(30),
    del_date timestamptz(0),
    del_user varchar(30),   
    
    constraint tree_pkey primary key(id)
--     constraint tree_task_fkey foreign key (task_id) references task(id)
);