TYPE=VIEW
query=select `login`.`login`.`id` AS `id`,`login`.`login`.`usuario` AS `usuario`,`login`.`login`.`created_at` AS `created_at`,`login`.`login`.`created_by` AS `created_by`,`login`.`login`.`modified_at` AS `modified_at`,`login`.`login`.`modified_by` AS `modified_by` from `login`.`login`
md5=57da696553df8a35329c29b55bafab39
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001717125105606545
create-version=2
source=SELECT id, usuario, created_at, created_by, modified_at, modified_by\nFROM Login
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `login`.`login`.`id` AS `id`,`login`.`login`.`usuario` AS `usuario`,`login`.`login`.`created_at` AS `created_at`,`login`.`login`.`created_by` AS `created_by`,`login`.`login`.`modified_at` AS `modified_at`,`login`.`login`.`modified_by` AS `modified_by` from `login`.`login`
mariadb-version=100432
