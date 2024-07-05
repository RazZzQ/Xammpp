TYPE=VIEW
query=select `tfcloud`.`shooter`.`id` AS `id`,`tfcloud`.`shooter`.`name` AS `name`,`tfcloud`.`shooter`.`score` AS `score`,`tfcloud`.`shooter`.`time` AS `time` from `tfcloud`.`shooter` order by `tfcloud`.`shooter`.`score`
md5=a5c0a600ed3fd06b267afdcbfd7f7abb
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001720143371735017
create-version=2
source=SELECT * FROM Shooter\nORDER BY score ASC
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `tfcloud`.`shooter`.`id` AS `id`,`tfcloud`.`shooter`.`name` AS `name`,`tfcloud`.`shooter`.`score` AS `score`,`tfcloud`.`shooter`.`time` AS `time` from `tfcloud`.`shooter` order by `tfcloud`.`shooter`.`score`
mariadb-version=100432
