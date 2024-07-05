TYPE=VIEW
query=select `tfcloud`.`shootertopdown`.`id` AS `id`,`tfcloud`.`shootertopdown`.`name` AS `name`,`tfcloud`.`shootertopdown`.`enemies_killed` AS `enemies_killed`,`tfcloud`.`shootertopdown`.`coins_collected` AS `coins_collected`,`tfcloud`.`shootertopdown`.`time` AS `time` from `tfcloud`.`shootertopdown` order by `tfcloud`.`shootertopdown`.`enemies_killed`,`tfcloud`.`shootertopdown`.`coins_collected`
md5=779692e94eb44884358b5ca85ad778e9
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001720143371721939
create-version=2
source=SELECT * FROM ShooterTopDown\nORDER BY enemies_killed ASC, coins_collected ASC
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `tfcloud`.`shootertopdown`.`id` AS `id`,`tfcloud`.`shootertopdown`.`name` AS `name`,`tfcloud`.`shootertopdown`.`enemies_killed` AS `enemies_killed`,`tfcloud`.`shootertopdown`.`coins_collected` AS `coins_collected`,`tfcloud`.`shootertopdown`.`time` AS `time` from `tfcloud`.`shootertopdown` order by `tfcloud`.`shootertopdown`.`enemies_killed`,`tfcloud`.`shootertopdown`.`coins_collected`
mariadb-version=100432
