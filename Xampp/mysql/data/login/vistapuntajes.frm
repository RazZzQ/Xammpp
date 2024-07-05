TYPE=VIEW
query=select `login`.`game`.`gameid` AS `gameid`,`login`.`game`.`userid` AS `userid`,`login`.`game`.`score` AS `score`,`login`.`game`.`created_at` AS `created_at`,`login`.`game`.`created_by` AS `created_by`,`login`.`game`.`modified_at` AS `modified_at`,`login`.`game`.`modified_by` AS `modified_by` from `login`.`game` order by `login`.`game`.`score` desc
md5=f41bb425cd537f69f51cde24d907f069
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001717127448360951
create-version=2
source=SELECT gameid, userid, score, created_at, created_by, modified_at, modified_by\nFROM Game\nORDER BY score DESC
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `login`.`game`.`gameid` AS `gameid`,`login`.`game`.`userid` AS `userid`,`login`.`game`.`score` AS `score`,`login`.`game`.`created_at` AS `created_at`,`login`.`game`.`created_by` AS `created_by`,`login`.`game`.`modified_at` AS `modified_at`,`login`.`game`.`modified_by` AS `modified_by` from `login`.`game` order by `login`.`game`.`score` desc
mariadb-version=100432
