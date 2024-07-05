TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER before_insert_Login\nBEFORE INSERT ON Login\nFOR EACH ROW\nBEGIN\n    SET NEW.created_at = CURRENT_TIMESTAMP;\n    SET NEW.modified_at = CURRENT_TIMESTAMP;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER before_update_Login\nBEFORE UPDATE ON Login\nFOR EACH ROW\nBEGIN\n    SET NEW.modified_at = CURRENT_TIMESTAMP;\nEND'
sql_modes=1098907648 1098907648
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1717125105614664 1717125105623840
