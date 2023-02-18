prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the owner (parsing schema)
-- of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_default_workspace_id=>54091909586101327415
);
end;
/
prompt  WORKSPACE 54091909586101327415
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   07:44 Saturday February 18, 2023
--   Exported By:     NAMRATH.SHETTY205@GMAIL.COM
--   Export Type:     Workspace Export
--   Version:         22.2.2
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_220200
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>54091909586101327415);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace EVENTMANAGEMENT...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 54091737577693856715
 ,p_provisioning_company_id => 54091909586101327415
 ,p_short_name => 'EVENTMANAGEMENT'
 ,p_display_name => 'EVENTMANAGEMENT'
 ,p_first_schema_provisioned => 'WKSP_EVENTMANAGEMENT'
 ,p_company_schemas => 'WKSP_EVENTMANAGEMENT'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'EVENTMAN'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'EVENTMANAGEMENT'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111224556075029,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111140893075029,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111073851075029,
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
  p_user_id                      => '54091909435064327415',
  p_user_name                    => 'NAMRATH.SHETTY205@GMAIL.COM',
  p_first_name                   => 'Namrath',
  p_last_name                    => 'Shetty',
  p_description                  => '',
  p_email_address                => 'namrath.shetty205@gmail.com',
  p_web_password                 => '3943620E1179B13BB74CBE65A470D9B2FE8178A1AFD233B92DB2D6EA26FF680900A868072B39BB36490ABC2ACC277D1BAE8B3F29A35DFC4D1609029FB625050F',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_EVENTMANAGEMENT',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202302180542','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 54092007363011347027,
    p_user_id => 54091909435064327415,
    p_password => '3943620E1179B13BB74CBE65A470D9B2FE8178A1AFD233B92DB2D6EA26FF680900A868072B39BB36490ABC2ACC277D1BAE8B3F29A35DFC4D1609029FB625050F');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 54091737795570856725,
    p_user_id => 54091909435064327415,
    p_password => '9E28658FD758E3798CD34B2955CE3E593731030692BC8BEE2CC857F262C510C12F3A3149E737DF5ABC11CA60AB40E481B871D0C98D8EAE1598F2DDE05FD3DF2F');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 54105814864004724450,
    p_user_id => 'NAMRATH.SHETTY205@GMAIL.COM',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '100:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 54114175664823352444,
    p_user_id => 'NAMRATH.SHETTY205@GMAIL.COM',
    p_preference_name => 'FSP4500_P2101_R151456315081825472_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 54094751654529089823,
    p_user_id => 'NAMRATH.SHETTY205@GMAIL.COM',
    p_preference_name => 'FSP4500_P2102_R5737432600960966_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 54116471731633850501,
    p_user_id => 'NAMRATH.SHETTY205@GMAIL.COM',
    p_preference_name => 'FSP4500_P65_R221594212518002207_SORT',
    p_attribute_value => 'sort_5_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 54092362011330378736,
    p_user_id => 'NAMRATH.SHETTY205@GMAIL.COM',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54096162170012611527
 ,p_command => 
'ALTER TABLE PARTICIOANTS_DATA'||wwv_flow.LF||
'ADD FOREIGN KEY (Event_id) REFERENCES Event_data(Event_id);'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180626','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54101668890895682134
 ,p_command => 
'drop TABLE "PARTICIOANTS_DATA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180637','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54101670106274683308
 ,p_command => 
'drop TABLE "EVENTDATA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180638','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54112189825012786723
 ,p_command => 
'CREATE TABLE EVENT_DATA('||wwv_flow.LF||
'    EVENT_ID NUMBER PRIMARY KEY,'||wwv_flow.LF||
'    EVENT_NAME VARCHAR(100),'||wwv_flow.LF||
'    EVENT_DATE DATE,'||wwv_flow.LF||
'    ORGANIZER_EMAIL VARCHAR(100),'||wwv_flow.LF||
'    ORGNIZER_PHONE NUMBER,'||wwv_flow.LF||
'    EVENT_DISCRIPTION VARCHAR(100),'||wwv_flow.LF||
'    EVENT_TYPE VARCHAR(100),'||wwv_flow.LF||
'    EVENT_LOCATION(100),'||wwv_flow.LF||
'    EVENT_STATUS VARCHAR(50),'||wwv_flow.LF||
'    MAX_SEATS NUMBER;'||wwv_flow.LF||
')'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180655','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54112197104151791326
 ,p_command => 
