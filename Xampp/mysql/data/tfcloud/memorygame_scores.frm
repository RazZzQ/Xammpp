TYPE=VIEW
query=select `tfcloud`.`memorygame`.`id` AS `id`,`tfcloud`.`memorygame`.`name` AS `name`,`tfcloud`.`memorygame`.`time` AS `time`,`tfcloud`.`memorygame`.`timestamp` AS `timestamp` from `tfcloud`.`memorygame` order by `tfcloud`.`memorygame`.`time`
md5=af5a886a4f488ab1e3946f82a6b0c425
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001720143371711652
create-version=2
source=SELECT * FROM MemoryGame\nORDER BY time ASC
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `tfcloud`.`memorygame`.`id` AS `id`,`tfcloud`.`memorygame`.`name` AS `name`,`tfcloud`.`memorygame`.`time` AS `time`,`tfcloud`.`memorygame`.`timestamp` AS `timestamp` from `tfcloud`.`memorygame` order by `tfcloud`.`memorygame`.`time`
mariadb-version=100432
