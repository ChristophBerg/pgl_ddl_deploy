INSERT INTO pgl_ddl_deploy.set_configs (set_name, include_schema_regex, lock_safe_deployment, allow_multi_statements)
VALUES ('test1','.*',true, true);
INSERT INTO pgl_ddl_deploy.set_configs (set_name, include_schema_regex, lock_safe_deployment, allow_multi_statements)
VALUES ('test2','.*',true, false);
INSERT INTO pgl_ddl_deploy.set_configs (set_name, include_schema_regex, lock_safe_deployment, allow_multi_statements)
VALUES ('test3','.*',false, true);
INSERT INTO pgl_ddl_deploy.set_configs (set_name, include_schema_regex, lock_safe_deployment, allow_multi_statements)
VALUES ('test4','.*',false, false);
INSERT INTO pgl_ddl_deploy.set_configs (set_name, include_schema_regex, lock_safe_deployment, allow_multi_statements)
VALUES ('test5','^foo.*',true, true);
INSERT INTO pgl_ddl_deploy.set_configs (set_name, include_schema_regex, lock_safe_deployment, allow_multi_statements)
VALUES ('test6','^foo.*',true, false);
INSERT INTO pgl_ddl_deploy.set_configs (set_name, include_schema_regex, lock_safe_deployment, allow_multi_statements)
VALUES ('test7','^foo.*',false, true);
INSERT INTO pgl_ddl_deploy.set_configs (set_name, include_schema_regex, lock_safe_deployment, allow_multi_statements)
VALUES ('test8','^foo.*',false, false);

--Ensure regex must be valid
INSERT INTO pgl_ddl_deploy.set_configs (set_name, include_schema_regex, lock_safe_deployment, allow_multi_statements)
VALUES ('test9','^foo.*((',false, false);