'CREATE TABLE EVENT_DATA('||wwv_flow.LF||
'    EVENT_ID NUMBER PRIMARY KEY,'||wwv_flow.LF||
'    EVENT_NAME VARCHAR(100),'||wwv_flow.LF||
'    EVENT_DATE DATE,'||wwv_flow.LF||
'    ORGANIZER_EMAIL VARCHAR(100),'||wwv_flow.LF||
'    ORGNIZER_PHONE NUMBER,'||wwv_flow.LF||
'    EVENT_DISCRIPTION VARCHAR(100),'||wwv_flow.LF||
'    EVENT_TYPE VARCHAR(100),'||wwv_flow.LF||
'    EVENT_LOCATION(100),'||wwv_flow.LF||
'    EVENT_STATUS VARCHAR(50),'||wwv_flow.LF||
'    MAX_SEATS NUMBER'||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180656','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54112720468747793242
 ,p_command => 
'CREATE TABLE EVENT_DATA('||wwv_flow.LF||
'    EVENT_ID NUMBER PRIMARY KEY,'||wwv_flow.LF||
'    EVENT_NAME VARCHAR(100),'||wwv_flow.LF||
'    EVENT_DATE DATE,'||wwv_flow.LF||
'    ORGANIZER_EMAIL VARCHAR(100),'||wwv_flow.LF||
'    ORGNIZER_PHONE NUMBER,'||wwv_flow.LF||
'    EVENT_DISCRIPTION VARCHAR(100),'||wwv_flow.LF||
'    EVENT_TYPE VARCHAR(100),'||wwv_flow.LF||
'    EVENT_LOCATION VARCHAR(50),'||wwv_flow.LF||
'    EVENT_STATUS VARCHAR(50),'||wwv_flow.LF||
'    MAX_SEATS NUMBER'||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180656','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54113201124627817126
 ,p_command => 
