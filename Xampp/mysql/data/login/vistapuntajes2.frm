TYPE=VIEW
query=select `login`.`game2`.`gameid` AS `gameid`,`login`.`game2`.`userid` AS `userid`,`login`.`game2`.`score` AS `score`,`login`.`game2`.`created_at` AS `created_at`,`login`.`game2`.`created_by` AS `created_by`,`login`.`game2`.`modified_at` AS `modified_at`,`login`.`game2`.`modified_by` AS `modified_by` from `login`.`game2` order by `login`.`game2`.`score` desc
md5=aa906669f38533183107d7ab34bfce26
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001717127483088319
create-version=2
source=SELECT gameid, userid, score, created_at, created_by, modified_at, modified_by\nFROM Game2\nORDER BY score DESC
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `login`.`game2`.`gameid` AS `gameid`,`login`.`game2`.`userid` AS `userid`,`login`.`game2`.`score` AS `score`,`login`.`game2`.`created_at` AS `created_at`,`login`.`game2`.`created_by` AS `created_by`,`login`.`game2`.`modified_at` AS `modified_at`,`login`.`game2`.`modified_by` AS `modified_by` from `login`.`game2` order by `login`.`game2`.`score` desc
mariadb-version=100432
