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
--   Date and Time:   09:32 Saturday February 18, 2023
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
    p_id => 54128525243974851597,
    p_user_id => 'NAMRATH.SHETTY205@GMAIL.COM',
    p_preference_name => 'F4500_1157684150404338202_SPLITTER_STATE',
    p_attribute_value => '200:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 54105814864004724450,
    p_user_id => 'NAMRATH.SHETTY205@GMAIL.COM',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '259:false',
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
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54128576606996878593
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES(''1007'', ''Open Mic'', ''03/25/2023'', ''laughstore@gmail.com'', ''022-674381'', ''Laugh Store is giving an opportunity to newe and emerging comedians to try out new material at open mic'', ''On-Premise'', ''Mumbai'', ''Live'', ''50'''||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180831','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54128596183368894148
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES (''1008'', ''Sudoku Championship'', ''02/17/2023'', ''sudoku_2023@gmail.com'', ''020-892347'', ''"The championship follows the same rule as Sudoku, and  will have 2 rounds Round 1 ""Qualifier"" and Round 2 ""Finals""."'', ''Virtual'', ''Watsapp'', ''Cancelled'', ''50'');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180834','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54128814426597353453
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES('||wwv_flow.LF||
'(''1006'', ''State Chess Championship'', ''04/15/2023'', ''chesschamp@gmail.com'', ''011-190258'', ''We have designed State Chess Championship to celebrate and cherish Indian love and passion for the game'', ''On-Premise'', ''Delhi'', ''Scheduled'', ''40''),'||wwv_flow.LF||
'	(''1007'', ''Open Mic'', ''03/25/2023'', ''laughstore@gmail.com'', ''022-674381'', ''The Laugh Store is giving an opportunity to newe and em'||
'erging comedians to try out new material at our open mic'', ''On-Premise'', ''Mumbai'', ''Live'', ''50''),'||wwv_flow.LF||
'	(''1008'', ''Sudoku Championship'', ''02/17/2023'', ''sudoku_2023@gmail.com'', ''020-892347'', ''"The championship follows the same rule as Sudoku, and  will have 2 rounds Round 1 ""Qualifier"" and Round 2 ""Finals""."'', ''Virtual'', ''Watsapp'', ''Cancelled'', ''50'')'||wwv_flow.LF||
''||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180829','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54128830921470356482
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES('||wwv_flow.LF||
'''1006'', ''State Chess Championship'', ''04/15/2023'', ''chesschamp@gmail.com'', ''011-190258'', ''We have designed State Chess Championship to celebrate and cherish Indian love and passion for the game'', ''On-Premise'', ''Delhi'', ''Scheduled'', ''40'''||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180830','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54128834179344358559
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES('||wwv_flow.LF||
'''1006'', ''State Chess Championship'', ''04/15/2023'', ''chesschamp@gmail.com'', ''011-190258'', ''We have designed State Chess Championship to celebrate and cherish Indian love and passion for game'', ''On-Premise'', ''Delhi'', ''Scheduled'', ''40'''||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180830','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54128837863761361043
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES('||wwv_flow.LF||
'(''1007'', ''Open Mic'', ''03/25/2023'', ''laughstore@gmail.com'', ''022-674381'', ''The Laugh Store is giving an opportunity to newe and emerging comedians to try out new material at open mic'', ''On-Premise'', ''Mumbai'', ''Live'', ''50''),'||wwv_flow.LF||
'	(''1008'', ''Sudoku Championship'', ''02/17/2023'', ''sudoku_2023@gmail.com'', ''020-892347'', ''"The championship follows the same rule as Sudoku, and  wil'||
'l have 2 rounds Round 1 ""Qualifier"" and Round 2 ""Finals""."'', ''Virtual'', ''Watsapp'', ''Cancelled'', ''50'')'||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180831','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54128852686893364593
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES(''1007'', ''Open Mic'', ''03/25/2023'', ''laughstore@gmail.com'', ''022-674381'', ''The Laugh Store is giving an opportunity to newe and emerging comedians to try out new material at open mic'', ''On-Premise'', ''Mumbai'', ''Live'', ''50'''||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180831','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54128854995214366615
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES(''1007'', ''Open Mic'', ''03/25/2023'', ''laughstore@gmail.com'', ''022-674381'', ''Laugh Store is giving an opportunity to newe and emerging comedians try out new material at open mic'', ''On-Premise'', ''Mumbai'', ''Live'', ''50'''||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180831','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54129517747225378331
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES (''1008'', ''Sudoku Championship'', ''02/17/2023'', ''sudoku_2023@gmail.com'', ''020-892347'', ''"The championship follows the same rule as Sudoku, and  will have 2 rounds Round 1 ""Qualifier"" and Round 2 ""Finals""."'', ''Virtual'', ''Watsapp'', ''Cancelled'', ''50''))'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180833','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54129743177591383494
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES (''1008'', ''Sudoku Championship'', ''02/17/2023'', ''sudoku_2023@gmail.com'', ''020-892347'', ''"The championship follows the same rule as Sudoku, and  will havE Round 1 ""Qualifier"" and Round 2 ""Finals""."'', ''Virtual'', ''Watsapp'', ''Cancelled'', ''50'');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180834','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54129810185931904909
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES (''1008'', ''Sudoku Championship'', ''02/17/2023'', ''sudoku_2023@gmail.com'', ''020-892347'', ''"The championship follows the same rule as Sudoku, will have Round 1 "Qualifier" and Round 2 "Finals"'', ''Virtual'', ''Watsapp'', ''Cancelled'', ''50'');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180836','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54130957579563389165
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES (''1008'', ''Sudoku Championship'', ''02/17/2023'', ''sudoku_2023@gmail.com'', ''020-892347'', ''"The championship follows the same rule as Sudoku, will have Round 1 ""Qualifier"" and Round 2 ""Finals""."'', ''Virtual'', ''Watsapp'', ''Cancelled'', ''50'');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180835','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54130965552420393538
 ,p_command => 
'INSERT INTO EVENT_DATA VALUES (''1008'', ''Sudoku Championship'', ''02/17/2023'', ''sudoku_2023@gmail.com'', ''020-892347'', ''"The championship follows the same rule as Sudoku, will have Round 1 Qualifier and Round 2 Final'', ''Virtual'', ''Watsapp'', ''Cancelled'', ''50'');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180836','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54131095979491430281
 ,p_command => 
'alter table "EVENT_DATA" modify'||wwv_flow.LF||
'("EVENT_DISCRIPTION" VARCHAR2(1000))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180842','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54131739231430467543
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES('||wwv_flow.LF||
'    (''200'', ''1008'', ''02/10/2023'', ''Ashish Aggarwal'', ''ashish.aggarwal@gmail.com'', ''9820345680''),'||wwv_flow.LF||
'	(''201'', ''1001'', ''02/05/2023'', ''Sumit Kumar'', ''sumit.1291@gmail.com'', ''9236701267''),'||wwv_flow.LF||
'	(''202'', ''1005'', ''01/20/2023'', ''Peeyush Bansal'', ''peeyush_bansal20@gmail.com'', ''9178026731''),'||wwv_flow.LF||
'	(''203'', ''1003'', ''01/12/2023'', ''Shikha Sinha'', ''shikha1990@gmail.com'', ''9812087410''),'||wwv_flow.LF||
''||
'	(''204'', ''1003'', ''01/21/2023'', ''Harshika Chaturvedi'', ''harshika_chaturvedi@gmail.com'', ''9207417841''),'||wwv_flow.LF||
'	(''205'', ''1002'', ''01/22/2023'', ''Supriya Aggarhari'', ''supriya_1520@gmail.com'', ''9340928637''),'||wwv_flow.LF||
'	(''206'', ''1004'', ''02/12/2023'', ''Prateek Mathur'', ''prateek.mathur@gmail.com'', ''9271648910''),'||wwv_flow.LF||
'	(''207'', ''1005'', ''02/10/2023'', ''Himanshu Singh'', ''himanshu1989@gmail.com'', ''9517810946''),'||wwv_flow.LF||
'	(''208'', ''1006'', ''0215/'||
'2023'', ''Shuchita Jain'', ''shuchi_jain1991@gmail.com'', ''9104826121''),'||wwv_flow.LF||
'	(''209'', ''1008'', ''0131/2023'', ''Rajeev Saxena'', ''rajeev_saxena@gmail.com'', ''9654126718''),'||wwv_flow.LF||
'	(''210'', ''1007'', ''02/07/2023'', ''Navin Kumar'', ''navin_kumar_19@gmail.com'', ''9540623913''),'||wwv_flow.LF||
'	(''211'', ''1001'', ''02/02/2023'', ''Manish Srivastava'', ''manish_sri_17@gmail.com'', ''9271849011''),'||wwv_flow.LF||
'	(''212'', ''1003'', ''01/18/2023'', ''Nikhil Arora'', ''nikhil.arora'||
'@gmail.com'', ''9983667102''),'||wwv_flow.LF||
'	(''213'', ''1004'', ''01/28/2023'', ''Aman Gupta'', ''aman_gupta8@gmail.com'', ''9836167321''),'||wwv_flow.LF||
'	(''214'', ''1005'', ''02/17/2023'', ''Harsh Gujral'', ''harsh.gujral@gmail.com'', ''9319287661''),'||wwv_flow.LF||
'	(''215'', ''1007'', ''02/13/2023'', ''Kulpreet Singh'', ''kulpreet_singh@gmail.com'', ''9827649174''),'||wwv_flow.LF||
'	(''216'', ''1002'', ''/0217/2023'', ''Naseem Khan'', ''nassem_khan@gmail.com'', ''9671535418''),'||wwv_flow.LF||
'	(''217'', ''1008'', ''02/'||
'02/2023'', ''Nandini Kapoor'', ''nandini_kapoor12@gmail.com'', ''9180763892''),'||wwv_flow.LF||
'	(''218'', ''1003'', ''01/08/2023'', ''Pooja Gupta'', ''pooja_g1408@gmail.com'', ''9401987364'');'||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180848','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54131757893451472151
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES('||wwv_flow.LF||
'    (''200'', ''1008'', ''02/10/2023'', ''Ashish Aggarwal'', ''ashish.aggarwal@gmail.com'', ''9820345680''),'||wwv_flow.LF||
'	(''201'', ''1001'', ''02/05/2023'', ''Sumit Kumar'', ''sumit.1291@gmail.com'', ''9236701267''),'||wwv_flow.LF||
'	(''202'', ''1005'', ''01/20/2023'', ''Peeyush Bansal'', ''peeyush_bansal20@gmail.com'', ''9178026731''),'||wwv_flow.LF||
'	(''203'', ''1003'', ''01/12/2023'', ''Shikha Sinha'', ''shikha1990@gmail.com'', ''9812087410''),'||wwv_flow.LF||
''||
'	(''204'', ''1003'', ''01/21/2023'', ''Harshika Chaturvedi'', ''harshika_chaturvedi@gmail.com'', ''9207417841''),'||wwv_flow.LF||
'	(''205'', ''1002'', ''01/22/2023'', ''Supriya Aggarhari'', ''supriya_1520@gmail.com'', ''9340928637''),'||wwv_flow.LF||
'	(''206'', ''1004'', ''02/12/2023'', ''Prateek Mathur'', ''prateek.mathur@gmail.com'', ''9271648910''),'||wwv_flow.LF||
'	(''207'', ''1005'', ''02/10/2023'', ''Himanshu Singh'', ''himanshu1989@gmail.com'', ''9517810946''),'||wwv_flow.LF||
'	(''208'', ''1006'', ''02/15'||
'/2023'', ''Shuchita Jain'', ''shuchi_jain1991@gmail.com'', ''9104826121''),'||wwv_flow.LF||
'	(''209'', ''1008'', ''01/31/2023'', ''Rajeev Saxena'', ''rajeev_saxena@gmail.com'', ''9654126718''),'||wwv_flow.LF||
'	(''210'', ''1007'', ''02/07/2023'', ''Navin Kumar'', ''navin_kumar_19@gmail.com'', ''9540623913''),'||wwv_flow.LF||
'	(''211'', ''1001'', ''02/02/2023'', ''Manish Srivastava'', ''manish_sri_17@gmail.com'', ''9271849011''),'||wwv_flow.LF||
'	(''212'', ''1003'', ''01/18/2023'', ''Nikhil Arora'', ''nikhil.aro'||
'ra@gmail.com'', ''9983667102''),'||wwv_flow.LF||
'	(''213'', ''1004'', ''01/28/2023'', ''Aman Gupta'', ''aman_gupta8@gmail.com'', ''9836167321''),'||wwv_flow.LF||
'	(''214'', ''1005'', ''02/17/2023'', ''Harsh Gujral'', ''harsh.gujral@gmail.com'', ''9319287661''),'||wwv_flow.LF||
'	(''215'', ''1007'', ''02/13/2023'', ''Kulpreet Singh'', ''kulpreet_singh@gmail.com'', ''9827649174''),'||wwv_flow.LF||
'	(''216'', ''1002'', ''02/17/2023'', ''Naseem Khan'', ''nassem_khan@gmail.com'', ''9671535418''),'||wwv_flow.LF||
'	(''217'', ''1008'', ''0'||
'2/02/2023'', ''Nandini Kapoor'', ''nandini_kapoor12@gmail.com'', ''9180763892''),'||wwv_flow.LF||
'	(''218'', ''1003'', ''01/08/2023'', ''Pooja Gupta'', ''pooja_g1408@gmail.com'', ''9401987364'')'||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180849','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54131956834306980725
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES('||wwv_flow.LF||
'    (''200'', ''1008'', ''02/10/2023'', ''Ashish Aggarwal'', ''ashish.aggarwal@gmail.com'', ''9820345680''),'||wwv_flow.LF||
'	(''201'', ''1001'', ''02/05/2023'', ''Sumit Kumar'', ''sumit.1291@gmail.com'', ''9236701267''),'||wwv_flow.LF||
'	(''202'', ''1005'', ''01/20/2023'', ''Peeyush Bansal'', ''peeyush_bansal20@gmail.com'', ''9178026731''),'||wwv_flow.LF||
'	(''203'', ''1003'', ''01/12/2023'', ''Shikha Sinha'', ''shikha1990@gmail.com'', ''9812087410''),'||wwv_flow.LF||
''||
'	(''204'', ''1003'', ''01/21/2023'', ''Harshika Chaturvedi'', ''harshika_chaturvedi@gmail.com'', ''9207417841''),'||wwv_flow.LF||
'	(''205'', ''1002'', ''01/22/2023'', ''Supriya Aggarhari'', ''supriya_1520@gmail.com'', ''9340928637''),'||wwv_flow.LF||
'	(''206'', ''1004'', ''02/12/2023'', ''Prateek Mathur'', ''prateek.mathur@gmail.com'', ''9271648910''),'||wwv_flow.LF||
'	(''207'', ''1005'', ''02/10/2023'', ''Himanshu Singh'', ''himanshu1989@gmail.com'', ''9517810946''),'||wwv_flow.LF||
'	(''208'', ''1006'', ''0215/'||
'2023'', ''Shuchita Jain'', ''shuchi_jain1991@gmail.com'', ''9104826121''),'||wwv_flow.LF||
'	(''209'', ''1008'', ''0131/2023'', ''Rajeev Saxena'', ''rajeev_saxena@gmail.com'', ''9654126718''),'||wwv_flow.LF||
'	(''210'', ''1007'', ''02/07/2023'', ''Navin Kumar'', ''navin_kumar_19@gmail.com'', ''9540623913''),'||wwv_flow.LF||
'	(''211'', ''1001'', ''02/02/2023'', ''Manish Srivastava'', ''manish_sri_17@gmail.com'', ''9271849011''),'||wwv_flow.LF||
'	(''212'', ''1003'', ''01/18/2023'', ''Nikhil Arora'', ''nikhil.arora'||
'@gmail.com'', ''9983667102''),'||wwv_flow.LF||
'	(''213'', ''1004'', ''01/28/2023'', ''Aman Gupta'', ''aman_gupta8@gmail.com'', ''9836167321''),'||wwv_flow.LF||
'	(''214'', ''1005'', ''02/17/2023'', ''Harsh Gujral'', ''harsh.gujral@gmail.com'', ''9319287661''),'||wwv_flow.LF||
'	(''215'', ''1007'', ''02/13/2023'', ''Kulpreet Singh'', ''kulpreet_singh@gmail.com'', ''9827649174''),'||wwv_flow.LF||
'	(''216'', ''1002'', ''/0217/2023'', ''Naseem Khan'', ''nassem_khan@gmail.com'', ''9671535418''),'||wwv_flow.LF||
'	(''217'', ''1008'', ''02/'||
'02/2023'', ''Nandini Kapoor'', ''nandini_kapoor12@gmail.com'', ''9180763892''),'||wwv_flow.LF||
'	(''218'', ''1003'', ''01/08/2023'', ''Pooja Gupta'', ''pooja_g1408@gmail.com'', ''9401987364'')'||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180848','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54131961742552982342
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES('||wwv_flow.LF||
'    (''200'', ''1008'', ''02/10/2023'', ''Ashish Aggarwal'', ''ashish.aggarwal@gmail.com'', ''9820345680''),'||wwv_flow.LF||
'	(''201'', ''1001'', ''02/05/2023'', ''Sumit Kumar'', ''sumit.1291@gmail.com'', ''9236701267''),'||wwv_flow.LF||
'	(''202'', ''1005'', ''01/20/2023'', ''Peeyush Bansal'', ''peeyush_bansal20@gmail.com'', ''9178026731''),'||wwv_flow.LF||
'	(''203'', ''1003'', ''01/12/2023'', ''Shikha Sinha'', ''shikha1990@gmail.com'', ''9812087410''),'||wwv_flow.LF||
''||
'	(''204'', ''1003'', ''01/21/2023'', ''Harshika Chaturvedi'', ''harshika_chaturvedi@gmail.com'', ''9207417841''),'||wwv_flow.LF||
'	(''205'', ''1002'', ''01/22/2023'', ''Supriya Aggarhari'', ''supriya_1520@gmail.com'', ''9340928637''),'||wwv_flow.LF||
'	(''206'', ''1004'', ''02/12/2023'', ''Prateek Mathur'', ''prateek.mathur@gmail.com'', ''9271648910''),'||wwv_flow.LF||
'	(''207'', ''1005'', ''02/10/2023'', ''Himanshu Singh'', ''himanshu1989@gmail.com'', ''9517810946''),'||wwv_flow.LF||
'	(''208'', ''1006'', ''0215/'||
'2023'', ''Shuchita Jain'', ''shuchi_jain1991@gmail.com'', ''9104826121''),'||wwv_flow.LF||
'	(''209'', ''1008'', ''01/31/2023'', ''Rajeev Saxena'', ''rajeev_saxena@gmail.com'', ''9654126718''),'||wwv_flow.LF||
'	(''210'', ''1007'', ''02/07/2023'', ''Navin Kumar'', ''navin_kumar_19@gmail.com'', ''9540623913''),'||wwv_flow.LF||
'	(''211'', ''1001'', ''02/02/2023'', ''Manish Srivastava'', ''manish_sri_17@gmail.com'', ''9271849011''),'||wwv_flow.LF||
'	(''212'', ''1003'', ''01/18/2023'', ''Nikhil Arora'', ''nikhil.aror'||
'a@gmail.com'', ''9983667102''),'||wwv_flow.LF||
'	(''213'', ''1004'', ''01/28/2023'', ''Aman Gupta'', ''aman_gupta8@gmail.com'', ''9836167321''),'||wwv_flow.LF||
'	(''214'', ''1005'', ''02/17/2023'', ''Harsh Gujral'', ''harsh.gujral@gmail.com'', ''9319287661''),'||wwv_flow.LF||
'	(''215'', ''1007'', ''02/13/2023'', ''Kulpreet Singh'', ''kulpreet_singh@gmail.com'', ''9827649174''),'||wwv_flow.LF||
'	(''216'', ''1002'', ''/0217/2023'', ''Naseem Khan'', ''nassem_khan@gmail.com'', ''9671535418''),'||wwv_flow.LF||
'	(''217'', ''1008'', ''02'||
'/02/2023'', ''Nandini Kapoor'', ''nandini_kapoor12@gmail.com'', ''9180763892''),'||wwv_flow.LF||
'	(''218'', ''1003'', ''01/08/2023'', ''Pooja Gupta'', ''pooja_g1408@gmail.com'', ''9401987364'')'||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180849','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54131967954601983979
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES('||wwv_flow.LF||
'    (''200'', ''1008'', ''02/10/2023'', ''Ashish Aggarwal'', ''ashish.aggarwal@gmail.com'', ''9820345680''),'||wwv_flow.LF||
'	(''201'', ''1001'', ''02/05/2023'', ''Sumit Kumar'', ''sumit.1291@gmail.com'', ''9236701267''),'||wwv_flow.LF||
'	(''202'', ''1005'', ''01/20/2023'', ''Peeyush Bansal'', ''peeyush_bansal20@gmail.com'', ''9178026731''),'||wwv_flow.LF||
'	(''203'', ''1003'', ''01/12/2023'', ''Shikha Sinha'', ''shikha1990@gmail.com'', ''9812087410''),'||wwv_flow.LF||
''||
'	(''204'', ''1003'', ''01/21/2023'', ''Harshika Chaturvedi'', ''harshika_chaturvedi@gmail.com'', ''9207417841''),'||wwv_flow.LF||
'	(''205'', ''1002'', ''01/22/2023'', ''Supriya Aggarhari'', ''supriya_1520@gmail.com'', ''9340928637''),'||wwv_flow.LF||
'	(''206'', ''1004'', ''02/12/2023'', ''Prateek Mathur'', ''prateek.mathur@gmail.com'', ''9271648910''),'||wwv_flow.LF||
'	(''207'', ''1005'', ''02/10/2023'', ''Himanshu Singh'', ''himanshu1989@gmail.com'', ''9517810946''),'||wwv_flow.LF||
'	(''208'', ''1006'', ''02/15'||
'/2023'', ''Shuchita Jain'', ''shuchi_jain1991@gmail.com'', ''9104826121''),'||wwv_flow.LF||
'	(''209'', ''1008'', ''01/31/2023'', ''Rajeev Saxena'', ''rajeev_saxena@gmail.com'', ''9654126718''),'||wwv_flow.LF||
'	(''210'', ''1007'', ''02/07/2023'', ''Navin Kumar'', ''navin_kumar_19@gmail.com'', ''9540623913''),'||wwv_flow.LF||
'	(''211'', ''1001'', ''02/02/2023'', ''Manish Srivastava'', ''manish_sri_17@gmail.com'', ''9271849011''),'||wwv_flow.LF||
'	(''212'', ''1003'', ''01/18/2023'', ''Nikhil Arora'', ''nikhil.aro'||
'ra@gmail.com'', ''9983667102''),'||wwv_flow.LF||
'	(''213'', ''1004'', ''01/28/2023'', ''Aman Gupta'', ''aman_gupta8@gmail.com'', ''9836167321''),'||wwv_flow.LF||
'	(''214'', ''1005'', ''02/17/2023'', ''Harsh Gujral'', ''harsh.gujral@gmail.com'', ''9319287661''),'||wwv_flow.LF||
'	(''215'', ''1007'', ''02/13/2023'', ''Kulpreet Singh'', ''kulpreet_singh@gmail.com'', ''9827649174''),'||wwv_flow.LF||
'	(''216'', ''1002'', ''/0217/2023'', ''Naseem Khan'', ''nassem_khan@gmail.com'', ''9671535418''),'||wwv_flow.LF||
'	(''217'', ''1008'', ''0'||
'2/02/2023'', ''Nandini Kapoor'', ''nandini_kapoor12@gmail.com'', ''9180763892''),'||wwv_flow.LF||
'	(''218'', ''1003'', ''01/08/2023'', ''Pooja Gupta'', ''pooja_g1408@gmail.com'', ''9401987364'')'||wwv_flow.LF||
');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180849','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54132334603739503618
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES'||wwv_flow.LF||
'    (''200'', ''1008'', ''02/10/2023'', ''Ashish Aggarwal'', ''ashish.aggarwal@gmail.com'', ''9820345680''),'||wwv_flow.LF||
'	(''201'', ''1001'', ''02/05/2023'', ''Sumit Kumar'', ''sumit.1291@gmail.com'', ''9236701267''),'||wwv_flow.LF||
'	(''202'', ''1005'', ''01/20/2023'', ''Peeyush Bansal'', ''peeyush_bansal20@gmail.com'', ''9178026731''),'||wwv_flow.LF||
'	(''203'', ''1003'', ''01/12/2023'', ''Shikha Sinha'', ''shikha1990@gmail.com'', ''9812087410''),'||wwv_flow.LF||
'	'||
'(''204'', ''1003'', ''01/21/2023'', ''Harshika Chaturvedi'', ''harshika_chaturvedi@gmail.com'', ''9207417841''),'||wwv_flow.LF||
'	(''205'', ''1002'', ''01/22/2023'', ''Supriya Aggarhari'', ''supriya_1520@gmail.com'', ''9340928637''),'||wwv_flow.LF||
'	(''206'', ''1004'', ''02/12/2023'', ''Prateek Mathur'', ''prateek.mathur@gmail.com'', ''9271648910''),'||wwv_flow.LF||
'	(''207'', ''1005'', ''02/10/2023'', ''Himanshu Singh'', ''himanshu1989@gmail.com'', ''9517810946''),'||wwv_flow.LF||
'	(''208'', ''1006'', ''02/15/'||
'2023'', ''Shuchita Jain'', ''shuchi_jain1991@gmail.com'', ''9104826121''),'||wwv_flow.LF||
'	(''209'', ''1008'', ''01/31/2023'', ''Rajeev Saxena'', ''rajeev_saxena@gmail.com'', ''9654126718''),'||wwv_flow.LF||
'	(''210'', ''1007'', ''02/07/2023'', ''Navin Kumar'', ''navin_kumar_19@gmail.com'', ''9540623913''),'||wwv_flow.LF||
'	(''211'', ''1001'', ''02/02/2023'', ''Manish Srivastava'', ''manish_sri_17@gmail.com'', ''9271849011''),'||wwv_flow.LF||
'	(''212'', ''1003'', ''01/18/2023'', ''Nikhil Arora'', ''nikhil.aror'||
'a@gmail.com'', ''9983667102''),'||wwv_flow.LF||
'	(''213'', ''1004'', ''01/28/2023'', ''Aman Gupta'', ''aman_gupta8@gmail.com'', ''9836167321''),'||wwv_flow.LF||
'	(''214'', ''1005'', ''02/17/2023'', ''Harsh Gujral'', ''harsh.gujral@gmail.com'', ''9319287661''),'||wwv_flow.LF||
'	(''215'', ''1007'', ''02/13/2023'', ''Kulpreet Singh'', ''kulpreet_singh@gmail.com'', ''9827649174''),'||wwv_flow.LF||
'	(''216'', ''1002'', ''02/17/2023'', ''Naseem Khan'', ''nassem_khan@gmail.com'', ''9671535418''),'||wwv_flow.LF||
'	(''217'', ''1008'', ''02'||
'/02/2023'', ''Nandini Kapoor'', ''nandini_kapoor12@gmail.com'', ''9180763892''),'||wwv_flow.LF||
'	(''218'', ''1003'', ''01/08/2023'', ''Pooja Gupta'', ''pooja_g1408@gmail.com'', ''9401987364'');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180854','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54132335436113504508
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES'||wwv_flow.LF||
'    (''200'', ''1008'', ''02/10/2023'', ''Ashish Aggarwal'', ''ashish.aggarwal@gmail.com'', ''9820345680''),'||wwv_flow.LF||
'	(''201'', ''1001'', ''02/05/2023'', ''Sumit Kumar'', ''sumit.1291@gmail.com'', ''9236701267''),'||wwv_flow.LF||
'	(''202'', ''1005'', ''01/20/2023'', ''Peeyush Bansal'', ''peeyush_bansal20@gmail.com'', ''9178026731''),'||wwv_flow.LF||
'	(''203'', ''1003'', ''01/12/2023'', ''Shikha Sinha'', ''shikha1990@gmail.com'', ''9812087410''),'||wwv_flow.LF||
'	'||
'(''204'', ''1003'', ''01/21/2023'', ''Harshika Chaturvedi'', ''harshika_chaturvedi@gmail.com'', ''9207417841''),'||wwv_flow.LF||
'	(''205'', ''1002'', ''01/22/2023'', ''Supriya Aggarhari'', ''supriya_1520@gmail.com'', ''9340928637''),'||wwv_flow.LF||
'	(''206'', ''1004'', ''02/12/2023'', ''Prateek Mathur'', ''prateek.mathur@gmail.com'', ''9271648910''),'||wwv_flow.LF||
'	(''207'', ''1005'', ''02/10/2023'', ''Himanshu Singh'', ''himanshu1989@gmail.com'', ''9517810946''),'||wwv_flow.LF||
'	(''208'', ''1006'', ''02/15/'||
'2023'', ''Shuchita Jain'', ''shuchi_jain1991@gmail.com'', ''9104826121''),'||wwv_flow.LF||
'	(''209'', ''1008'', ''01/31/2023'', ''Rajeev Saxena'', ''rajeev_saxena@gmail.com'', ''9654126718''),'||wwv_flow.LF||
'	(''210'', ''1007'', ''02/07/2023'', ''Navin Kumar'', ''navin_kumar_19@gmail.com'', ''9540623913''),'||wwv_flow.LF||
'	(''211'', ''1001'', ''02/02/2023'', ''Manish Srivastava'', ''manish_sri_17@gmail.com'', ''9271849011''),'||wwv_flow.LF||
'	(''212'', ''1003'', ''01/18/2023'', ''Nikhil Arora'', ''nikhil.aror'||
'a@gmail.com'', ''9983667102''),'||wwv_flow.LF||
'	(''213'', ''1004'', ''01/28/2023'', ''Aman Gupta'', ''aman_gupta8@gmail.com'', ''9836167321''),'||wwv_flow.LF||
'	(''214'', ''1005'', ''02/17/2023'', ''Harsh Gujral'', ''harsh.gujral@gmail.com'', ''9319287661''),'||wwv_flow.LF||
'	(''215'', ''1007'', ''02/13/2023'', ''Kulpreet Singh'', ''kulpreet_singh@gmail.com'', ''9827649174''),'||wwv_flow.LF||
'	(''216'', ''1002'', ''02/17/2023'', ''Naseem Khan'', ''nassem_khan@gmail.com'', ''9671535418''),'||wwv_flow.LF||
'	(''217'', ''1008'', ''02'||
'/02/2023'', ''Nandini Kapoor'', ''nandini_kapoor12@gmail.com'', ''9180763892''),'||wwv_flow.LF||
'	(''218'', ''1003'', ''01/08/2023'', ''Pooja Gupta'', ''pooja_g1408@gmail.com'', ''9401987364''));'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180854','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54132340982768506315
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES('||wwv_flow.LF||
'    (''200'', ''1008'', ''02/10/2023'', ''Ashish Aggarwal'', ''ashish.aggarwal@gmail.com'', ''9820345680''),'||wwv_flow.LF||
'	(''201'', ''1001'', ''02/05/2023'', ''Sumit Kumar'', ''sumit.1291@gmail.com'', ''9236701267''),'||wwv_flow.LF||
'	(''202'', ''1005'', ''01/20/2023'', ''Peeyush Bansal'', ''peeyush_bansal20@gmail.com'', ''9178026731''),'||wwv_flow.LF||
'	(''203'', ''1003'', ''01/12/2023'', ''Shikha Sinha'', ''shikha1990@gmail.com'', ''9812087410''),'||wwv_flow.LF||
''||
'	(''204'', ''1003'', ''01/21/2023'', ''Harshika Chaturvedi'', ''harshika_chaturvedi@gmail.com'', ''9207417841''),'||wwv_flow.LF||
'	(''205'', ''1002'', ''01/22/2023'', ''Supriya Aggarhari'', ''supriya_1520@gmail.com'', ''9340928637''),'||wwv_flow.LF||
'	(''206'', ''1004'', ''02/12/2023'', ''Prateek Mathur'', ''prateek.mathur@gmail.com'', ''9271648910''),'||wwv_flow.LF||
'	(''207'', ''1005'', ''02/10/2023'', ''Himanshu Singh'', ''himanshu1989@gmail.com'', ''9517810946''),'||wwv_flow.LF||
'	(''208'', ''1006'', ''02/15'||
'/2023'', ''Shuchita Jain'', ''shuchi_jain1991@gmail.com'', ''9104826121''),'||wwv_flow.LF||
'	(''209'', ''1008'', ''01/31/2023'', ''Rajeev Saxena'', ''rajeev_saxena@gmail.com'', ''9654126718''),'||wwv_flow.LF||
'	(''210'', ''1007'', ''02/07/2023'', ''Navin Kumar'', ''navin_kumar_19@gmail.com'', ''9540623913''),'||wwv_flow.LF||
'	(''211'', ''1001'', ''02/02/2023'', ''Manish Srivastava'', ''manish_sri_17@gmail.com'', ''9271849011''),'||wwv_flow.LF||
'	(''212'', ''1003'', ''01/18/2023'', ''Nikhil Arora'', ''nikhil.aro'||
'ra@gmail.com'', ''9983667102''),'||wwv_flow.LF||
'	(''213'', ''1004'', ''01/28/2023'', ''Aman Gupta'', ''aman_gupta8@gmail.com'', ''9836167321''),'||wwv_flow.LF||
'	(''214'', ''1005'', ''02/17/2023'', ''Harsh Gujral'', ''harsh.gujral@gmail.com'', ''9319287661''),'||wwv_flow.LF||
'	(''215'', ''1007'', ''02/13/2023'', ''Kulpreet Singh'', ''kulpreet_singh@gmail.com'', ''9827649174''),'||wwv_flow.LF||
'	(''216'', ''1002'', ''02/17/2023'', ''Naseem Khan'', ''nassem_khan@gmail.com'', ''9671535418''),'||wwv_flow.LF||
'	(''217'', ''1008'', ''0'||
'2/02/2023'', ''Nandini Kapoor'', ''nandini_kapoor12@gmail.com'', ''9180763892''),'||wwv_flow.LF||
'	(''218'', ''1003'', ''01/08/2023'', ''Pooja Gupta'', ''pooja_g1408@gmail.com'', ''9401987364''));'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54135993939323161031
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'    (''200'', ''1008'', ''02/10/2023'', ''Ashish Aggarwal'', ''ashish.aggarwal@gmail.com'', ''9820345680''),'||wwv_flow.LF||
'	(''201'', ''1001'', ''02/05/2023'', ''Sumit Kumar'', ''sumit.1291@gmail.com'', ''9236701267''),'||wwv_flow.LF||
'	(''202'', ''1005'', ''01/20/2023'', ''Peeyush Bansal'', ''peeyush_bansal20@gmail.com'', ''9178026731''),'||wwv_flow.LF||
'	(''203'', ''1003'', ''01/12/2023'', ''Shikha Sinha'', ''shikha1990@gmail.com'', ''9812087410''),'||
''||wwv_flow.LF||
'	(''204'', ''1003'', ''01/21/2023'', ''Harshika Chaturvedi'', ''harshika_chaturvedi@gmail.com'', ''9207417841''),'||wwv_flow.LF||
'	(''205'', ''1002'', ''01/22/2023'', ''Supriya Aggarhari'', ''supriya_1520@gmail.com'', ''9340928637''),'||wwv_flow.LF||
'	(''206'', ''1004'', ''02/12/2023'', ''Prateek Mathur'', ''prateek.mathur@gmail.com'', ''9271648910''),'||wwv_flow.LF||
'	(''207'', ''1005'', ''02/10/2023'', ''Himanshu Singh'', ''himanshu1989@gmail.com'', ''9517810946''),'||wwv_flow.LF||
'	(''208'', ''1006'', ''02/1'||
'5/2023'', ''Shuchita Jain'', ''shuchi_jain1991@gmail.com'', ''9104826121''),'||wwv_flow.LF||
'	(''209'', ''1008'', ''01/31/2023'', ''Rajeev Saxena'', ''rajeev_saxena@gmail.com'', ''9654126718''),'||wwv_flow.LF||
'	(''210'', ''1007'', ''02/07/2023'', ''Navin Kumar'', ''navin_kumar_19@gmail.com'', ''9540623913''),'||wwv_flow.LF||
'	(''211'', ''1001'', ''02/02/2023'', ''Manish Srivastava'', ''manish_sri_17@gmail.com'', ''9271849011''),'||wwv_flow.LF||
'	(''212'', ''1003'', ''01/18/2023'', ''Nikhil Arora'', ''nikhil.ar'||
'ora@gmail.com'', ''9983667102''),'||wwv_flow.LF||
'	(''213'', ''1004'', ''01/28/2023'', ''Aman Gupta'', ''aman_gupta8@gmail.com'', ''9836167321''),'||wwv_flow.LF||
'	(''214'', ''1005'', ''02/17/2023'', ''Harsh Gujral'', ''harsh.gujral@gmail.com'', ''9319287661''),'||wwv_flow.LF||
'	(''215'', ''1007'', ''02/13/2023'', ''Kulpreet Singh'', ''kulpreet_singh@gmail.com'', ''9827649174''),'||wwv_flow.LF||
'	(''216'', ''1002'', ''02/17/2023'', ''Naseem Khan'', ''nassem_khan@gmail.com'', ''9671535418''),'||wwv_flow.LF||
'	(''217'', ''1008'', '''||
'02/02/2023'', ''Nandini Kapoor'', ''nandini_kapoor12@gmail.com'', ''9180763892''),'||wwv_flow.LF||
'	(''218'', ''1003'', ''01/08/2023'', ''Pooja Gupta'', ''pooja_g1408@gmail.com'', ''9401987364''));'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180918','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136112218425650373
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'    (''200'', ''1008'', ''02/10/2023'', ''Ashish Aggarwal'', ''ashish.aggarwal@gmail.com'', ''9820345680''));'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180919','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136119797344651619
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'    ''200'', ''1008'', ''02/10/2023'', ''Ashish Aggarwal'', ''ashish.aggarwal@gmail.com'', ''9820345680'');'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180919','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136159981755655770
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'    ''201'', ''1001'', ''02/05/2023'', ''Sumit Kumar'', ''sumit.1291@gmail.com'', ''9236701267'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180920','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136249283498174037
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'    ''203'', ''1003'', ''01/12/2023'', ''Shikha Sinha'', ''shikha1990@gmail.com'', ''9812087410'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180921','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136261285048178155
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'   ''204'', ''1003'', ''01/21/2023'', ''Harshika Chaturvedi'', ''harshika_chaturvedi@gmail.com'', ''9207417841'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180921','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136267638176182192
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''205'', ''1002'', ''01/22/2023'', ''Supriya Aggarhari'', ''supriya_1520@gmail.com'', ''9340928637'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180922','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136285200929187196
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''206'', ''1004'', ''02/12/2023'', ''Prateek Mathur'', ''prateek.mathur@gmail.com'', ''9271648910'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136601306968658223
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'    ''202'', ''1005'', ''01/20/2023'', ''Peeyush Bansal'', ''peeyush_bansal20@gmail.com'', ''9178026731'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180920','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136726048676677624
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''207'', ''1005'', ''02/10/2023'', ''Himanshu Singh'', ''himanshu1989@gmail.com'', ''9517810946'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136731223547679967
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''208'', ''1006'', ''02/15/2023'', ''Shuchita Jain'', ''shuchi_jain1991@gmail.com'', ''9104826121'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180924','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136765283732685069
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''210'', ''1007'', ''02/07/2023'', ''Navin Kumar'', ''navin_kumar_19@gmail.com'', ''9540623913'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136774187378686878
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''211'', ''1001'', ''02/02/2023'', ''Manish Srivastava'', ''manish_sri_17@gmail.com'', ''9271849011'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136783998871688734
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''212'', ''1003'', ''01/18/2023'', ''Nikhil Arora'', ''nikhil.arora@gmail.com'', ''9983667102'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136789803510692047
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''213'', ''1004'', ''01/28/2023'', ''Aman Gupta'', ''aman_gupta8@gmail.com'', ''9836167321'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136799028419696676
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''214'', ''1005'', ''02/17/2023'', ''Harsh Gujral'', ''harsh.gujral@gmail.com'', ''9319287661'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180927','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54136947323532195974
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''209'', ''1008'', ''01/31/2023'', ''Rajeev Saxena'', ''rajeev_saxena@gmail.com'', ''9654126718'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180924','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54138498858185706841
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''216'', ''1002'', ''02/17/2023'', ''Naseem Khan'', ''nassem_khan@gmail.com'', ''9671535418'')'||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180928','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54138505680752707404
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''216'', ''1002'', ''02/17/2023'', ''Naseem Khan'', ''nassem_khan@gmail.com'', ''9671535418'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180928','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54138509505573709423
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''217'', ''1008'', ''02/02/2023'', ''Nandini Kapoor'', ''nandini_kapoor12@gmail.com'', ''9180763892'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180929','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54137294366218224396
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''218'', ''1003'', ''01/08/2023'', ''Pooja Gupta'', ''pooja_g1408@gmail.com'', ''9401987364'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180929','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_EVENTMANAGEMENT');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 54137277289396214274
 ,p_command => 
'INSERT INTO PARTICIPANTS_DATA VALUES ('||wwv_flow.LF||
'''215'', ''1007'', ''02/13/2023'', ''Kulpreet Singh'', ''kulpreet_singh@gmail.com'', ''9827649174'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'NAMRATH.SHETTY205@GMAIL.COM'
    ,p_created_on => to_date('202302180927','YYYYMMDDHH24MI')
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
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'NAMRATH.SHETTY205@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220200',
    p_access_date => to_date('202302180841','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
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
-- Exported 09:32 Saturday February 18, 2023 by: NAMRATH.SHETTY205@GMAIL.COM
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 09:32 Saturday February 18, 2023 by: NAMRATH.SHETTY205@GMAIL.COM
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
