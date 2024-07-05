TYPE=VIEW
query=select `login`.`game3`.`gameid` AS `gameid`,`login`.`game3`.`userid` AS `userid`,`login`.`game3`.`score` AS `score`,`login`.`game3`.`created_at` AS `created_at`,`login`.`game3`.`created_by` AS `created_by`,`login`.`game3`.`modified_at` AS `modified_at`,`login`.`game3`.`modified_by` AS `modified_by` from `login`.`game3` order by `login`.`game3`.`score` desc
md5=7f5fdf64179e174e49883dfc4ea67ed0
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001717127509393225
create-version=2
source=SELECT gameid, userid, score, created_at, created_by, modified_at, modified_by\nFROM Game3\nORDER BY score DESC
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `login`.`game3`.`gameid` AS `gameid`,`login`.`game3`.`userid` AS `userid`,`login`.`game3`.`score` AS `score`,`login`.`game3`.`created_at` AS `created_at`,`login`.`game3`.`created_by` AS `created_by`,`login`.`game3`.`modified_at` AS `modified_at`,`login`.`game3`.`modified_by` AS `modified_by` from `login`.`game3` order by `login`.`game3`.`score` desc
mariadb-version=100432
