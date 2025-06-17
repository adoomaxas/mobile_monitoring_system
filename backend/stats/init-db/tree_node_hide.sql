/* Пользовательские настройки по скрытию узлов дерева. 
Настройки применяются иерархично, т.е. если задана настройка для ветки дерева, 
то эта же настройка применяется ко всем подчиненным узлам.
*/
create table if not exists public.tree_node_hide(
    id serial,

    tree_node_id int not null,          --id ветки или конечного узла
    user_id int not null,          --id пользователя в БД visu

    deleted boolean default false,   

    creation_date timestamptz(0) default now(),
    creation_user varchar(30),
    del_date timestamptz(0),
    del_user varchar(30),   
    
    constraint tree_node_hide_pkey primary key(id),
    constraint tree_node_hide_node_fkey foreign key(tree_node_id) references tree_node(id)
);

