set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_default_workspace_id=>7923536261930679108
);
end;
/
prompt  WORKSPACE 7923536261930679108
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   16:05 Sunday April 2, 2017
--   Exported By:     KARINASARFFY@GMAIL.COM
--   Export Type:     Workspace Export
--   Version:         5.1.1.00.08
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_050100
 
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>7923536261930679108);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace CLINICA_ANIMA...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 7924042342687072537
 ,p_provisioning_company_id => 7923536261930679108
 ,p_short_name => 'CLINICA_ANIMA'
 ,p_display_name => 'CLINICA_ANIMA'
 ,p_first_schema_provisioned => 'CLINICA_ANIMA'
 ,p_company_schemas => 'CLINICA_ANIMA'
 ,p_ws_schema => 'CLINICA_ANIMA'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_websheet_dev_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'CLINICA_'
 ,p_path_prefix => 'CLINICA_ANIMA'
 ,p_files_version => 4
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_api.create_user_groups (
  p_id => 1670987041186567,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_api.create_user_groups (
  p_id => 1670836027186567,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_api.create_user_groups (
  p_id => 1670777211186565,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '7923536150418679108',
  p_user_name                    => 'KARINASARFFY@GMAIL.COM',
  p_first_name                   => 'Karina',
  p_last_name                    => 'Sarffy',
  p_description                  => '',
  p_email_address                => 'karinasarffy@gmail.com',
  p_web_password                 => 'B5E3DB0B1BEE7BAE34E25DA478514CE42901B5D0C75623D50FF008518B2B0924DEA41EAC7680A841BCB9DBEB5903E21F4324C14C0290E7347E38668F84AA5942',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'CLINICA_ANIMA',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201703241139','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...news
--
begin
null;
end;
/
--
prompt ...links
--
begin
null;
end;
/
--
prompt ...bugs
--
begin
null;
end;
/
--
prompt ...events
--
begin
null;
end;
/
--
prompt ...feature types
--
begin
null;
end;
/
--
prompt ...features
--
begin
null;
end;
/
--
prompt ...feature map
--
begin
null;
end;
/
--
prompt ...tasks
--
begin
null;
end;
/
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...task defaults
--
begin
null;
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
