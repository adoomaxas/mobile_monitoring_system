/* Деревья устройств
*/

create table if not exists public.tree_node_type(
    id smallserial,
    name  varchar(30) not null,
    
    comment text,
    deleted boolean default false,   
    
    creation_date timestamptz(0) default now(),
    creation_user varchar(30),
    del_date timestamptz(0),
    del_user varchar(30),   
    
    constraint tree_node_type_pkey primary key(id)
);
