/* Буферная таблица для загрузки деревьев из КД:
    импорт модели данных из CSV.
*/

--drop table im_data_model_log;

create table if not exists public.im_data_model_log(
    id bigserial,
    time timestamptz default now() not null,        
    task_id int,          --задание импорта  

    num int,               --номер строки в файле

    --CNSpath в файле CSV, полный путь в модели: .View3:Node2.Node1.Node2
    path_name text,                       

    --ID представления, ViewId в файле CSV (Котельная, Насосная, ...)
    view_id smallint,                      
    
    -- CNSDataIdentifierType в файле CSV: 1 - папка, 2 - устройство
    type smallint,

    name varchar(30),                     --имя узла/предаставления в модели: Node2  
    display_names varchar(80),            --отображаемое имя дерева в CSV: lt:1 LANG:10027 "PT_21"
    data varchar(80)                     --название тега (dp), например: 720896 temper111

--     constraint im_data_model_log_task_fkey foreign key(task_id) references task(id)
);

select create_hypertable('im_data_model_log', 'time');
alter table im_data_model_log add constraint im_data_model_log_pkey primary key(task_id, num, time);
create index im_data_model_log_task_idx on im_data_model_log(task_id);