'CREATE TABLE PARTICIPANTS_DATA('||wwv_flow.LF||
'    BOOKING_ID NUMBER PRIMARY KEY,'||wwv_flow.LF||
'    EVENT_ID NUMBER,'||wwv_flow.LF||
'    BOOKED_DATE DATE,'||wwv_flow.LF||
'    PARTICIPANT_NAME VARCHAR(100),'||wwv_flow.LF||
'    PARTICIPANT_EMAIL VARCHAR(100),'||wwv_flow.LF||
'    PARTICIPANT_PHONE NUMBER,'||wwv_flow.LF||
'    FOREIGN KEY(EVENT_ID) REFERENCES EVENT_DATA(EVENT_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180700','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54121566132112026121
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES('||wwv_flow.LF||
'    1001, ''Music Festival'', ''12-Mar-23'', ''musicfest@gmail.com'', ''022251678'', ''A weekend to indulge in warm music with amazing artists and lip-smacking food'', ''On-Premise'', ''Mumbai'', ''Live'', 250),'||wwv_flow.LF||
'	(1002, ''Business Conference'', ''17-Apr-23'', ''nyc.co@gmail.com'', ''044781209'', ''This conference is held to discuss new trends and opportunities pertaining to the business'', ''V'||
'irtual'', ''Zoom'', ''Scheduled'', 80),'||wwv_flow.LF||
'	(1003, ''Hip Hop Beginners Class'', ''2-Feb-23'', ''danceguru@gmail.com'', ''011457631'', ''What you learn - Confidently step into a beginners Hip Hop class and understand the movements'', ''On-Premise'', ''Delhi'', ''Completed'', 100),'||wwv_flow.LF||
'	(1004, ''Art & Craft  Workshop'', ''20-Mar-23'', ''craftsshop@gmail.com'', ''033892561'', ''Learn the layering technique in poster colours. It is a 3-l'||
'ayer painting which has a combination of brush painting and blending method'', ''Virtual'', ''Zoom'', ''Scheduled'', 50),'||wwv_flow.LF||
'	(1005, ''Book Reading Festival'', ''19-May-23'', ''readingfest@gmail.com'', ''141378954'', ''A reading festival is a gathering that focuses on celebrating all aspects of books and reading'', ''On-Premise'', ''Jaipur'', ''Live'', 500),'||wwv_flow.LF||
'	(1006, ''State Chess Championship'', ''15-Apr-23'', ''chesschamp@gmai'||
'l.com'', ''011190258'', ''We have designed State Chess Championship to celebrate and cherish Indian love and passion for the game'', ''On-Premise'', ''Delhi'', ''Scheduled'', 40),'||wwv_flow.LF||
'	(1007, ''Open Mic'', ''25-Mar-23'', ''laughstore@gmail.com'', ''022674381'', ''The Laugh Store is giving an opportunity to newe and emerging comedians to try out new material at our open mic'', ''On-Premise'', ''Mumbai'', ''Live'', 50),'||wwv_flow.LF||
'	(1008, '''||
'Sudoku Championship'', ''17-Feb-23'', ''sudoku_2023@gmail.com'', ''020892347'', ''"The championship follows the same rule as Sudoku, and  will have 2 rounds Round 1 ""Qualifier"" and Round 2 ""Finals""."'', ''Virtual'', ''Watsapp'', ''Cancelled'', 50);'||wwv_flow.LF||
')'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180735','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54121864795315518046
 ,p_command => 
'alter table "EVENT_DATA" modify'||wwv_flow.LF||
'("ORGNIZER_PHONE" VARCHAR2(10))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180731','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54121868684823520697
 ,p_command => 
'alter table "PARTICIPANTS_DATA" modify'||wwv_flow.LF||
'("PARTICIPANT_PHONE" VARCHAR2(10))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180732','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54122141484241534468
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES('||wwv_flow.LF||
'    1001, ''Music Festival'', ''12-Mar-23'', ''musicfest@gmail.com'', ''022251678'', ''A weekend to indulge in warm music with amazing artists and lip-smacking food'', ''On-Premise'', ''Mumbai'', ''Live'', ''250''),'||wwv_flow.LF||
'	(1002, ''Business Conference'', ''17-Apr-23'', ''nyc.co@gmail.com'', ''044781209'', ''This conference is held to discuss new trends and opportunities pertaining to the business'', '||
'''Virtual'', ''Zoom'', ''Scheduled'', ''80''),'||wwv_flow.LF||
'	(1003, ''Hip Hop Beginners Class'', ''2-Feb-23'', ''danceguru@gmail.com'', ''011457631'', ''What you learn - Confidently step into a beginners Hip Hop class and understand the movements'', ''On-Premise'', ''Delhi'', ''Completed'', ''100''),'||wwv_flow.LF||
'	(1004, ''Art & Craft  Workshop'', ''20-Mar-23'', ''craftsshop@gmail.com'', ''033892561'', ''Learn the layering technique in poster colours. It is'||
' a 3-layer painting which has a combination of brush painting and blending method'', ''Virtual'', ''Zoom'', ''Scheduled'', ''50''),'||wwv_flow.LF||
'	(1005, ''Book Reading Festival'', ''19-May-23'', ''readingfest@gmail.com'', ''141378954'', ''A reading festival is a gathering that focuses on celebrating all aspects of books and reading'', ''On-Premise'', ''Jaipur'', ''Live'', ''500''),'||wwv_flow.LF||
'	(1006, ''State Chess Championship'', ''15-Apr-23'', ''chess'||
'champ@gmail.com'', ''011190258'', ''We have designed State Chess Championship to celebrate and cherish Indian love and passion for the game'', ''On-Premise'', ''Delhi'', ''Scheduled'', ''40''),'||wwv_flow.LF||
'	(1007, ''Open Mic'', ''25-Mar-23'', ''laughstore@gmail.com'', ''022674381'', ''The Laugh Store is giving an opportunity to newe and emerging comedians to try out new material at our open mic'', ''On-Premise'', ''Mumbai'', ''Live'', ''5'||
'0''),'||wwv_flow.LF||
'	(1008, ''Sudoku Championship'', ''17-Feb-23'', ''sudoku_2023@gmail.com'', ''020892347'', ''"The championship follows the same rule as Sudoku, and  will have 2 rounds Round 1 ""Qualifier"" and Round 2 ""Finals""."'', ''Virtual'', ''Watsapp'', ''Cancelled'', ''50'');'||wwv_flow.LF||
')'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180734','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54122228397616543962
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES('||wwv_flow.LF||
'    1001, ''Music Festival'', ''12-Mar-23'', ''musicfest@gmail.com'', ''022251678'', ''A weekend to indulge in warm music with amazing artists and lip-smacking food'', ''On-Premise'', ''Mumbai'', ''Live'', 250),'||wwv_flow.LF||
'	(1002, ''Business Conference'', ''17-Apr-23'', ''nyc.co@gmail.com'', ''044781209'', ''This conference is held to discuss new trends and opportunities pertaining to the business'', ''V'||
'irtual'', ''Zoom'', ''Scheduled'', 80),'||wwv_flow.LF||
'	(1003, ''Hip Hop Beginners Class'', ''2-Feb-23'', ''danceguru@gmail.com'', ''011457631'', ''What you learn - Confidently step into a beginners Hip Hop class and understand the movements'', ''On-Premise'', ''Delhi'', ''Completed'', 100),'||wwv_flow.LF||
'	(1004, ''Art & Craft  Workshop'', ''20-Mar-23'', ''craftsshop@gmail.com'', ''033892561'', ''Learn the layering technique in poster colours. It is a 3-l'||
'ayer painting which has a combination of brush painting and blending method'', ''Virtual'', ''Zoom'', ''Scheduled'', 50),'||wwv_flow.LF||
'	(1005, ''Book Reading Festival'', ''19-May-23'', ''readingfest@gmail.com'', ''141378954'', ''A reading festival is a gathering that focuses on celebrating all aspects of books and reading'', ''On-Premise'', ''Jaipur'', ''Live'', 500),'||wwv_flow.LF||
'	(1006, ''State Chess Championship'', ''15-Apr-23'', ''chesschamp@gmai'||
'l.com'', ''011190258'', ''We have designed State Chess Championship to celebrate and cherish Indian love and passion for the game'', ''On-Premise'', ''Delhi'', ''Scheduled'', 40),'||wwv_flow.LF||
'	(1007, ''Open Mic'', ''25-Mar-23'', ''laughstore@gmail.com'', ''022674381'', ''The Laugh Store is giving an opportunity to newe and emerging comedians to try out new material at our open mic'', ''On-Premise'', ''Mumbai'', ''Live'', 50),'||wwv_flow.LF||
'	(1008, '''||
'Sudoku Championship'', ''17-Feb-23'', ''sudoku_2023@gmail.com'', ''020892347'', ''"The championship follows the same rule as Sudoku, and  will have 2 rounds Round 1 ""Qualifier"" and Round 2 ""Finals""."'', ''Virtual'', ''Watsapp'', ''Cancelled'', 50)'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180736','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'NAMRATH.SHETTY205@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220200',
    p_access_date => to_date('202302180542','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'NAMRATH.SHETTY205@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220200',
    p_access_date => to_date('202302180637','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
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
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ...workspace objects
 
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'WKSP_EVENTMANAGEMENT';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA WKSP_EVENTMANAGEMENT - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_220200
-- Exported 07:44 Saturday February 18, 2023 by: NAMRATH.SHETTY205@GMAIL.COM
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 07:44 Saturday February 18, 2023 by: NAMRATH.SHETTY205@GMAIL.COM
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'EVENTMANAGEMENT';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
