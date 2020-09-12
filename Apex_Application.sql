prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.04.04'
,p_release=>'18.1.0.00.45'
,p_default_workspace_id=>100001
,p_default_application_id=>135
,p_default_owner=>'HR'
);
end;
/
 
prompt APPLICATION 135 - TEST
--
-- Application Export:
--   Application:     135
--   Name:            TEST
--   Date and Time:   18:40 Friday July 3, 2020
--   Exported By:     WAIS.MOHAMED
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.1.0.00.45
--   Instance ID:     220739956009692
--

-- Application Statistics:
--   Pages:                     27
--     Items:                   44
--     Validations:              1
--     Processes:               21
--     Regions:                 62
--     Buttons:                 41
--     Dynamic Actions:         17
--   Shared Components:
--     Logic:
--       App Settings:           2
--       Build Options:          6
--     Navigation:
--       Lists:                  7
--       Breadcrumbs:            1
--         Entries:              3
--     Security:
--       Authentication:         1
--       Authorization:          3
--       ACL Roles:              3
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                7
--         List:                12
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:              10
--       LOVs:                   9
--       Shortcuts:              1
--     Globalization:
--     Reports:
--     E-Mail:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,135)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'HR')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'TEST')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'135')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'8FC3CBECBF0C7C4CDE6E560D34A2B441CED02CE64B0588B09B87EBB33E436CA9'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY'
,p_timestamp_format=>'DD-MON-YYYY'
,p_timestamp_tz_format=>'DD-MON-YYYY'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2020.06.29.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(77076011221686693)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:TEST'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_api.id(77201331609686853)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'TEST'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200703184005'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(77076831155686697)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77211577550686915)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77213107448686918)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Duplicate Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-files-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77225271442686943)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Customer Merged'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77417783670761385)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Merge Customer'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77428164827563617)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Delete After Merge'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77396840325687221)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_api.id(77201299347686853)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(77196699073686831)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77393309202687219)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(77198770545686849)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77393624431687219)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(77199261994686849)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77394130926687219)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(77393624431687219)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(77199261994686849)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77394588214687220)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(77393624431687219)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77394915682687220)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&SESSION.::&DEBUG.:10060'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(77393624431687219)
,p_required_patch=>wwv_flow_api.id(77199261994686849)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77395246084687220)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77395758577687220)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(77395246084687220)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77396143170687220)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(77395246084687220)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(77255855115687040)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77256202319687040)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Duplicate Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-files-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77256684837687040)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Customer Merged'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77257039836687041)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Merge & Delete'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77422481297818784)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Merge Customer'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(77397924396687222)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(77198906064686849)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77398398630687222)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010:::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_api.id(77198906064686849)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77398707353687222)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&SESSION.::&DEBUG.:10020:::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_api.id(77199310647686849)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(77399084013687222)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(77198641042686849)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77399421711687223)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&SESSION.::&DEBUG.:10030:::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77399845254687223)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:10031:::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77400227523687223)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&SESSION.::&DEBUG.:10032:::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77400620336687223)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&SESSION.::&DEBUG.:10033:::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77401040642687223)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&SESSION.::&DEBUG.:RIR,10034:::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(77401382406687224)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(77198522500686849)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77401755484687224)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77402150662687224)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(77402444893687224)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(77198770545686849)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77402875381687224)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&SESSION.::&DEBUG.:10053:::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222076696577426F783D223020302036342036';
wwv_flow_api.g_varchar2_table(2) := '34223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A75726C282372616469616C2D6772616469656E74293B7D2E636C732D327B6F7061636974793A302E313B7D2E636C732D332C2E636C732D347B66696C6C3A236666663B7D2E636C73';
wwv_flow_api.g_varchar2_table(3) := '2D337B6F7061636974793A302E363B7D3C2F7374796C653E3C72616469616C4772616469656E742069643D2272616469616C2D6772616469656E74222063783D223332222063793D222E30352220723D22363422206772616469656E74556E6974733D22';
wwv_flow_api.g_varchar2_table(4) := '7573657253706163654F6E557365223E3C73746F70206F66667365743D2230222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D22302E3135222F3E3C73746F70206F66667365743D222E35222073746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(5) := '3D2223666666222073746F702D6F7061636974793D22302E31222F3E3C73746F70206F66667365743D2231222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D2230222F3E3C2F72616469616C4772616469656E743E3C73';
wwv_flow_api.g_varchar2_table(6) := '796D626F6C2069643D22616D6269656E742D6C69676874696E67222076696577426F783D22302030203634203634223E3C7061746820636C6173733D22636C732D312220643D224D302030683634763634682D36347A222F3E3C2F73796D626F6C3E3C2F';
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223453935423534222F3E3C672069643D2269636F6E73223E3C706174682063';
wwv_flow_api.g_varchar2_table(8) := '6C6173733D22636C732D322220643D224D313920343668357631682D357A4D323620343668357631682D357A4D333320343668357631682D357A4D343020343668357631682D357A222F3E3C7061746820636C6173733D22636C732D332220643D224D31';
wwv_flow_api.g_varchar2_table(9) := '3920333868357638682D357A4D32362033326835763134682D357A4D33332033326835763134682D357A4D34302032376835763139682D357A222F3E3C6720636C6173733D22636C732D32223E3C636972636C652063783D2234322E35222063793D2232';
wwv_flow_api.g_varchar2_table(10) := '302E352220723D22312E35222F3E3C636972636C652063783D2233352E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D2232382E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D22';
wwv_flow_api.g_varchar2_table(11) := '32312E35222063793D2233312E352220723D22312E35222F3E3C7061746820643D224D32312E3832352033312E3837396C2D2E36352D2E37353820372E31342D362E31323168372E3032356C362E3836392D342E3930372E3538322E3831342D372E3133';
wwv_flow_api.g_varchar2_table(12) := '3120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C636972636C6520636C6173733D22636C732D34222063783D2234322E35222063793D2231392E352220723D22312E35222F3E3C636972636C6520636C6173733D22';
wwv_flow_api.g_varchar2_table(13) := '636C732D34222063783D2233352E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C6173733D22636C732D34222063783D2232382E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C617373';
wwv_flow_api.g_varchar2_table(14) := '3D22636C732D34222063783D2232312E35222063793D2233302E352220723D22312E35222F3E3C7061746820636C6173733D22636C732D342220643D224D32312E3832352033302E3837396C2D2E36352D2E37353820372E31342D362E31323168372E30';
wwv_flow_api.g_varchar2_table(15) := '32356C362E3836392D342E3930372E3538322E3831342D372E31333120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C7573652077696474683D22363422206865696768743D2236342220786C696E6B3A687265663D';
wwv_flow_api.g_varchar2_table(16) := '2223616D6269656E742D6C69676874696E67222069643D226C69676874696E67222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(77198074318686844)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234539354235343B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(77198317253686847)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77073923022686689)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77074218058686690)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77074557880686691)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77074821800686691)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77075166895686691)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77075495695686692)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77075750734686692)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(77201299347686853)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return apex_acl.has_user_role (',
'     p_application_id=>:APP_ID, ',
'     p_user_name => :APP_USER, ',
'     p_role_static_id => ''ADMINISTRATOR'');'))
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(77201331609686853)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(77201404570686853)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_acl.has_user_role (',
'  p_application_id=>:APP_ID, ',
'  p_user_name => :APP_USER, ',
'  p_role_static_id => ''ADMINISTRATOR'') or',
'  apex_acl.has_user_role (',
'    p_application_id=>:APP_ID,',
'    p_user_name=> :APP_USER,',
'    p_role_static_id=> ''CONTRIBUTOR'') then',
'    return true;',
'else',
'    return false;',
'end if;'))
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(77200849875686852)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(77201017750686853)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(77201146427686853)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_api.create_app_setting(
 p_id=>wwv_flow_api.id(77202547222686862)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_api.id(77198770545686849)
);
wwv_flow_api.create_app_setting(
 p_id=>wwv_flow_api.id(77202812308686863)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_api.id(77198522500686849)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(77339400527687170)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(77267529544687056)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'    s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and t.is_current = ''Yes''',
'order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(77347209367687175)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_api.id(77347209367687175)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77347538955687175)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(77366074526687195)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_api.id(77366074526687195)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77366357275687195)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77366700191687195)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77367160390687195)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(77376449330687202)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(77376449330687202)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77376738978687202)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77377113773687202)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77377584442687202)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77377968958687203)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(77206715473686899)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(77206715473686899)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77207121576686900)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(77288046513687101)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(77268206943687058)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_api.id(77268206943687058)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77268525339687058)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(77323566085687156)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_api.id(77323566085687156)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77323846225687156)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(77324299968687156)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(77203156589686863)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(77076305690686695)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77076510185686696)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77221610547686938)
,p_short_name=>'Duplicate Customers'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77397723906687222)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&SESSION.'
,p_page_id=>10000
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77077122244686718)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77077459336686727)
,p_page_template_id=>wwv_flow_api.id(77077122244686718)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77077739999686728)
,p_page_template_id=>wwv_flow_api.id(77077122244686718)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77078028869686728)
,p_page_template_id=>wwv_flow_api.id(77077122244686718)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77078388454686728)
,p_page_template_id=>wwv_flow_api.id(77077122244686718)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77078628443686728)
,p_page_template_id=>wwv_flow_api.id(77077122244686718)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77078921361686728)
,p_page_template_id=>wwv_flow_api.id(77077122244686718)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77079286989686729)
,p_page_template_id=>wwv_flow_api.id(77077122244686718)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77079529245686729)
,p_page_template_id=>wwv_flow_api.id(77077122244686718)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77079889859686729)
,p_page_template_id=>wwv_flow_api.id(77077122244686718)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77080207731686731)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77080531418686732)
,p_page_template_id=>wwv_flow_api.id(77080207731686731)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77080816227686732)
,p_page_template_id=>wwv_flow_api.id(77080207731686731)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77081111212686732)
,p_page_template_id=>wwv_flow_api.id(77080207731686731)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77081766643686733)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77082016461686733)
,p_page_template_id=>wwv_flow_api.id(77081766643686733)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77082316003686733)
,p_page_template_id=>wwv_flow_api.id(77081766643686733)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77082561910686733)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77082877534686734)
,p_page_template_id=>wwv_flow_api.id(77082561910686733)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77083131322686734)
,p_page_template_id=>wwv_flow_api.id(77082561910686733)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77083450138686734)
,p_page_template_id=>wwv_flow_api.id(77082561910686733)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77084050604686734)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77084338602686734)
,p_page_template_id=>wwv_flow_api.id(77084050604686734)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77084688813686734)
,p_page_template_id=>wwv_flow_api.id(77084050604686734)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77084946168686734)
,p_page_template_id=>wwv_flow_api.id(77084050604686734)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77085271778686734)
,p_page_template_id=>wwv_flow_api.id(77084050604686734)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77085527996686734)
,p_page_template_id=>wwv_flow_api.id(77084050604686734)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77085880335686735)
,p_page_template_id=>wwv_flow_api.id(77084050604686734)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77086138703686735)
,p_page_template_id=>wwv_flow_api.id(77084050604686734)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77086400492686735)
,p_page_template_id=>wwv_flow_api.id(77084050604686734)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77086872180686735)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77087182045686735)
,p_page_template_id=>wwv_flow_api.id(77086872180686735)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77087460858686735)
,p_page_template_id=>wwv_flow_api.id(77086872180686735)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77087765402686735)
,p_page_template_id=>wwv_flow_api.id(77086872180686735)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77088060553686736)
,p_page_template_id=>wwv_flow_api.id(77086872180686735)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77088346096686736)
,p_page_template_id=>wwv_flow_api.id(77086872180686735)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77088602106686736)
,p_page_template_id=>wwv_flow_api.id(77086872180686735)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77088929958686736)
,p_page_template_id=>wwv_flow_api.id(77086872180686735)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77089299853686736)
,p_page_template_id=>wwv_flow_api.id(77086872180686735)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77089637403686736)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77089949499686736)
,p_page_template_id=>wwv_flow_api.id(77089637403686736)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77090227397686736)
,p_page_template_id=>wwv_flow_api.id(77089637403686736)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77090506568686736)
,p_page_template_id=>wwv_flow_api.id(77089637403686736)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77090827657686737)
,p_page_template_id=>wwv_flow_api.id(77089637403686736)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77091180330686737)
,p_page_template_id=>wwv_flow_api.id(77089637403686736)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77091457733686737)
,p_page_template_id=>wwv_flow_api.id(77089637403686736)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77091742732686737)
,p_page_template_id=>wwv_flow_api.id(77089637403686736)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77092079985686737)
,p_page_template_id=>wwv_flow_api.id(77089637403686736)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77092364666686737)
,p_page_template_id=>wwv_flow_api.id(77089637403686736)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77092775634686737)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              #BUILT_WITH_LOVE_USING_APEX#',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77093038125686737)
,p_page_template_id=>wwv_flow_api.id(77092775634686737)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77093318167686737)
,p_page_template_id=>wwv_flow_api.id(77092775634686737)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77093688836686738)
,p_page_template_id=>wwv_flow_api.id(77092775634686737)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77093943692686738)
,p_page_template_id=>wwv_flow_api.id(77092775634686737)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77094258640686738)
,p_page_template_id=>wwv_flow_api.id(77092775634686737)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77094553382686738)
,p_page_template_id=>wwv_flow_api.id(77092775634686737)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77094821512686738)
,p_page_template_id=>wwv_flow_api.id(77092775634686737)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77095207607686738)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              #BUILT_WITH_LOVE_USING_APEX#',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77095515318686739)
,p_page_template_id=>wwv_flow_api.id(77095207607686738)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77095851292686739)
,p_page_template_id=>wwv_flow_api.id(77095207607686738)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77096190406686739)
,p_page_template_id=>wwv_flow_api.id(77095207607686738)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77096494449686739)
,p_page_template_id=>wwv_flow_api.id(77095207607686738)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77096789338686742)
,p_page_template_id=>wwv_flow_api.id(77095207607686738)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77097046091686742)
,p_page_template_id=>wwv_flow_api.id(77095207607686738)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77097379685686742)
,p_page_template_id=>wwv_flow_api.id(77095207607686738)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(77174948021686791)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(77175025778686792)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(77175193617686792)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77097786133686744)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77098004905686746)
,p_plug_template_id=>wwv_flow_api.id(77097786133686744)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77101407889686750)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77101647127686750)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77101902992686750)
,p_plug_template_id=>wwv_flow_api.id(77101647127686750)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77102256637686750)
,p_plug_template_id=>wwv_flow_api.id(77101647127686750)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77102478702686750)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77102745014686750)
,p_plug_template_id=>wwv_flow_api.id(77102478702686750)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77103057178686750)
,p_plug_template_id=>wwv_flow_api.id(77102478702686750)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77104604800686751)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77104902107686752)
,p_plug_template_id=>wwv_flow_api.id(77104604800686751)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77105228985686752)
,p_plug_template_id=>wwv_flow_api.id(77104604800686751)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77111879816686755)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77112105118686755)
,p_plug_template_id=>wwv_flow_api.id(77111879816686755)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77112440708686755)
,p_plug_template_id=>wwv_flow_api.id(77111879816686755)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77116421591686756)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77118252427686757)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77118574081686758)
,p_plug_template_id=>wwv_flow_api.id(77118252427686757)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77119788284686758)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77120039906686758)
,p_plug_template_id=>wwv_flow_api.id(77119788284686758)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77121851229686759)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77122492668686759)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77122708767686759)
,p_plug_template_id=>wwv_flow_api.id(77122492668686759)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77122997320686759)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77123259961686759)
,p_plug_template_id=>wwv_flow_api.id(77122997320686759)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77123560667686759)
,p_plug_template_id=>wwv_flow_api.id(77122997320686759)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77129795801686763)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77130043357686763)
,p_plug_template_id=>wwv_flow_api.id(77129795801686763)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77130338916686763)
,p_plug_template_id=>wwv_flow_api.id(77129795801686763)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77132388965686764)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77133358995686764)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77133658564686764)
,p_plug_template_id=>wwv_flow_api.id(77133358995686764)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77154044799686777)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77155658891686778)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77156862873686779)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77157819962686780)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77161882574686783)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77164273469686784)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77164633812686785)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77165636872686785)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77165852169686786)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77170803229686788)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77172495182686789)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77172639100686789)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77134611834686766)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77135201773686767)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77138054958686769)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77140043042686769)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77141820366686771)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77145499025686773)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(77145499025686773)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77148078782686774)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77148840848686775)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77149068493686775)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77153860907686776)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(77174215918686789)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(77174395581686790)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(77174417828686790)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(77174512270686790)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(77174684700686790)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(77174765584686790)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(77174809668686791)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(77175857401686792)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(77176060989686795)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(77175909522686793)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(77177259126686798)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(77095207607686738)
,p_default_dialog_template=>wwv_flow_api.id(77080207731686731)
,p_error_template=>wwv_flow_api.id(77081766643686733)
,p_printer_friendly_template=>wwv_flow_api.id(77095207607686738)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(77081766643686733)
,p_default_button_template=>wwv_flow_api.id(77175025778686792)
,p_default_region_template=>wwv_flow_api.id(77122997320686759)
,p_default_chart_template=>wwv_flow_api.id(77122997320686759)
,p_default_form_template=>wwv_flow_api.id(77122997320686759)
,p_default_reportr_template=>wwv_flow_api.id(77122997320686759)
,p_default_tabform_template=>wwv_flow_api.id(77122997320686759)
,p_default_wizard_template=>wwv_flow_api.id(77122997320686759)
,p_default_menur_template=>wwv_flow_api.id(77132388965686764)
,p_default_listr_template=>wwv_flow_api.id(77122997320686759)
,p_default_irr_template=>wwv_flow_api.id(77121851229686759)
,p_default_report_template=>wwv_flow_api.id(77145499025686773)
,p_default_label_template=>wwv_flow_api.id(77174512270686790)
,p_default_menu_template=>wwv_flow_api.id(77175857401686792)
,p_default_calendar_template=>wwv_flow_api.id(77175909522686793)
,p_default_list_template=>wwv_flow_api.id(77172639100686789)
,p_default_nav_list_template=>wwv_flow_api.id(77164633812686785)
,p_default_top_nav_list_temp=>wwv_flow_api.id(77164633812686785)
,p_default_side_nav_list_temp=>wwv_flow_api.id(77164273469686784)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(77102478702686750)
,p_default_dialogr_template=>wwv_flow_api.id(77101407889686750)
,p_default_option_label=>wwv_flow_api.id(77174512270686790)
,p_default_required_label=>wwv_flow_api.id(77174809668686791)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(77165636872686785)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.2/')
,p_files_version=>66
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(77176236094686795)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(77176418763686795)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(77176682252686796)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(77176875433686796)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(77177029283686796)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(77415128946724470)
,p_theme_id=>42
,p_name=>'Vita (Copy)'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-OG":"#babcc2","@g_Accent-BG":"#5b6872","@g_Body-Text":"#171a16","@g_Body-BG":"#3a4f8d","@g_Actions-Col-Text":"#0f0e0f","@g_Body-Title-FG":"#1b131b","@g_Header-FG":"#faf7fa","@l_Left-Col-Text":"#ffffff","@l_Left-Col-'
||'BG":"#08090e","@g_Nav_Style":"light","@g_Nav-BG":"#ffffff","@g_Nav-FG":"#2beb24","@g_Nav-Active-FG":"#2335bb","@g_Nav-Active-BG":"#fafafa","@g_Nav-Icon-Active":"#1dee4e","@g_Nav-Icon":"#3beb24"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#77415128946724470.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200D0A202A20566974612028436F7079290D0A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290D0A202A200D0A202A2054686973204353532066696C65207761732067656E6572';
wwv_flow_api.g_varchar2_table(2) := '61746564207573696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200D0A202A200D0A202A2F0D0A0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F';
wwv_flow_api.g_varchar2_table(3) := '64792D6E6176207B0D0A2020626F726465722D72696768743A2031707820736F6C6964207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E752D52544C202E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61';
wwv_flow_api.g_varchar2_table(4) := '76207B0D0A2020626F726465722D72696768742D77696474683A20303B0D0A2020626F726465722D6C6566743A2031707820736F6C6964207267626128302C20302C20302C20302E303735293B0D0A7D0D0A0D0A2E742D4156504C6973742D76616C7565';
wwv_flow_api.g_varchar2_table(5) := '207B0D0A2020636F6C6F723A20233363343333393B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F723A20233438333334383B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973';
wwv_flow_api.g_varchar2_table(6) := '742D76616C7565207B0D0A2020636F6C6F723A20233632363236323B0D0A7D0D0A2E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233233323832323B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C';
wwv_flow_api.g_varchar2_table(7) := '6162656C207B0D0A2020636F6C6F723A20233261316532613B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233439343934393B0D0A7D0D0A0D0A2E742D416C6572742D2D77697A617264';
wwv_flow_api.g_varchar2_table(8) := '2C0D0A2E742D416C6572742D2D686F72697A6F6E74616C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672C0D0A2E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(9) := '636F6C6F7242472E742D416C6572742D2D79656C6C6F77207B0D0A20206261636B67726F756E642D636F6C6F723A20236665663765303B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D41';
wwv_flow_api.g_varchar2_table(10) := '6C6572742D2D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A20236635666166343B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E67';
wwv_flow_api.g_varchar2_table(11) := '65722C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663866373B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D';
wwv_flow_api.g_varchar2_table(12) := '2D636F6C6F7242472E742D416C6572742D2D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236564663666663B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D69636F6E202E742D49636F6E20';
wwv_flow_api.g_varchar2_table(13) := '7B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A0D0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E202E742D49636F6E2C0D0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F6E202E742D';
wwv_flow_api.g_varchar2_table(14) := '49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E742D416C6572742D2D7761726E696E672E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E2C0D0A2E742D416C';
wwv_flow_api.g_varchar2_table(15) := '6572742D2D79656C6C6F772E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235312C203230362C2037342C20302E3135293B0D0A7D0D0A0D';
wwv_flow_api.g_varchar2_table(16) := '0A2E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132633B0D0A7D0D0A2E742D416C6572742D2D737563636573732E742D416C65';
wwv_flow_api.g_varchar2_table(17) := '72742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612835392C203137302C2034342C20302E3135293B0D0A7D0D0A0D0A2E742D416C6572742D2D696E666F202E74';
wwv_flow_api.g_varchar2_table(18) := '2D416C6572742D69636F6E202E742D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A2E742D416C6572742D2D696E666F2E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D';
wwv_flow_api.g_varchar2_table(19) := '69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128352C203131342C203230362C20302E3135293B0D0A7D0D0A0D0A2E742D416C6572742D2D64616E676572202E742D416C6572742D69636F6E202E742D49636F6E2C0D0A';
wwv_flow_api.g_varchar2_table(20) := '2E742D416C6572742D2D726564202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A7D0D0A2E742D416C6572742D2D64616E6765722E742D416C6572742D2D686F';
wwv_flow_api.g_varchar2_table(21) := '72697A6F6E74616C202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D7265642E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261';
wwv_flow_api.g_varchar2_table(22) := '283234342C2036372C2035342C20302E3135293B0D0A7D0D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D416C6572742D2D686F7269';
wwv_flow_api.g_varchar2_table(23) := '7A6F6E74616C2C0D0A2E742D416C6572742D2D77697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C';
wwv_flow_api.g_varchar2_table(24) := '6572742D2D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612835392C203137302C2034342C20302E39293B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D416C6572742D2D706167652E742D';
wwv_flow_api.g_varchar2_table(25) := '416C6572742D2D73756363657373202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D416C6572742D2D7061';
wwv_flow_api.g_varchar2_table(26) := '67652E742D416C6572742D2D73756363657373202E742D427574746F6E2D2D636C6F7365416C657274207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C657274';
wwv_flow_api.g_varchar2_table(27) := '2D2D73756363657373202E742D416C6572742D636F6E74656E74207B0D0A202070616464696E672D72696768743A20303B0D0A202070616464696E672D6C6566743A20303B0D0A7D0D0A0D0A2E742D42616467654C6973742C0D0A2E742D42616467654C';
wwv_flow_api.g_varchar2_table(28) := '6973743A6E6F74282E752D636F6C6F7273292061202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(29) := '2D76616C7565207B0D0A2020626F782D736861646F773A2030203020302031707820726762612836302C2036302C2036302C20302E312920696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(30) := '42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0D0A2020626F782D736861646F773A2030203020302034707820233562363837322069';
wwv_flow_api.g_varchar2_table(31) := '6E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A666F63';
wwv_flow_api.g_varchar2_table(32) := '75732C0D0A2E742D42616467654C6973742D2D64617368202E742D42616467654C6973742D777261703A666F6375732D77697468696E2C0D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D777261703A66';
wwv_flow_api.g_varchar2_table(33) := '6F637573202E742D42616467654C6973742D76616C75652C0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0D0A2020626F782D736861646F773A2030203020302031';
wwv_flow_api.g_varchar2_table(34) := '7078202335623638373220696E7365742C20302030203020327078202366626662666220696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42';
wwv_flow_api.g_varchar2_table(35) := '616467654C6973742D2D64617368202E742D42616467654C6973742D777261703A666F6375732D77697468696E2C0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0D';
wwv_flow_api.g_varchar2_table(36) := '0A20206261636B67726F756E642D636F6C6F723A20233562363837322021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D42616467654C6973742D2D64617368202E742D426164';
wwv_flow_api.g_varchar2_table(37) := '67654C6973742D76616C756520613A666F6375732C0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A666F6375732D77697468696E202E742D42616467654C6973742D6C6162656C207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(38) := '6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D42616467654C6973742E752D636F6C6F72732E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D777261703A6265666F7265207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(39) := '6F756E642D636F6C6F723A20236662666266623B0D0A7D0D0A2E742D42616467654C6973742E752D636F6C6F72732E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(40) := '233363336333633B0D0A7D0D0A2E742D42616467654C6973742E752D636F6C6F7273202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4261724368617274202E612D42617243';
wwv_flow_api.g_varchar2_table(41) := '686172742D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236564656565663B0D0A7D0D0A2E742D426F6479202E612D4261724368617274202E612D42617243686172742D6974656D202E612D4261724368617274';
wwv_flow_api.g_varchar2_table(42) := '2D76616C7565207B0D0A2020636F6C6F723A20236533653365333B0D0A7D0D0A2E742D426F64792D7469746C65202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(43) := '6C6F723A20233436343634363B0D0A7D0D0A2E742D426F64792D696E666F202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233436343634363B0D0A';
wwv_flow_api.g_varchar2_table(44) := '7D0D0A2E742D526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C75652C0D0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172';
wwv_flow_api.g_varchar2_table(45) := '742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233763376337633B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D6974656D20696D67207B0D0A2020626F726465722D7261646975';
wwv_flow_api.g_varchar2_table(46) := '733A203270783B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E612D4261724368617274';
wwv_flow_api.g_varchar2_table(47) := '2D2D636C6173736963202E612D42617243686172742D6261722C0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D';
wwv_flow_api.g_varchar2_table(48) := '42617243686172742D2D636C6173736963202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B';
wwv_flow_api.g_varchar2_table(49) := '0D0A7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(50) := '3A203170783B0D0A7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C';
wwv_flow_api.g_varchar2_table(51) := '20302C20302C20302E3035293B0D0A7D0D0A2E612D42617243686172742D66696C6C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A7D0D0A0D0A626F6479207B0D0A20206261636B67726F756E643A20233361';
wwv_flow_api.g_varchar2_table(52) := '346638643B0D0A2020636F6C6F723A20233137316131363B0D0A7D0D0A61207B0D0A2020636F6C6F723A20233534363036393B0D0A7D0D0A2E742D426F64792D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A202362366238';
wwv_flow_api.g_varchar2_table(53) := '62653B0D0A2020626F726465722D6C6566743A2031707820736F6C6964207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E742D426F64792D7469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283139';
wwv_flow_api.g_varchar2_table(54) := '342C203139362C203230312C20302E39293B0D0A2020636F6C6F723A20233162313331623B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20736174757261746528313830252920626C757228387078293B0D0A7D0D0A2E75692D';
wwv_flow_api.g_varchar2_table(55) := '7769646765742D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D0A2E742D426F6479202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(56) := '7D0D0A2E742D426F64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(57) := '6C6F723A20233036303630363B0D0A7D0D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E742C0D0A2E742D427574746F6E526567696F6E202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A2023336333';
wwv_flow_api.g_varchar2_table(58) := '6333633B0D0A7D0D0A2E742D426F64792D73696465207B0D0A20206261636B67726F756E642D636F6C6F723A20233038303930653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E617065782D7264732D636F6E7461696E6572207B0D0A';
wwv_flow_api.g_varchar2_table(59) := '20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A2023633263346339';
wwv_flow_api.g_varchar2_table(60) := '3B0D0A7D0D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E7461696E65722E69732D737475636B207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283139342C203139362C203230312C20302E3935293B0D0A20';
wwv_flow_api.g_varchar2_table(61) := '202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236332633463393B0D0A7D0D0A2E742D426F64792D7469';
wwv_flow_api.g_varchar2_table(62) := '746C652E6A732D6869646542726561646372756D6273207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(63) := '2D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20233439363362313B0D0A2020636F6C6F723A20233662383163323B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A666F637573207B0D0A2020626F78';
wwv_flow_api.g_varchar2_table(64) := '2D736861646F773A20302030203020317078202335623638373220696E7365742C20302031707820327078207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A686F7665722C0D0A2E742D426F';
wwv_flow_api.g_varchar2_table(65) := '64792D746F70427574746F6E3A666F637573207B0D0A2020636F6C6F723A20233562363837323B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233539373262623B';
wwv_flow_api.g_varchar2_table(66) := '0D0A2020636F6C6F723A20233764393063613B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67207B0D0A20206865696768743A20343870783B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6F7261636C65207B0D0A20206C696E652D';
wwv_flow_api.g_varchar2_table(67) := '6865696768743A20343870783B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6F7261636C653A6265666F7265207B0D0A20206865696768743A20343870783B0D0A7D0D0A0D0A2E617065782D736964652D6E6176202E742D426F64792D6E61762C0D';
wwv_flow_api.g_varchar2_table(68) := '0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0D0A2E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020746F703A20343870783B0D0A7D0D0A406D65646961206F6E6C79207363726565';
wwv_flow_api.g_varchar2_table(69) := '6E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A2020';
wwv_flow_api.g_varchar2_table(70) := '2E752D52544C202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F6479';
wwv_flow_api.g_varchar2_table(71) := '2D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A7D0D0A406D6564696120';
wwv_flow_api.g_varchar2_table(72) := '6F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C65';
wwv_flow_api.g_varchar2_table(73) := '66743A2032303070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A7D0D0A3A6E6F74282E';
wwv_flow_api.g_varchar2_table(74) := '752D52544C29202E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A2020';
wwv_flow_api.g_varchar2_table(75) := '6D617267696E2D72696768743A20303B0D0A7D0D0A0D0A2E617065782D746F702D6E6176202E742D426F64792D616374696F6E73207B0D0A2020746F703A20383870783B0D0A7D0D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65';
wwv_flow_api.g_varchar2_table(76) := '207B0D0A2020746F703A20383870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20363430707829207B0D0A20202E617065782D746F702D6E61762E6A732D6D656E754E6176436F6C6C61707365';
wwv_flow_api.g_varchar2_table(77) := '64202E742D4865616465722D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746559282D31303025293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C61746559282D31303025293B0D';
wwv_flow_api.g_varchar2_table(78) := '0A202020207472616E73666F726D3A207472616E736C61746559282D31303025293B0D0A20207D0D0A7D0D0A0D0A2E742D426F64792D6E6176207B0D0A202077696474683A2032303070783B0D0A7D0D0A0D0A2E742D426F64792D616374696F6E73207B';
wwv_flow_api.g_varchar2_table(79) := '0D0A202077696474683A2032303070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61';
wwv_flow_api.g_varchar2_table(80) := '74653364282D343070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D34307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(81) := '752D52544C202E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428343070782C20302C2030293B0D0A20202D6D732D7472616E';
wwv_flow_api.g_varchar2_table(82) := '73666F726D3A207472616E736C6174652834307078293B0D0A20207472616E73666F726D3A207472616E736C617465336428343070782C20302C2030293B0D0A7D0D0A0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D776964';
wwv_flow_api.g_varchar2_table(83) := '74683A20363431707829207B0D0A20202E742D426F64792D73696465207B0D0A2020202077696474683A2032343070783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829';
wwv_flow_api.g_varchar2_table(84) := '207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D42';
wwv_flow_api.g_varchar2_table(85) := '6F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20';
wwv_flow_api.g_varchar2_table(86) := '206D617267696E2D6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20343870783B0D0A';
wwv_flow_api.g_varchar2_table(87) := '7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364283135327078';
wwv_flow_api.g_varchar2_table(88) := '2C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283135327078293B0D0A20207472616E73666F726D3A207472616E736C61746533642831353270782C20302C2030293B0D0A7D0D0A2E752D52544C202E617065';
wwv_flow_api.g_varchar2_table(89) := '782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D31353270782C20302C2030293B0D0A20202D6D732D747261';
wwv_flow_api.g_varchar2_table(90) := '6E73666F726D3A207472616E736C617465282D3135327078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D31353270782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D';
wwv_flow_api.g_varchar2_table(91) := '77696474683A20343830707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E617065782D73';
wwv_flow_api.g_varchar2_table(92) := '6964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B';
wwv_flow_api.g_varchar2_table(93) := '0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0D0A20202E752D52544C202E617065782D7369';
wwv_flow_api.g_varchar2_table(94) := '64652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D';
wwv_flow_api.g_varchar2_table(95) := '617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20';
wwv_flow_api.g_varchar2_table(96) := '303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E75';
wwv_flow_api.g_varchar2_table(97) := '2D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B';
wwv_flow_api.g_varchar2_table(98) := '0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065';
wwv_flow_api.g_varchar2_table(99) := '782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A202020202D6D73';
wwv_flow_api.g_varchar2_table(100) := '2D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C79207363726565';
wwv_flow_api.g_varchar2_table(101) := '6E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C652C0D0A20202E';
wwv_flow_api.g_varchar2_table(102) := '617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E742C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E';
wwv_flow_api.g_varchar2_table(103) := '742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176';
wwv_flow_api.g_varchar2_table(104) := '457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176';
wwv_flow_api.g_varchar2_table(105) := '457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176';
wwv_flow_api.g_varchar2_table(106) := '2E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A73';
wwv_flow_api.g_varchar2_table(107) := '2D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E';
wwv_flow_api.g_varchar2_table(108) := '6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2031353270783B0D0A20207D0D0A20202E752D52544C202E617065782D';
wwv_flow_api.g_varchar2_table(109) := '736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2031353270783B0D0A20207D0D0A20203A6E6F';
wwv_flow_api.g_varchar2_table(110) := '74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20343870783B0D';
wwv_flow_api.g_varchar2_table(111) := '0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20';
wwv_flow_api.g_varchar2_table(112) := '343870783B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364283230307078';
wwv_flow_api.g_varchar2_table(113) := '2C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E752D';
wwv_flow_api.g_varchar2_table(114) := '52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D';
wwv_flow_api.g_varchar2_table(115) := '0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20207D0D0A20202E617065782D73696465';
wwv_flow_api.g_varchar2_table(116) := '2D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E';
wwv_flow_api.g_varchar2_table(117) := '617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C';
wwv_flow_api.g_varchar2_table(118) := '202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F';
wwv_flow_api.g_varchar2_table(119) := '74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E75';
wwv_flow_api.g_varchar2_table(120) := '2D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E';
wwv_flow_api.g_varchar2_table(121) := '752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032383870783B';
wwv_flow_api.g_varchar2_table(122) := '0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D726967';
wwv_flow_api.g_varchar2_table(123) := '68743A2032383870783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B';
wwv_flow_api.g_varchar2_table(124) := '0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831353270782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283135327078293B0D0A202020207472616E7366';
wwv_flow_api.g_varchar2_table(125) := '6F726D3A207472616E736C61746533642831353270782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D';
wwv_flow_api.g_varchar2_table(126) := '426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D31353270782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D313532';
wwv_flow_api.g_varchar2_table(127) := '7078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D31353270782C20302C2030293B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E74';
wwv_flow_api.g_varchar2_table(128) := '2D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D506167';
wwv_flow_api.g_varchar2_table(129) := '65426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D';
wwv_flow_api.g_varchar2_table(130) := '50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E7366';
wwv_flow_api.g_varchar2_table(131) := '6F726D3A207472616E736C617465283230307078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E61';
wwv_flow_api.g_varchar2_table(132) := '76457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20';
wwv_flow_api.g_varchar2_table(133) := '2020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C79';
wwv_flow_api.g_varchar2_table(134) := '2073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E20';
wwv_flow_api.g_varchar2_table(135) := '7B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D42';
wwv_flow_api.g_varchar2_table(136) := '6F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E74';
wwv_flow_api.g_varchar2_table(137) := '2D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64';
wwv_flow_api.g_varchar2_table(138) := '792D7469746C65207B0D0A202020207472616E73666F726D3A206E6F6E652021696D706F7274616E743B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765';
wwv_flow_api.g_varchar2_table(139) := '426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564';
wwv_flow_api.g_varchar2_table(140) := '2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E';
wwv_flow_api.g_varchar2_table(141) := '6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2034343070783B0D0A20207D0D0A20202E752D52544C202E617065782D';
wwv_flow_api.g_varchar2_table(142) := '736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2034343070783B0D0A20207D0D0A20203A6E6F';
wwv_flow_api.g_varchar2_table(143) := '74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E742C0D0A20202E752D52544C202E617065782D736964652D6E';
wwv_flow_api.g_varchar2_table(144) := '61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A7D0D0A0D0A2E617065782D73696465';
wwv_flow_api.g_varchar2_table(145) := '2D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176202E742D547265654E6176207B0D0A202077696474683A';
wwv_flow_api.g_varchar2_table(146) := '20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E6176';
wwv_flow_api.g_varchar2_table(147) := '2E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A20206D61726769';
wwv_flow_api.g_varchar2_table(148) := '6E2D6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E';
wwv_flow_api.g_varchar2_table(149) := '6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A20206D617267696E2D72696768743A203438';
wwv_flow_api.g_varchar2_table(150) := '70783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652E69732D737475636B207B0D0A20206C6566743A20303B0D0A7D0D0A2E752D52544C20';
wwv_flow_api.g_varchar2_table(151) := '2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652E69732D737475636B207B0D0A202072696768743A20303B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D6178';
wwv_flow_api.g_varchar2_table(152) := '2D77696474683A20343830707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174655828';
wwv_flow_api.g_varchar2_table(153) := '2D34387078293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A202020207472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A20207D0D0A20202E752D52544C202E6170';
wwv_flow_api.g_varchar2_table(154) := '65782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465582834387078293B0D0A202020202D6D732D7472616E73666F';
wwv_flow_api.g_varchar2_table(155) := '726D3A207472616E736C617465582834387078293B0D0A202020207472616E73666F726D3A207472616E736C617465582834387078293B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F';
wwv_flow_api.g_varchar2_table(156) := '6C6C6170736564202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C2920';
wwv_flow_api.g_varchar2_table(157) := '2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E';
wwv_flow_api.g_varchar2_table(158) := '6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20202E752D52544C202E617065';
wwv_flow_api.g_varchar2_table(159) := '782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E642028';
wwv_flow_api.g_varchar2_table(160) := '6D61782D77696474683A20363430707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F';
wwv_flow_api.g_varchar2_table(161) := '64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D726967687445787061';
wwv_flow_api.g_varchar2_table(162) := '6E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E';
wwv_flow_api.g_varchar2_table(163) := '6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D';
wwv_flow_api.g_varchar2_table(164) := '736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A';
wwv_flow_api.g_varchar2_table(165) := '732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64';
wwv_flow_api.g_varchar2_table(166) := '792D7469746C65207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674';
wwv_flow_api.g_varchar2_table(167) := '202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C';
wwv_flow_api.g_varchar2_table(168) := '656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D5061676542';
wwv_flow_api.g_varchar2_table(169) := '6F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032383870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C617073';
wwv_flow_api.g_varchar2_table(170) := '65642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032383870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420';
wwv_flow_api.g_varchar2_table(171) := '286D696E2D77696474683A20393933707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D';
wwv_flow_api.g_varchar2_table(172) := '0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A0D0A2E742D50616765426F64';
wwv_flow_api.g_varchar2_table(173) := '792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E64656420';
wwv_flow_api.g_varchar2_table(174) := '2E742D426F64792D6D61696E2C0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61';
wwv_flow_api.g_varchar2_table(175) := '74653364282D32303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A7D';
wwv_flow_api.g_varchar2_table(176) := '0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E2C0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176';
wwv_flow_api.g_varchar2_table(177) := '207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A20207472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(178) := '207472616E736C61746533642832303070782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E742D50616765426F64792E6A732D72696768744578';
wwv_flow_api.g_varchar2_table(179) := '70616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F';
wwv_flow_api.g_varchar2_table(180) := '64792D6E6176207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C6566';
wwv_flow_api.g_varchar2_table(181) := '74202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D68';
wwv_flow_api.g_varchar2_table(182) := '6964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D';
wwv_flow_api.g_varchar2_table(183) := '50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D';
wwv_flow_api.g_varchar2_table(184) := '50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E64';
wwv_flow_api.g_varchar2_table(185) := '65642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E74';
wwv_flow_api.g_varchar2_table(186) := '2D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E';
wwv_flow_api.g_varchar2_table(187) := '6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E';
wwv_flow_api.g_varchar2_table(188) := '6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A';
wwv_flow_api.g_varchar2_table(189) := '6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C65';
wwv_flow_api.g_varchar2_table(190) := '66743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465';
wwv_flow_api.g_varchar2_table(191) := '207B0D0A2020202072696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A';
wwv_flow_api.g_varchar2_table(192) := '732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765';
wwv_flow_api.g_varchar2_table(193) := '426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E742D50616765426F';
wwv_flow_api.g_varchar2_table(194) := '64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73';
wwv_flow_api.g_varchar2_table(195) := '686F774C656674202E742D426F64792D6E6176207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765';
wwv_flow_api.g_varchar2_table(196) := '426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765';
wwv_flow_api.g_varchar2_table(197) := '426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A';
wwv_flow_api.g_varchar2_table(198) := '732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269';
wwv_flow_api.g_varchar2_table(199) := '676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A406D65646961206F6E';
wwv_flow_api.g_varchar2_table(200) := '6C792073637265656E20616E6420286D61782D77696474683A20393932707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E';
wwv_flow_api.g_varchar2_table(201) := '207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D42';
wwv_flow_api.g_varchar2_table(202) := '6F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20203A6E6F74282E';
wwv_flow_api.g_varchar2_table(203) := '752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A2074';
wwv_flow_api.g_varchar2_table(204) := '72616E736C6174653364282D32303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C';
wwv_flow_api.g_varchar2_table(205) := '20302C2030293B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20202E752D52544C202E74';
wwv_flow_api.g_varchar2_table(206) := '2D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E646564';
wwv_flow_api.g_varchar2_table(207) := '2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D74';
wwv_flow_api.g_varchar2_table(208) := '72616E73666F726D3A207472616E736C617465283230307078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E742D50616765426F64792E6A732D72696768744578';
wwv_flow_api.g_varchar2_table(209) := '70616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20343870782021696D706F7274616E743B0D0A20207D0D0A20202E752D52544C202E742D50616765';
wwv_flow_api.g_varchar2_table(210) := '426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A203070782021696D706F7274616E743B0D0A20202020726967';
wwv_flow_api.g_varchar2_table(211) := '68743A20343870782021696D706F7274616E743B0D0A20207D0D0A7D0D0A0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A203070783B0D0A';
wwv_flow_api.g_varchar2_table(212) := '7D0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202072696768743A203070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D72696768';
wwv_flow_api.g_varchar2_table(213) := '74436F6C6C6170736564202E742D426F64792D616374696F6E73207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E73';
wwv_flow_api.g_varchar2_table(214) := '6C617465283230307078293B0D0A20207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64';
wwv_flow_api.g_varchar2_table(215) := '792D616374696F6E73207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A20';
wwv_flow_api.g_varchar2_table(216) := '207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A7D0D0A0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D';
wwv_flow_api.g_varchar2_table(217) := '52544C29202E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792D2D7368';
wwv_flow_api.g_varchar2_table(218) := '6F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A7D0D0A0D0A2E742D426F64792D636F6E74656E74496E6E6572207B0D0A20206D617267696E3A2030206175';
wwv_flow_api.g_varchar2_table(219) := '746F3B0D0A20206D61782D77696474683A20313030253B0D0A7D0D0A0D0A2E742D42726561646372756D622D6974656D3A6166746572207B0D0A2020636F6C6F723A20726762612832332C2032362C2032322C20302E3735293B0D0A7D0D0A2E742D4272';
wwv_flow_api.g_varchar2_table(220) := '6561646372756D622D6974656D2C0D0A2E742D42726561646372756D622D6974656D2061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42726561646372756D622D6974656D20613A686F7665722C0D0A2E742D427265616463';
wwv_flow_api.g_varchar2_table(221) := '72756D622D6974656D20613A666F637573207B0D0A2020636F6C6F723A20233534363036393B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A2E742D426F64792D';
wwv_flow_api.g_varchar2_table(222) := '7469746C652D736872696E6B202E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D426F64792D7469746C652D7368';
wwv_flow_api.g_varchar2_table(223) := '72696E6B202E742D42726561646372756D62526567696F6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A406D6564';
wwv_flow_api.g_varchar2_table(224) := '6961206F6E6C792073637265656E20616E6420286D61782D77696474683A20363430707829207B0D0A20202E742D42726561646372756D62526567696F6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E2D74';
wwv_flow_api.g_varchar2_table(225) := '69746C6554657874207B0D0A20202020636F6C6F723A20236666666666663B0D0A20207D0D0A7D0D0A2E742D42726561646372756D622D6974656D202E742D49636F6E3A686F766572207B0D0A2020636F6C6F723A20233562363837323B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(226) := '742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D42726561646372756D62526567696F6E2D7469746C655465787420';
wwv_flow_api.g_varchar2_table(227) := '7B0D0A2020636F6C6F723A20233162313331623B0D0A7D0D0A0D0A2E742D427574746F6E2C0D0A2E612D427574746F6E2C0D0A2E75692D627574746F6E207B0D0A2020626F726465723A206E6F6E653B0D0A2020746578742D736861646F773A206E6F6E';
wwv_flow_api.g_varchar2_table(228) := '653B0D0A2020626F726465722D7261646975733A203270783B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E327320656173652C20626F782D736861646F7720302E327320656173652C20636F6C6F7220302E32';
wwv_flow_api.g_varchar2_table(229) := '7320656173653B0D0A7D0D0A2E742D427574746F6E202E742D49636F6E2C0D0A2E612D427574746F6E202E742D49636F6E2C0D0A2E75692D627574746F6E202E742D49636F6E207B0D0A20207472616E736974696F6E3A20696E68657269743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(230) := '0A2E742D427574746F6E3A686F7665722C0D0A2E612D427574746F6E3A686F7665722C0D0A2E75692D627574746F6E3A686F7665722C0D0A2E742D427574746F6E3A666F6375732C0D0A2E612D427574746F6E3A666F6375732C0D0A2E75692D62757474';
wwv_flow_api.g_varchar2_table(231) := '6F6E3A666F637573207B0D0A20207A2D696E6465783A203130303B0D0A20206F75746C696E653A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E3A666F6375733A6265666F72652C0D0A2E612D427574746F6E3A666F6375';
wwv_flow_api.g_varchar2_table(232) := '733A6265666F72652C0D0A2E75692D627574746F6E3A666F6375733A6265666F72652C0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F6375733A6265';
wwv_flow_api.g_varchar2_table(233) := '666F72652C0D0A2E75692D627574746F6E2E69732D6163746976653A666F6375733A6265666F7265207B0D0A2020626F782D736861646F773A20302030203020317078202335623638373220696E7365742021696D706F7274616E743B0D0A20206F7061';
wwv_flow_api.g_varchar2_table(234) := '636974793A20313B0D0A7D0D0A2E742D427574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E75692D627574746F6E3A666F6375733A616374697665';
wwv_flow_api.g_varchar2_table(235) := '3A6265666F72652C0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F72652C0D0A2E75692D6275';
wwv_flow_api.g_varchar2_table(236) := '74746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F7265207B0D0A20206F7061636974793A20303B0D0A7D0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E742D427574746F6E';
wwv_flow_api.g_varchar2_table(237) := '2D2D686561646572293A6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E742D427574746F6E2D2D686561646572292E69732D616374697665207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(238) := '302030203020317078207267626128302C20302C20302C20302E31352920696E7365742C20302032707820327078207267626128302C20302C20302C20302E312920696E7365742021696D706F7274616E743B0D0A7D0D0A0D0A2E612D427574746F6E3A';
wwv_flow_api.g_varchar2_table(239) := '6265666F72652C0D0A2E742D427574746F6E3A6265666F72652C0D0A2E75692D627574746F6E3A6265666F72652C0D0A2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A61667465722C0D0A2E75692D627574746F6E3A6166746572';
wwv_flow_api.g_varchar2_table(240) := '207B0D0A2020636F6E74656E743A2027273B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A20303B0D0A20206C6566743A20303B0D0A202077696474683A20313030253B0D0A20206865696768743A20313030253B0D0A20';
wwv_flow_api.g_varchar2_table(241) := '20626F726465722D7261646975733A20696E68657269743B0D0A20206F7061636974793A20303B0D0A20207472616E736974696F6E3A202E327320656173653B0D0A7D0D0A2E612D427574746F6E3A6265666F72652C0D0A2E742D427574746F6E3A6265';
wwv_flow_api.g_varchar2_table(242) := '666F72652C0D0A2E75692D627574746F6E3A6265666F7265207B0D0A20207A2D696E6465783A20313B0D0A7D0D0A2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A61667465722C0D0A2E75692D627574746F6E3A6166746572207B';
wwv_flow_api.g_varchar2_table(243) := '0D0A20207A2D696E6465783A202D313B0D0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E303735293B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078293B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(244) := '2E612D427574746F6E3A666F6375733A61667465722C0D0A2E742D427574746F6E3A666F6375733A61667465722C0D0A2E75692D627574746F6E3A666F6375733A61667465722C0D0A2E612D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C69';
wwv_flow_api.g_varchar2_table(245) := '6E6B293A686F7665723A61667465722C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A686F7665723A61667465722C0D0A2E75692D627574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A686F766572';
wwv_flow_api.g_varchar2_table(246) := '3A6166746572207B0D0A20206F7061636974793A20313B0D0A20207472616E73666F726D3A207472616E736C617465592830293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A6163746976653A61667465722C0D0A2E742D427574746F6E3A666F';
wwv_flow_api.g_varchar2_table(247) := '6375733A6163746976653A61667465722C0D0A2E75692D627574746F6E3A666F6375733A6163746976653A6166746572207B0D0A20206F7061636974793A20303B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078293B0D0A7D';
wwv_flow_api.g_varchar2_table(248) := '0D0A2E612D427574746F6E3A666F6375733A61667465722C0D0A2E742D427574746F6E3A666F6375733A61667465722C0D0A2E75692D627574746F6E3A666F6375733A6166746572207B0D0A20207472616E73666F726D3A207472616E736C6174655928';
wwv_flow_api.g_varchar2_table(249) := '30293B0D0A2020626F782D736861646F773A20302030203170782031707820726762612839312C203130342C203131342C20302E3235293B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E4772';
wwv_flow_api.g_varchar2_table(250) := '6F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(251) := '2D73696D706C65292C0D0A2E75692D627574746F6E2C0D0A2E612D427574746F6E207B0D0A2020636F6C6F723A20233336333633373B0D0A20206261636B67726F756E642D636F6C6F723A20236635663666363B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(252) := '302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D';
wwv_flow_api.g_varchar2_table(253) := '2D726320696E707574202B206C6162656C3A686F7665722C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A686F7665722C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A';
wwv_flow_api.g_varchar2_table(254) := '686F7665722C0D0A2E75692D627574746F6E3A686F7665722C0D0A2E612D427574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A2030203020302031707820';
wwv_flow_api.g_varchar2_table(255) := '7267626128302C20302C20302C20302E31352920696E7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B';
wwv_flow_api.g_varchar2_table(256) := '206C6162656C3A666F6375732C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A666F6375732C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A666F6375732C0D0A2E7569';
wwv_flow_api.g_varchar2_table(257) := '2D627574746F6E3A666F6375732C0D0A2E612D427574746F6E3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574';
wwv_flow_api.g_varchar2_table(258) := '746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C2E69732D6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2E69732D6163746976652C0D';
wwv_flow_api.g_varchar2_table(259) := '0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D0A2E75692D627574746F6E2E69732D6163746976652C0D0A2E612D427574746F6E2E69732D6163746976652C0D0A2E742D466F726D2D66';
wwv_flow_api.g_varchar2_table(260) := '69656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C3A6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574';
wwv_flow_api.g_varchar2_table(261) := '202B206C6162656C3A6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A6163746976652C0D0A2E75692D627574746F6E3A6163746976652C0D0A2E612D427574746F6E3A616374697665207B0D0A';
wwv_flow_api.g_varchar2_table(262) := '20206261636B67726F756E642D636F6C6F723A20236463646364643B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(263) := '726F756E642D636F6C6F723A20236435643564363B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D';
wwv_flow_api.g_varchar2_table(264) := '2D67726F75702D2D726320696E7075743A616374697665202B206C6162656C2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075';
wwv_flow_api.g_varchar2_table(265) := '743A666F6375733A6E6F74283A636865636B656429202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A616374697665202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A66';
wwv_flow_api.g_varchar2_table(266) := '6F6375733A6E6F74283A636865636B656429202B206C6162656C207B0D0A2020626F782D736861646F773A20302030203020317078202335623638373220696E7365742C20302030203020327078202366346635663520696E7365742021696D706F7274';
wwv_flow_api.g_varchar2_table(267) := '616E743B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F726465722D636F6C6F723A20233562363837323B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(268) := '233336333633372021696D706F7274616E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B65643A';
wwv_flow_api.g_varchar2_table(269) := '666F637573202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B65643A666F637573202B206C6162656C207B0D0A2020626F782D736861646F773A20302030203020317078202335623638373220696E';
wwv_flow_api.g_varchar2_table(270) := '7365742C20302030203020327078202366346635663520696E7365742021696D706F7274616E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F';
wwv_flow_api.g_varchar2_table(271) := '75702D2D726320696E7075743A636865636B6564202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C207B0D0A2020626F726465722D636F6C6F723A20233562363837323B0D';
wwv_flow_api.g_varchar2_table(272) := '0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236634663566353B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A0D0A2E612D427574746F6E2D2D686F742C0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(273) := '6F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65292C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F742C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F72697479';
wwv_flow_api.g_varchar2_table(274) := '2D7072696D617279207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D427574746F6E2D2D686F743A686F7665722C0D0A2E742D427574746F6E2D2D686F';
wwv_flow_api.g_varchar2_table(275) := '743A6E6F74282E742D427574746F6E2D2D73696D706C65293A686F7665722C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F743A686F7665722C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072';
wwv_flow_api.g_varchar2_table(276) := '696F726974792D7072696D6172793A686F7665722C0D0A2E612D427574746F6E2D2D686F743A6E6F74283A616374697665293A666F6375732C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74';
wwv_flow_api.g_varchar2_table(277) := '283A616374697665293A666F6375732C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6E6F74283A616374697665293A666F6375732C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F';
wwv_flow_api.g_varchar2_table(278) := '726974792D7072696D6172793A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233636373538303B0D0A7D0D0A2E612D427574746F6E2D2D686F743A6163746976652C0D0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(279) := '6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A6163746976652C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0D0A626F6479202E75692D73746174652D64656661756C';
wwv_flow_api.g_varchar2_table(280) := '742E75692D7072696F726974792D7072696D6172793A6163746976652C0D0A2E612D427574746F6E2D2D686F742E69732D6163746976652C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D61';
wwv_flow_api.g_varchar2_table(281) := '63746976652C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F742E69732D6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D616374';
wwv_flow_api.g_varchar2_table(282) := '697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233530356236343B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F74207B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A0D';
wwv_flow_api.g_varchar2_table(283) := '0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D77';
wwv_flow_api.g_varchar2_table(284) := '61726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A';
wwv_flow_api.g_varchar2_table(285) := '6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236663646337633B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E74';
wwv_flow_api.g_varchar2_table(286) := '2D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429';
wwv_flow_api.g_varchar2_table(287) := '3A6163746976652C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(288) := '6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(289) := '663B0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D737563636573733A6E6F7428';
wwv_flow_api.g_varchar2_table(290) := '2E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233432626533313B0D0A7D0D0A2E742D427574';
wwv_flow_api.g_varchar2_table(291) := '746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A';
wwv_flow_api.g_varchar2_table(292) := '6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665';
wwv_flow_api.g_varchar2_table(293) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132633B0D0A7D0D0A0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F742920';
wwv_flow_api.g_varchar2_table(294) := '7B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574';
wwv_flow_api.g_varchar2_table(295) := '746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236635';
wwv_flow_api.g_varchar2_table(296) := '356134653B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D4275';
wwv_flow_api.g_varchar2_table(297) := '74746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(298) := '6F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E74';
wwv_flow_api.g_varchar2_table(299) := '2D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20233063306430663B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429';
wwv_flow_api.g_varchar2_table(300) := '3A686F7665722C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(301) := '726F756E642D636F6C6F723A20236435646164643B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(302) := '2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(303) := '65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236337636464323B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D42757474';
wwv_flow_api.g_varchar2_table(304) := '6F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E69';
wwv_flow_api.g_varchar2_table(305) := '6E6729207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E31323529';
wwv_flow_api.g_varchar2_table(306) := '20696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74';
wwv_flow_api.g_varchar2_table(307) := '282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D4275';
wwv_flow_api.g_varchar2_table(308) := '74746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A666F6375732C0D0A2E742D427574';
wwv_flow_api.g_varchar2_table(309) := '746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D737563636573';
wwv_flow_api.g_varchar2_table(310) := '73293A6E6F74282E742D427574746F6E2D2D7761726E696E67292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F';
wwv_flow_api.g_varchar2_table(311) := '6E2D2D686F74207B0D0A2020626F782D736861646F773A20302030203020317078202335623638373220696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C65';
wwv_flow_api.g_varchar2_table(312) := '2E742D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F74202E742D49636F6E207B0D0A2020636F6C6F723A20233562363837323B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E';
wwv_flow_api.g_varchar2_table(313) := '742D427574746F6E2D2D686F743A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742E69732D616374';
wwv_flow_api.g_varchar2_table(314) := '697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E742D';
wwv_flow_api.g_varchar2_table(315) := '49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742E69732D616374697665202E742D';
wwv_flow_api.g_varchar2_table(316) := '49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(317) := '646F773A20302030203020317078202363376364643220696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A';
wwv_flow_api.g_varchar2_table(318) := '6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A202338';
wwv_flow_api.g_varchar2_table(319) := '30386539613B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F';
wwv_flow_api.g_varchar2_table(320) := '6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292E69732D6163';
wwv_flow_api.g_varchar2_table(321) := '74697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236337636464323B0D0A2020636F6C6F723A20233063306430663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F7428';
wwv_flow_api.g_varchar2_table(322) := '2E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F';
wwv_flow_api.g_varchar2_table(323) := '6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233063306430663B0D0A';
wwv_flow_api.g_varchar2_table(324) := '7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202366626365346120696E7365';
wwv_flow_api.g_varchar2_table(325) := '743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(326) := '74746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20236331393130343B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(327) := '652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(328) := '6F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(329) := '20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D4963';
wwv_flow_api.g_varchar2_table(330) := '6F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574';
wwv_flow_api.g_varchar2_table(331) := '746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D4275';
wwv_flow_api.g_varchar2_table(332) := '74746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202366343433333620696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(333) := '6666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E676572';
wwv_flow_api.g_varchar2_table(334) := '3A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20236634343333363B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D42757474';
wwv_flow_api.g_varchar2_table(335) := '6F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D';
wwv_flow_api.g_varchar2_table(336) := '427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(337) := '2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64';
wwv_flow_api.g_varchar2_table(338) := '616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292E69732D';
wwv_flow_api.g_varchar2_table(339) := '616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F7429207B0D';
wwv_flow_api.g_varchar2_table(340) := '0A2020626F782D736861646F773A20302030203020317078202333626161326320696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E';
wwv_flow_api.g_varchar2_table(341) := '2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A20';
wwv_flow_api.g_varchar2_table(342) := '20636F6C6F723A20233362616132633B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D70';
wwv_flow_api.g_varchar2_table(343) := '6C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(344) := '686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132633B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7375';
wwv_flow_api.g_varchar2_table(345) := '63636573733A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A666F';
wwv_flow_api.g_varchar2_table(346) := '637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(347) := '236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A6E6F';
wwv_flow_api.g_varchar2_table(348) := '74283A686F766572293A6E6F74283A666F637573293A6E6F74282E69732D61637469766529207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(349) := '6E6F55493A666F6375732C0D0A2E742D427574746F6E2D2D6E6F55492E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A666F6375733A686F76';
wwv_flow_api.g_varchar2_table(350) := '6572207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6C696E6B207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(351) := '723A207472616E73706172656E742021696D706F7274616E743B0D0A2020626F782D736861646F773A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B3A686F766572207B0D0A2020746578742D6465636F72';
wwv_flow_api.g_varchar2_table(352) := '6174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2C0D0A2E742D427574746F6E2D2D6C696E6B202E742D49636F6E207B0D0A2020636F6C6F723A20233534363036393B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(353) := '2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E742D49636F6E207B0D0A2020636F6C6F723A20233562363837323B0D0A7D0D0A0D0A2E742D';
wwv_flow_api.g_varchar2_table(354) := '427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D61';
wwv_flow_api.g_varchar2_table(355) := '7279202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0D0A2020636F6C6F723A20233830386539612021696D706F7274616E743B0D0A7D0D0A0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(356) := '6F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67202E';
wwv_flow_api.g_varchar2_table(357) := '742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7761726E696E67202E742D49636F6E207B0D0A2020636F6C6F723A20236331393130342021696D706F7274616E743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(358) := '6E6F55492E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572202E742D49636F6E2C';
wwv_flow_api.g_varchar2_table(359) := '0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D64616E676572202E742D49636F6E207B0D0A2020636F6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D42';
wwv_flow_api.g_varchar2_table(360) := '7574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373202E742D49636F6E2C0D0A2E742D';
wwv_flow_api.g_varchar2_table(361) := '427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D73756363657373202E742D49636F6E207B0D0A2020636F6C6F723A20233362616132632021696D706F7274616E743B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67202E742D42';
wwv_flow_api.g_varchar2_table(362) := '7574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572207B0D0A2020626F726465722D7261646975733A203270783B0D0A20';
wwv_flow_api.g_varchar2_table(363) := '20626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A6265666F72652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976653A66';
wwv_flow_api.g_varchar2_table(364) := '6F6375733A6265666F7265207B0D0A2020626F782D736861646F773A20302030203020317078202338303865396120696E7365742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F7665';
wwv_flow_api.g_varchar2_table(365) := '722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E';
wwv_flow_api.g_varchar2_table(366) := '73706172656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(367) := '6F6E2E742D427574746F6E2D2D6865616465723A6163746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20';
wwv_flow_api.g_varchar2_table(368) := '302C20302C20302E34293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A2020';
wwv_flow_api.g_varchar2_table(369) := '626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565207B0D0A20206D696E2D77696474683A20333270783B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(370) := '6561646572547265653A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202338303865396120696E7365743B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830';
wwv_flow_api.g_varchar2_table(371) := '707829207B0D0A20202E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565207B0D0A202020206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A20207D0D0A7D0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(372) := '74746F6E2E742D427574746F6E2D2D6865616465725269676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236236623862653B0D0A2020626F726465723A2031707820736F6C696420233962396561363B0D0A7D0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(373) := '6F6E2E742D427574746F6E2D2D68656164657252696768743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233962396561363B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768743A61';
wwv_flow_api.g_varchar2_table(374) := '63746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D427574746F6E2D2D6E6176426172202E742D42757474';
wwv_flow_api.g_varchar2_table(375) := '6F6E2D6261646765207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3335293B0D0A7D0D0A2E742D427574746F6E2D2D68656C70427574746F';
wwv_flow_api.g_varchar2_table(376) := '6E202E612D49636F6E207B0D0A20206F7061636974793A202E353B0D0A7D0D0A0D0A2E742D4865616465722D6E6176426172202E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A2020626F726465722D626F74746F6D2D7269';
wwv_flow_api.g_varchar2_table(377) := '6768742D7261646975733A20303B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0D0A20206261636B67726F756E642D636F6C6F723A20233339343134373B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(378) := '0A0D0A2E742D427574746F6E2E742D427574746F6E2D2D6E6F5549202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6C696E6B202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D';
wwv_flow_api.g_varchar2_table(379) := '706C65202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A0D0A2E742D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D42';
wwv_flow_api.g_varchar2_table(380) := '7574746F6E2D2D64616E6765723A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73756363657373202E66613A61667465722C0D0A2E';
wwv_flow_api.g_varchar2_table(381) := '742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132633B0D0A7D0D0A0D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(382) := '7072696D617279202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A202363376364';
wwv_flow_api.g_varchar2_table(383) := '64323B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7761726E696E67202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A6166746572207B0D0A20206261';
wwv_flow_api.g_varchar2_table(384) := '636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D427574746F6E2D2D686F74202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E66613A';
wwv_flow_api.g_varchar2_table(385) := '6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A7D0D0A0D0A2E742D427574746F6E526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(386) := '3A20233363336333633B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(387) := '2E742D427574746F6E526567696F6E2D2D77697A6172642C0D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A2020626F726465722D7261646975733A2030203020327078203270783B0D0A7D0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(388) := '6F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F6479202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E74';
wwv_flow_api.g_varchar2_table(389) := '2D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D7469746C65202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F';
wwv_flow_api.g_varchar2_table(390) := '6E2D7469746C65207B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A2E742D426F64792D696E666F202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020';
wwv_flow_api.g_varchar2_table(391) := '636F6C6F723A20233036303630363B0D0A7D0D0A2E742D526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C652C0D0A2E742D427574746F6E526567696F6E202E742D';
wwv_flow_api.g_varchar2_table(392) := '427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D427574746F6E52656769';
wwv_flow_api.g_varchar2_table(393) := '6F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A0D0A2E66632E75692D776964676574207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(394) := '723A20236662666266623B0D0A7D0D0A2E66632D746F6F6C626172207B0D0A2020626F726465722D636F6C6F723A20236535653665383B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A2020626F726465722D72616469';
wwv_flow_api.g_varchar2_table(395) := '75733A2032707820327078203020303B0D0A7D0D0A2E66632D746F6F6C6261722068322C0D0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0D0A2E6663202E66632D6461792D6E756D626572207B0D0A2020';
wwv_flow_api.g_varchar2_table(396) := '636F6C6F723A20233363336333633B0D0A7D0D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0D0A2E66632D76696577202E75692D7769646765742D686561646572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(397) := '6F723A20236237623963303B0D0A2020636F6C6F723A20233030303030303B0D0A2020626F726465722D636F6C6F723A20236161616362343B0D0A7D0D0A6469762E66632D6167656E64614C697374207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(398) := '723A20236662666266623B0D0A2020626F726465722D636F6C6F723A20236535653665383B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D646179486561646572207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(399) := '726F756E642D636F6C6F723A20233963396661383B0D0A2020636F6C6F723A20233030303030303B0D0A2020626F726465722D636F6C6F723A20236636663666373B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D646179207B0D0A202063';
wwv_flow_api.g_varchar2_table(400) := '6F6C6F723A20233030303030303B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D64617465207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D737461';
wwv_flow_api.g_varchar2_table(401) := '72742D74696D652C0D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D616C6C2D646179207B0D0A2020636F6C6F723A20233632363236323B0D0A7D0D0A626F6479202E66632074642E66632D746F6461792C0D0A626F647920';
wwv_flow_api.g_varchar2_table(402) := '2E6663202E75692D7769646765742D636F6E74656E74207B0D0A2020626F726465722D636F6C6F723A20236530653165343B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A626F6479202E75692D7769646765742D636F6E74656E742E6663';
wwv_flow_api.g_varchar2_table(403) := '2D746F6461792E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236564656565663B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D6974656D207B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(404) := '6C6F723A20236636663666373B0D0A7D0D0A2E6663202E75692D627574746F6E3A6163746976652C0D0A2E6663202E75692D627574746F6E3A666F6375732C0D0A2E66632D766965773A6163746976652C0D0A2E66632D766965773A666F637573207B0D';
wwv_flow_api.g_varchar2_table(405) := '0A20206F75746C696E653A2031707820736F6C696420233562363837323B0D0A7D0D0A2E66632D766965772D636F6E7461696E6572203E202E66632D766965773A6163746976652C0D0A2E66632D766965772D636F6E7461696E6572203E202E66632D76';
wwv_flow_api.g_varchar2_table(406) := '6965773A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A0D0A2E742D436172642D77726170207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A202366626662';
wwv_flow_api.g_varchar2_table(407) := '66623B0D0A7D0D0A2E742D436172642D777261703A666F637573207B0D0A2020626F726465722D636F6C6F723A20233562363837323B0D0A7D0D0A2E742D436172642D69636F6E207B0D0A2020636F6C6F723A20236662666266623B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(408) := '436172642D64657363207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D436172642D696E666F2C0D0A2E742D436172642D7375627469746C65207B0D0A2020636F6C6F723A20233632363236323B0D0A7D0D0A2E742D436172642D';
wwv_flow_api.g_varchar2_table(409) := '7469746C65207B0D0A2020636F6C6F723A20233338336134303B0D0A7D0D0A2E742D436172642D636F6C6F7246696C6C2C0D0A2E742D436172642D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236237623963303B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(410) := '0D0A2E742D436C617373696343616C656E6461722D6D6F6E74685469746C65207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D436C617373696343616C656E6461722D646179436F6C756D6E207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(411) := '642D636F6C6F723A20236636663666373B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A2020626F726465722D636F6C6F723A20236564656565663B0D0A2020636F6C6F723A20233632363236323B0D0A7D0D0A2E742D436C61737369';
wwv_flow_api.g_varchar2_table(412) := '6343616C656E6461722D646179207B0D0A2020626F726465722D636F6C6F723A20236564656565663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E616374697665202E742D436C617373696343616C656E6461722D';
wwv_flow_api.g_varchar2_table(413) := '64617465207B0D0A20206F7061636974793A202E353B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D7765656B656E642C0D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E616374697665207B0D';
wwv_flow_api.g_varchar2_table(414) := '0A20206261636B67726F756E642D636F6C6F723A20236638663866393B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D746F646179202E742D436C617373696343616C656E6461722D64617465207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(415) := '726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D64617465207B0D0A2020636F6C6F723A20233763376337633B0D0A7D0D0A2E742D436C61';
wwv_flow_api.g_varchar2_table(416) := '7373696343616C656E6461722D6576656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236564656565663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E74207B0D0A2020636F6C6F723A20233363336333633B';
wwv_flow_api.g_varchar2_table(417) := '0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E742061207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C';
wwv_flow_api.g_varchar2_table(418) := '656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D74696D65436F6C207B0D0A20';
wwv_flow_api.g_varchar2_table(419) := '206261636B67726F756E642D636F6C6F723A20236636663666373B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74732C0D0A2E742D436C6173736963';
wwv_flow_api.g_varchar2_table(420) := '43616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D';
wwv_flow_api.g_varchar2_table(421) := '436C617373696343616C656E6461722D6461794576656E747320612C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E74732061207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(422) := '6E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179';
wwv_flow_api.g_varchar2_table(423) := '2C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179207B0D0A20206261636B67726F756E642D636F6C6F723A20236533653665393B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(424) := '436C617373696343616C656E6461722D6C697374207B0D0A2020626F726465722D636F6C6F723A20236564656565663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973745469746C652C0D0A2E742D436C617373696343616C656E64';
wwv_flow_api.g_varchar2_table(425) := '61722D6C6973744576656E74207B0D0A2020626F726465722D636F6C6F723A20236564656565663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973745469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A20236636';
wwv_flow_api.g_varchar2_table(426) := '663666373B0D0A2020636F6C6F723A20233632363236323B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174';
wwv_flow_api.g_varchar2_table(427) := '202E742D436F6D6D656E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D';
wwv_flow_api.g_varchar2_table(428) := '6D656E74732D636F6D6D656E743A6166746572207B0D0A2020626F726465722D72696768742D636F6C6F723A20236630663066303B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D6974656D2E69732D61637469';
wwv_flow_api.g_varchar2_table(429) := '7665202E742D436F6D6D656E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D43';
wwv_flow_api.g_varchar2_table(430) := '6F6D6D656E74732D6974656D2E69732D616374697665202E742D436F6D6D656E74732D636F6D6D656E743A6166746572207B0D0A2020626F726465722D72696768742D636F6C6F723A20236439643964393B0D0A7D0D0A2E742D436F6D6D656E74732D2D';
wwv_flow_api.g_varchar2_table(431) := '6261736963202E742D436F6D6D656E74732D6974656D2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766383B0D0A7D0D0A2E742D436F6D6D656E74732D6974656D2E69732D73797374656D4D65737361';
wwv_flow_api.g_varchar2_table(432) := '6765207B0D0A20206261636B67726F756E642D636F6C6F723A20236533653365333B0D0A7D0D0A2E742D436F6D6D656E74732D696E666F207B0D0A2020636F6C6F723A20233537353735373B0D0A7D0D0A2E742D436F6D6D656E74732D636F6D6D656E74';
wwv_flow_api.g_varchar2_table(433) := '207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D436F6E66696750616E656C2D61626F7574207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663765303B0D0A2020636F6C6F723A20233536353635363B0D0A7D';
wwv_flow_api.g_varchar2_table(434) := '0D0A2E742D436F6E66696750616E656C2D69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(435) := '2D436F6E66696750616E656C2D69636F6E2E69732D656E61626C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132633B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D64697361626C6564207B0D0A';
wwv_flow_api.g_varchar2_table(436) := '20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A7D0D0A2E742D436F6E66696750616E656C2D73657474696E672C0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A20233666366636663B';
wwv_flow_api.g_varchar2_table(437) := '0D0A7D0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0D0A2020636F6C6F723A20233666366636663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(438) := '0A2E742D436F6E66696750616E656C2D617474724C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D436F6E66696750616E656C2D617474725661';
wwv_flow_api.g_varchar2_table(439) := '6C7565207B0D0A2020636F6C6F723A20233534363036393B0D0A7D0D0A2E742D4469616C6F67207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D0A0D0A2E742D4469616C6F67203A3A2D7765626B69742D736372';
wwv_flow_api.g_varchar2_table(440) := '6F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20236237623963303B0D0A7D0D0A2E742D4469616C6F67203A3A2D7765626B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(441) := '67726F756E642D636F6C6F723A20236161616362343B0D0A7D0D0A2E742D4469616C6F673A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(442) := '2E742D466F6F7465722D746F70427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A2020636F6C6F723A20233438353134353B0D0A7D0D0A2E742D466F6F7465722D746F70427574746F6E3A666F637573';
wwv_flow_api.g_varchar2_table(443) := '207B0D0A2020626F782D736861646F773A20302030203020317078202335623638373220696E7365743B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E65723A6265666F7265207B0D0A2020636F6C6F723A20233336333633363B0D0A7D';
wwv_flow_api.g_varchar2_table(444) := '0D0A2E617065782D6974656D2D74657874617265612C0D0A2E617065782D6974656D2D746578742C0D0A2E617065782D6974656D2D73656C656374207B0D0A2020636F6C6F723A20233336333633363B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(445) := '3A20236634663566353B0D0A2020626F726465722D636F6C6F723A20236439646164653B0D0A7D0D0A2E617065782D6974656D2D74657874617265612E617065782D706167652D6974656D2D6572726F722C0D0A2E617065782D6974656D2D746578742E';
wwv_flow_api.g_varchar2_table(446) := '617065782D706167652D6974656D2D6572726F722C0D0A2E617065782D6974656D2D73656C6563742E617065782D706167652D6974656D2D6572726F72207B0D0A2020626F726465722D636F6C6F723A20236637373036363B0D0A7D0D0A2E617065782D';
wwv_flow_api.g_varchar2_table(447) := '6974656D2D74657874617265612E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E617065782D6974656D2D746578742E617065782D706167652D6974656D2D6572726F723A72657175697265643A7661';
wwv_flow_api.g_varchar2_table(448) := '6C69642C0D0A2E617065782D6974656D2D73656C6563742E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C6964207B0D0A2020626F726465722D636F6C6F723A20236439646164653B0D0A7D0D0A2E742D466F726D2D';
wwv_flow_api.g_varchar2_table(449) := '6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E742D466F726D2D696E707574436F6E7461696E6572202E617065782D6974656D2D646973706C61792D6F6E6C79207B0D0A2020636F6C6F723A20233336333633363B0D0A20';
wwv_flow_api.g_varchar2_table(450) := '206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236439646164653B0D0A2020626F726465722D7374796C653A206461736865643B0D0A7D0D0A0D0A2E617065782D6974656D2D66696C65';
wwv_flow_api.g_varchar2_table(451) := '2D64726F707A6F6E652D6C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20726762612835342C2035342C2035342C20302E37293B0D0A2020626F726465722D7261646975733A2032';
wwv_flow_api.g_varchar2_table(452) := '707820302030203270783B0D0A7D0D0A2E752D52544C202E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E617065782D697465';
wwv_flow_api.g_varchar2_table(453) := '6D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236634663566353B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E61706578';
wwv_flow_api.g_varchar2_table(454) := '2D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E617065782D6974656D2D66696C653A686F766572202B202E617065782D6974656D2D66696C';
wwv_flow_api.g_varchar2_table(455) := '652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E617065782D6974656D2D66696C653A686F766572202B202E617065782D697465';
wwv_flow_api.g_varchar2_table(456) := '6D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D';
wwv_flow_api.g_varchar2_table(457) := '0A2E617065782D6974656D2D66696C653A666F637573202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(458) := '233562363837323B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E617065782D6974656D2D66696C653A666F637573202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F';
wwv_flow_api.g_varchar2_table(459) := '707A6F6E652D69636F6E207B0D0A2020626F726465722D636F6C6F723A20233562363837323B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E617065782D6974';
wwv_flow_api.g_varchar2_table(460) := '656D2D74657874617265613A666F6375732C0D0A2E617065782D6974656D2D746578743A666F6375732C0D0A2E617065782D6974656D2D73656C6563743A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666662021';
wwv_flow_api.g_varchar2_table(461) := '696D706F7274616E743B0D0A2020626F726465722D636F6C6F723A20233562363837322021696D706F7274616E743B0D0A7D0D0A2E617065782D6974656D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0D0A2E617065782D697465';
wwv_flow_api.g_varchar2_table(462) := '6D2D746578743A666F6375733A3A2D6D732D76616C75652C0D0A2E617065782D6974656D2D73656C6563743A666F6375733A3A2D6D732D76616C7565207B0D0A2020636F6C6F723A20233336333633363B0D0A20200D0A7D0D0A2E617065782D6974656D';
wwv_flow_api.g_varchar2_table(463) := '2D74657874617265613A686F7665722C0D0A2E617065782D6974656D2D746578743A686F7665722C0D0A2E617065782D6974656D2D73656C6563743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(464) := '0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69742D696E7075742D706C616365686F6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E343B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(465) := '742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D6D6F7A2D706C616365686F6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E343B0D0A7D0D0A2E742D466F726D2D696E707574';
wwv_flow_api.g_varchar2_table(466) := '436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E343B0D0A7D0D0A2E742D466F726D20696E7075742E66696C65207B0D';
wwv_flow_api.g_varchar2_table(467) := '0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C79207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A202062';
wwv_flow_api.g_varchar2_table(468) := '61636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D73656C6563742C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C0D0A2E742D466F72';
wwv_flow_api.g_varchar2_table(469) := '6D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F207B0D0A2020636F6C6F723A20233336333633363B0D0A2020626F726465722D636F6C6F723A20236439646164653B0D0A7D0D0A2E742D466F726D2D6669656C642D2D726561';
wwv_flow_api.g_varchar2_table(470) := '644F6E6C79207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D726164696F4C6162656C2C0D0A2E742D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F';
wwv_flow_api.g_varchar2_table(471) := '7570206C6162656C2C0D0A2E742D466F726D2D636865636B626F784C6162656C2C0D0A2E742D466F726D2D696E707574436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0D0A2E742D466F726D2D6C6162656C207B0D0A20';
wwv_flow_api.g_varchar2_table(472) := '20636F6C6F723A20233439343934393B0D0A7D0D0A2E742D466F726D2D6572726F72207B0D0A2020636F6C6F723A20236634343333363B0D0A7D0D0A2E742D466F726D2D706F737454657874207B0D0A2020636F6C6F723A20236338633863383B0D0A7D';
wwv_flow_api.g_varchar2_table(473) := '0D0A2E742D466F726D2D2D73656172636820696E7075742E742D466F726D2D7365617263684669656C64207B0D0A20206261636B67726F756E642D636F6C6F723A20236634663566353B0D0A2020636F6C6F723A20233332333433393B0D0A7D0D0A2E61';
wwv_flow_api.g_varchar2_table(474) := '2D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D5254';
wwv_flow_api.g_varchar2_table(475) := '4C202E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0D0A2E752D52544C202E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0D0A2020626F726465722D7261646975733A203270782030203020327078';
wwv_flow_api.g_varchar2_table(476) := '3B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E686173446174657069636B65722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(477) := '722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D696E707574436F6E7461696E657220696E7075742E686173446174657069636B65722C0D0A2E752D52544C202E742D466F726D2D696E70757443';
wwv_flow_api.g_varchar2_table(478) := '6F6E7461696E657220696E7075742E706F7075705F6C6F76207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A0D0A2E636865636B626F785F67726F757020696E7075742C0D0A2E726164696F5F67726F7570';
wwv_flow_api.g_varchar2_table(479) := '20696E707574207B0D0A20200D0A20200D0A7D0D0A2E636865636B626F785F67726F757020696E707574202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E707574202B206C6162656C3A6265666F7265207B0D0A202062';
wwv_flow_api.g_varchar2_table(480) := '61636B67726F756E642D636F6C6F723A20236634663566353B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A666F637573202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A666F63757320';
wwv_flow_api.g_varchar2_table(481) := '2B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233562363837323B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6265666F72652C0D0A';
wwv_flow_api.g_varchar2_table(482) := '2E726164696F5F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233562363837323B0D0A20206261636B67726F756E642D636F6C6F723A20233562';
wwv_flow_api.g_varchar2_table(483) := '363837323B0D0A2020626F782D736861646F773A20302030203020317078202366346635663520696E7365743B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A636865636B6564202B206C6162656C3A6265666F72652C0D0A2E7261';
wwv_flow_api.g_varchar2_table(484) := '64696F5F67726F757020696E7075743A636865636B6564202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233562363837323B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A7D0D';
wwv_flow_api.g_varchar2_table(485) := '0A0D0A2E726164696F5F67726F757020696E707574202B206C6162656C3A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236634663566353B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D7072';
wwv_flow_api.g_varchar2_table(486) := '6554657874426C6F636B202E742D466F726D2D6974656D546578742D2D7072652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D6974656D546578742D2D706F7374207B0D0A20';
wwv_flow_api.g_varchar2_table(487) := '206261636B67726F756E642D636F6C6F723A20236634663566353B0D0A2020626F782D736861646F773A20302030203020302E3172656D202364396461646520696E7365743B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(488) := '2D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D707265207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C';
wwv_flow_api.g_varchar2_table(489) := '202E742D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D707265207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(490) := '466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D6974656D546578742D2D706F7374207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D5254';
wwv_flow_api.g_varchar2_table(491) := '4C202E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D6974656D546578742D2D706F7374207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(492) := '0D0A2E617065782D6974656D2D6861732D69636F6E3A666F637573202B202E617065782D6974656D2D69636F6E207B0D0A2020636F6C6F723A20233562363837323B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F';
wwv_flow_api.g_varchar2_table(493) := '6174696E674C6162656C202E617065782D6974656D2D69636F6E207B0D0A2020636F6C6F723A20233632363236323B0D0A2020626F782D736861646F773A202D302E3172656D20302030202364396461646520696E7365743B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(494) := '7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D69636F6E207B0D0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(495) := '773A20302E3172656D20302030202364396461646520696E7365743B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C616265';
wwv_flow_api.g_varchar2_table(496) := '6C202E617065782D6974656D2D6861732D69636F6E3A666F637573202B202E617065782D6974656D2D69636F6E207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A0D0A2E742D466F726D2D68656C70427574746F6E3A666F63757320';
wwv_flow_api.g_varchar2_table(497) := '2E612D49636F6E207B0D0A2020636F6C6F723A20233562363837323B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E742D466F726D2D6974656D57726170706572203E202E61';
wwv_flow_api.g_varchar2_table(498) := '7065782D6974656D2D67726F7570203E202E617065782D6974656D2D6F7074696F6E3A66697273742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E742D466F726D2D';
wwv_flow_api.g_varchar2_table(499) := '6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E742D466F726D2D6974656D57726170706572203E202E617065782D6974656D2D67726F7570203E202E617065782D6974656D2D6F7074696F6E3A6C6173742D6F662D';
wwv_flow_api.g_varchar2_table(500) := '74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2030203020327078203270783B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D697465';
wwv_flow_api.g_varchar2_table(501) := '6D2D67726964202E617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C64202E617065782D6974656D2D6F7074696F6E3A66697273742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820';
wwv_flow_api.g_varchar2_table(502) := '302030203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964202E617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C64';
wwv_flow_api.g_varchar2_table(503) := '202E617065782D6974656D2D6F7074696F6E3A6C6173742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461';
wwv_flow_api.g_varchar2_table(504) := '696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964202E617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C64202E617065782D6974656D2D6F7074696F6E3A66697273742D6F662D747970';
wwv_flow_api.g_varchar2_table(505) := '65206C6162656C207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D69';
wwv_flow_api.g_varchar2_table(506) := '74656D2D67726964202E617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C64202E617065782D6974656D2D6F7074696F6E3A6C6173742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A20327078';
wwv_flow_api.g_varchar2_table(507) := '20302030203270783B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A7D0D0A2E742D4865616465722D6C6F676F2C0D0A2E742D486561646572202E74';
wwv_flow_api.g_varchar2_table(508) := '2D427574746F6E2D2D6865616465722E69732D6163746976652C0D0A2E742D486561646572202E742D427574746F6E2D2D686561646572207B0D0A2020636F6C6F723A20236661663766613B0D0A7D0D0A2E742D4865616465722D6C6F676F3A686F7665';
wwv_flow_api.g_varchar2_table(509) := '722C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465723A686F766572207B0D0A2020746578742D6465636F7261';
wwv_flow_api.g_varchar2_table(510) := '74696F6E3A206E6F6E653B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B3A666F6375732C0D0A2E742D4865616465722D6C';
wwv_flow_api.g_varchar2_table(511) := '6F676F2D6C696E6B3A6163746976653A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202338303865396120696E7365743B0D0A7D0D0A2E742D4865616465722D6E617620';
wwv_flow_api.g_varchar2_table(512) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E7370617265';
wwv_flow_api.g_varchar2_table(513) := '6E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D48656164';
wwv_flow_api.g_varchar2_table(514) := '6572202E612D4D656E752E612D4D656E752D2D746F70203E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D746F702D77696474683A20303B0D0A7D0D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0D0A';
wwv_flow_api.g_varchar2_table(515) := '2020626F782D736861646F773A20302032707820367078207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D4865616465722D6E61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E7370617265';
wwv_flow_api.g_varchar2_table(516) := '6E743B0D0A7D0D0A2E742D4865726F526567696F6E2D69636F6E207B0D0A2020626F726465722D7261646975733A203470783B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(517) := '0D0A7D0D0A2E742D4865726F526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233137316131363B0D0A7D0D0A2E742D4865726F526567696F6E2D636F6C2D2D636F6E74656E74207B0D0A2020636F6C6F723A20236630663066303B0D0A7D';
wwv_flow_api.g_varchar2_table(518) := '0D0A0D0A2E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266';
wwv_flow_api.g_varchar2_table(519) := '623B0D0A7D0D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B0D0A2020636F6C6F723A20233666366636663B0D0A7D0D0A2E612D4952522D7265706F727453756D6D6172792D76616C7565207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(520) := '3A20233363336333633B0D0A7D0D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0D0A2020626F726465722D746F702D636F6C6F723A20236630663166323B0D0A20206261636B67726F756E642D636F6C6F723A2023663666366637';
wwv_flow_api.g_varchar2_table(521) := '3B0D0A7D0D0A2E612D4952522D66756C6C56696577207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0D0A2020';
wwv_flow_api.g_varchar2_table(522) := '6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D4952522D746F6F6C626172207B0D0A20206261636B67726F756E643A20236335633763633B0D0A2020626F726465722D636F6C6F723A2023616161636234';
wwv_flow_api.g_varchar2_table(523) := '3B0D0A7D0D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A7D0D0A2E612D5265706F72742D70657263656E744368617274207B0D0A20206261';
wwv_flow_api.g_varchar2_table(524) := '636B67726F756E642D636F6C6F723A20236533653665393B0D0A7D0D0A2E612D4952522D627574746F6E2D2D636F6C536561726368207B0D0A20202D7765626B69742D626F726465722D746F702D72696768742D7261646975733A203070782021696D70';
wwv_flow_api.g_varchar2_table(525) := '6F7274616E743B0D0A20202D7765626B69742D626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A20202D6D6F7A2D626F726465722D7261646975732D746F7072696768743A203070782020';
wwv_flow_api.g_varchar2_table(526) := '21696D706F7274616E743B0D0A20202D6D6F7A2D626F726465722D7261646975732D626F74746F6D72696768743A203070782021696D706F7274616E743B0D0A2020626F726465722D746F702D72696768742D7261646975733A203070782021696D706F';
wwv_flow_api.g_varchar2_table(527) := '7274616E743B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A7D0D0A2E612D4952522D69636F6E566965775461626C652C0D0A2E612D4952522D6368617274566965772C0D0A';
wwv_flow_api.g_varchar2_table(528) := '2E612D4952522D7069766F74566965772C0D0A2E612D4952522D67726F75704279566965772C0D0A2E612D4952522D64657461696C56696577207B0D0A2020626F726465722D746F702D636F6C6F723A20236630663166323B0D0A7D0D0A2E612D495252';
wwv_flow_api.g_varchar2_table(529) := '2D746F6F6C6261722D2D73696E676C65526F77207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20236562656265643B0D0A7D0D0A2E612D4952522D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A2023663666';
wwv_flow_api.g_varchar2_table(530) := '3666373B0D0A2020626F726465722D746F703A2031707820736F6C696420236530653165343B0D0A2020626F782D736861646F773A20696E7365742031707820302030203020236530653165343B0D0A7D0D0A2E612D4952522D6865616465723A686F76';
wwv_flow_api.g_varchar2_table(531) := '6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236564656565663B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652061207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4952522D686561';
wwv_flow_api.g_varchar2_table(532) := '6465722E69732D616374697665202E612D4952522D686561646572536F7274207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D61';
wwv_flow_api.g_varchar2_table(533) := '6374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233230323032303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D6865616465722D2D67726F7570207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(534) := '3A20236630663166323B0D0A7D0D0A2E612D4952522D7461626C65207472207464207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E612D4952522D7461626C';
wwv_flow_api.g_varchar2_table(535) := '65207B0D0A2020626F726465722D636F6C6C617073653A2073657061726174653B0D0A7D0D0A2E612D4952522D7461626C652074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A20236634663566353B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(536) := '742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4952522D7461626C65207464207B0D0A2020626F726465722D6C6566743A2031707820736F';
wwv_flow_api.g_varchar2_table(537) := '6C696420236564656565663B0D0A2020626F726465722D746F703A2031707820736F6C696420236564656565663B0D0A7D0D0A2E612D4952522D6865616465724C696E6B3A666F637573207B0D0A2020626F782D736861646F773A203020302030203170';
wwv_flow_api.g_varchar2_table(538) := '78202335623638373220696E7365743B0D0A7D0D0A2E612D4952522D7365617263682D6669656C643A666F637573207B0D0A2020626F726465722D636F6C6F723A20233562363837323B0D0A2020626F782D736861646F773A202D317078203020302023';
wwv_flow_api.g_varchar2_table(539) := '35623638373220696E7365742C2031707820302030202335623638373220696E7365743B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D652C0D0A2E612D4952522D73696E676C65526F772D76616C7565207B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(540) := '626F74746F6D2D636F6C6F723A20236562656265643B0D0A2020636F6C6F723A20233338336134303B0D0A7D0D0A2E612D4952522D73696E676C65526F772D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B';
wwv_flow_api.g_varchar2_table(541) := '0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20236633663366343B0D0A7D0D0A2E612D4952522D7369';
wwv_flow_api.g_varchar2_table(542) := '6E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A20236633663366343B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D6E616D65207B0D';
wwv_flow_api.g_varchar2_table(543) := '0A20206261636B67726F756E642D636F6C6F723A20236562656265643B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(544) := '3A20233562363837323B0D0A7D0D0A2E612D4952522D7265706F727453756D6D6172792D6C6162656C2C0D0A2E612D4952522D636F6E74726F6C734C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D';
wwv_flow_api.g_varchar2_table(545) := '0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0D0A20202E69732D6D6178696D697A65642E742D4952522D726567696F6E202E742D6668742D7468656164202E612D4952522D6865616465';
wwv_flow_api.g_varchar2_table(546) := '72207B0D0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236530653165343B0D0A20207D0D0A7D0D0A2E75692D7769646765742D636F6E74656E74202E612D4952522D69636F6E4C6973742D6C696E6B207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(547) := '6F723A20233363336333633B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D0A2E612D4952522D69636F6E4C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236633';
wwv_flow_api.g_varchar2_table(548) := '663366343B0D0A7D0D0A0D0A2E612D4952522D627574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20696E68657269743B0D0A7D0D0A0D0A2E612D4952522D736F7274576964676574207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(549) := '6C6F723A20726762612833322C2033322C2033322C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A2020636F6C6F723A20234646463B0D0A2020626F726465722D77696474683A';
wwv_flow_api.g_varchar2_table(550) := '20303B0D0A2020626F782D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E35292C2030203870782031367078202D347078207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E612D4952';
wwv_flow_api.g_varchar2_table(551) := '522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C626172207B0D0A202077696474683A203870783B0D0A20206865696768743A203870783B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363';
wwv_flow_api.g_varchar2_table(552) := '726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C';
wwv_flow_api.g_varchar2_table(553) := '6C6261722D747261636B207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A0D0A2E612D4952522D736F72745769646765742D68656C70207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(554) := '726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0D0A202070616464696E673A203870783B0D0A2020626F726465722D7261646975733A203270783B0D';
wwv_flow_api.g_varchar2_table(555) := '0A202077696474683A206175746F3B0D0A2020626F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E612D4952522D736F72745769646765742D616374696F6E732D6974656D207B0D0A2020626F726465722D72696768742D77696474';
wwv_flow_api.g_varchar2_table(556) := '683A20303B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20234646463B0D';
wwv_flow_api.g_varchar2_table(557) := '0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612830';
wwv_flow_api.g_varchar2_table(558) := '2C20302C20302C20302E35293B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202335623638373220696E73';
wwv_flow_api.g_varchar2_table(559) := '65743B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E2E69732D6163746976652C0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A61637469';
wwv_flow_api.g_varchar2_table(560) := '76653A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C207B0D0A20206865696768743A2034';
wwv_flow_api.g_varchar2_table(561) := '3070783B0D0A202070616464696E673A2031327078203870783B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D736F72';
wwv_flow_api.g_varchar2_table(562) := '745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A202061';
wwv_flow_api.g_varchar2_table(563) := '7070656172616E63653A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20206865696768743A20343070783B0D0A2020636F6C6F723A20234646463B0D0A7D0D';
wwv_flow_api.g_varchar2_table(564) := '0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D3A666F637573207B0D0A2020626F782D736861646F773A20302030203020';
wwv_flow_api.g_varchar2_table(565) := '317078202335623638373220696E7365743B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F7773207B0D0A2020626F726465722D746F702D77696474683A20303B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F77207B0D';
wwv_flow_api.g_varchar2_table(566) := '0A2020636F6C6F723A20234646463B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F773A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128323535';
wwv_flow_api.g_varchar2_table(567) := '2C203235352C203235352C20302E3135293B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F773A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202335623638373220696E7365743B0D0A7D0D0A2E612D';
wwv_flow_api.g_varchar2_table(568) := '4947202E612D4952522D736F72745769646765743A6265666F7265207B0D0A2020636F6C6F723A20726762612833322C2033322C2033322C20302E3935293B0D0A7D0D0A2E6F6A2D6476742D63617465676F727931207B0D0A2020636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(569) := '30396664623B0D0A7D0D0A2E6F6A2D6476742D63617465676F727932207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A2E6F6A2D6476742D63617465676F727933207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A2E6F6A';
wwv_flow_api.g_varchar2_table(570) := '2D6476742D63617465676F727934207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A2E6F6A2D6476742D63617465676F727935207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A2E6F6A2D6476742D63617465676F727936';
wwv_flow_api.g_varchar2_table(571) := '207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A2E6F6A2D6476742D63617465676F727937207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A2E6F6A2D6476742D63617465676F727938207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(572) := '6538356438383B0D0A7D0D0A2E6F6A2D6476742D63617465676F727939207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793130207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(573) := '6F6A2D6476742D63617465676F72793131207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793132207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A0D0A2E742D4C696E6B734C6973';
wwv_flow_api.g_varchar2_table(574) := '742D6974656D2C0D0A2E742D4C696E6B734C6973742D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20236530653165343B0D0A7D0D0A2E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A20236432643464383B0D0A7D';
wwv_flow_api.g_varchar2_table(575) := '0D0A2E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236564656565663B0D0A7D0D0A2E742D4C696E6B734C6973742D6C696E6B3A666F637573207B0D0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(576) := '773A20302030203020317078202335623638373220696E7365743B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D73686F774172726F77202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A202364326434';
wwv_flow_api.g_varchar2_table(577) := '64383B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236630663166323B0D0A2020636F6C6F723A202333633363';
wwv_flow_api.g_varchar2_table(578) := '33633B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(579) := '35653665383B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564203E202E742D4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D6261';
wwv_flow_api.g_varchar2_table(580) := '646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236237623963303B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E74';
wwv_flow_api.g_varchar2_table(581) := '2D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D';
wwv_flow_api.g_varchar2_table(582) := '4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F7665';
wwv_flow_api.g_varchar2_table(583) := '72202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D4C696E6B734C6973742D';
wwv_flow_api.g_varchar2_table(584) := '6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E30313529';
wwv_flow_api.g_varchar2_table(585) := '2C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E30313529293B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E';
wwv_flow_api.g_varchar2_table(586) := '69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A20233562363837323B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E74';
wwv_flow_api.g_varchar2_table(587) := '2D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D626164';
wwv_flow_api.g_varchar2_table(588) := '6765207B0D0A2020626F726465722D7261646975733A203470783B0D0A7D0D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E6B734C6973742D69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A';
wwv_flow_api.g_varchar2_table(589) := '7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0D0A2020636F6C6F723A20233066306530663B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C';
wwv_flow_api.g_varchar2_table(590) := '6973742D69636F6E207B0D0A2020636F6C6F723A20233066306530663B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E2C0D0A';
wwv_flow_api.g_varchar2_table(591) := '2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162656C2C0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973';
wwv_flow_api.g_varchar2_table(592) := '742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A';
wwv_flow_api.g_varchar2_table(593) := '20206261636B67726F756E642D636F6C6F723A20236138616262323B0D0A7D0D0A0D0A2E742D4C6F67696E2D69636F6E56616C69646174696F6E207B0D0A20206261636B67726F756E643A20233362616132633B0D0A2020636F6C6F723A207768697465';
wwv_flow_api.g_varchar2_table(594) := '3B0D0A7D0D0A626F6479202E742D4C6F67696E2D7469746C65207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D4C6F67696E2D726567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A';
wwv_flow_api.g_varchar2_table(595) := '7D0D0A2E742D4C6F67696E2D6C6F676F207B0D0A2020636F6C6F723A20233562363837323B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(596) := '2D2D6C6F67696E2C0D0A20202E742D50616765426F64792D2D6C6F67696E202E742D426F6479207B0D0A202020206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A20207D0D0A7D0D0A0D0A2E742D4D656469614C697374207B0D0A';
wwv_flow_api.g_varchar2_table(597) := '2020626F726465722D636F6C6F723A20236461646364663B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D0A2E742D4D656469614C6973742D6974656D207B0D0A2020626F726465722D636F6C6F723A2023646164';
wwv_flow_api.g_varchar2_table(598) := '6364663B0D0A7D0D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D6974656D207B0D0A2020626F726465722D72696768743A2031707820736F6C696420236461646364663B0D0A7D0D0A0D0A612E742D';
wwv_flow_api.g_varchar2_table(599) := '4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20233534363036393B0D0A7D0D0A612E742D4D656469614C6973742D6974656D577261703A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2023663666';
wwv_flow_api.g_varchar2_table(600) := '3666373B0D0A2020636F6C6F723A20233534363036393B0D0A7D0D0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202335623638373220696E7365743B0D0A';
wwv_flow_api.g_varchar2_table(601) := '7D0D0A2E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D4D656469614C6973742D62616467652C0D0A2E742D4D656469614C6973742D64657363207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(602) := '20233666366636663B0D0A7D0D0A2E742D4D656469614C6973742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236237623963303B0D0A2020636F6C6F723A20236662666266623B0D0A7D0D0A2E742D4D656469614C6973742D';
wwv_flow_api.g_varchar2_table(603) := '2D636F6C73207B0D0A2020626F782D736861646F773A202D317078202D31707820302030202364616463646620696E7365743B0D0A7D0D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6265666F72652C';
wwv_flow_api.g_varchar2_table(604) := '0D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236530653165343B0D0A7D0D0A0D0A2E612D4D656E754261722D6C6162656C20';
wwv_flow_api.g_varchar2_table(605) := '7B0D0A2020636F6C6F723A20236666666666663B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020646973706C61793A20696E';
wwv_flow_api.g_varchar2_table(606) := '6C696E652D626C6F636B3B0D0A202070616464696E673A2038707820303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206D617267696E2D72696768743A203870783B0D0A20206D617267696E2D6C6566743A202D3470783B0D0A';
wwv_flow_api.g_varchar2_table(607) := '7D0D0A2E612D4D656E754261722D6974656D207B0D0A20206261636B67726F756E643A20233562363837323B0D0A2020626F726465722D72696768743A2031707820736F6C696420233732383238653B0D0A2020626F726465722D6C6566743A20317078';
wwv_flow_api.g_varchar2_table(608) := '20736F6C696420233732383238653B0D0A20206D617267696E2D6C6566743A202D3170783B0D0A7D0D0A2E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E612D4D65';
wwv_flow_api.g_varchar2_table(609) := '6E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E754261722E752D52544C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D';
wwv_flow_api.g_varchar2_table(610) := '4D656E752D7375624D656E75436F6C207B0D0A2020626F726465723A206E6F6E653B0D0A20206D617267696E2D72696768743A20303B0D0A202070616464696E673A203870782038707820387078203470783B0D0A7D0D0A2E612D4D656E754261722D69';
wwv_flow_api.g_varchar2_table(611) := '74656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E612D4D656E754261722D6974656D3A686F766572207B0D0A';
wwv_flow_api.g_varchar2_table(612) := '20206261636B67726F756E642D636F6C6F723A20233732383238653B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233732383238653B0D0A7D0D0A0D0A2E';
wwv_flow_api.g_varchar2_table(613) := '742D4D656E752D6261646765207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A2020626F726465722D7261646975733A203270783B0D0A202070616464696E673A2030203670783B0D0A2020666F6E742D73697A653A20313170';
wwv_flow_api.g_varchar2_table(614) := '783B0D0A2020666F6E742D7765696768743A206E6F726D616C3B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E612D';
wwv_flow_api.g_varchar2_table(615) := '4D656E752D6C6162656C436F6E7461696E6572202E742D4D656E752D6261646765207B0D0A20206C696E652D6865696768743A20313670783B0D0A20206D617267696E2D6C6566743A203470783B0D0A20206D617267696E2D746F703A203870783B0D0A';
wwv_flow_api.g_varchar2_table(616) := '7D0D0A0D0A2E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E612D4D';
wwv_flow_api.g_varchar2_table(617) := '656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E612D4D656E752D2D63757272656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(618) := '3865396261353B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236261626363323B0D0A7D0D0A2E612D4D656E7520';
wwv_flow_api.g_varchar2_table(619) := '2E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E612D4D';
wwv_flow_api.g_varchar2_table(620) := '656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20233366336633663B0D0A7D0D0A2E612D4D65';
wwv_flow_api.g_varchar2_table(621) := '6E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(622) := '6F723A20236666666666663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E612D4D656E75202E612D4D656E75';
wwv_flow_api.g_varchar2_table(623) := '2D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E65';
wwv_flow_api.g_varchar2_table(624) := '72202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E75';
wwv_flow_api.g_varchar2_table(625) := '202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(626) := '696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3735293B0D';
wwv_flow_api.g_varchar2_table(627) := '0A7D0D0A2E612D4D656E752D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283138362C203138382C203139342C20302E3935293B0D0A2020626F726465722D636F6C6F723A20233966613261613B0D0A202062';
wwv_flow_api.g_varchar2_table(628) := '6F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D4D656E75426172207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(629) := '4865616465722D6E61762D6C6973742C0D0A2E742D486561646572202E612D4D656E75426172207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A20200D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(630) := '742D526567696F6E202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233263326533323B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E';
wwv_flow_api.g_varchar2_table(631) := '202E612D4D656E752D7375624D656E75436F6C207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202070616464696E673A2038707820303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206D617267696E';
wwv_flow_api.g_varchar2_table(632) := '2D72696768743A203870783B0D0A20206D617267696E2D6C6566743A202D3470783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A20206261636B67726F756E643A20236564656565663B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(633) := '2D72696768743A2031707820736F6C696420236432643464383B0D0A2020626F726465722D6C6566743A2031707820736F6C696420236432643464383B0D0A20206D617267696E2D6C6566743A202D3170783B0D0A7D0D0A2E742D526567696F6E202E61';
wwv_flow_api.g_varchar2_table(634) := '2D4D656E754261722D6974656D3A66697273742D6368696C64207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E75';
wwv_flow_api.g_varchar2_table(635) := '2D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E754261722E752D52544C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(636) := '6465723A206E6F6E653B0D0A20206D617267696E2D72696768743A20303B0D0A202070616464696E673A203870782038707820387078203470783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D64697361626C65';
wwv_flow_api.g_varchar2_table(637) := '64202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20726762612834342C2034362C2035302C20302E35293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(638) := '726F756E642D636F6C6F723A20236432643464383B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236432643464383B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(639) := '2E742D526567696F6E202E742D4D656E752D6261646765207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A2020626F726465722D7261646975733A203270783B0D0A202070616464696E673A2030203670783B0D0A2020666F6E';
wwv_flow_api.g_varchar2_table(640) := '742D73697A653A20313170783B0D0A2020666F6E742D7765696768743A206E6F726D616C3B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E32';
wwv_flow_api.g_varchar2_table(641) := '35293B0D0A7D0D0A2E612D4D656E752D6C6162656C436F6E7461696E6572202E742D526567696F6E202E742D4D656E752D6261646765207B0D0A20206C696E652D6865696768743A20313670783B0D0A20206D617267696E2D6C6566743A203470783B0D';
wwv_flow_api.g_varchar2_table(642) := '0A20206D617267696E2D746F703A203870783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D';
wwv_flow_api.g_varchar2_table(643) := '4D656E752D6974656D207B0D0A2020636F6C6F723A20233038303930613B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31';
wwv_flow_api.g_varchar2_table(644) := '35293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D2D63757272656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236237623963303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D697465';
wwv_flow_api.g_varchar2_table(645) := '6D2E69732D64697361626C65642E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236335633763633B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D6469736162';
wwv_flow_api.g_varchar2_table(646) := '6C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0D0A2020636F6C6F723A20233039303930393B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E75';
wwv_flow_api.g_varchar2_table(647) := '2D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20233439343934393B0D0A7D0D0A2E742D526567696F6E202E612D4D656E';
wwv_flow_api.g_varchar2_table(648) := '75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236564656565';
wwv_flow_api.g_varchar2_table(649) := '663B0D0A2020636F6C6F723A20233263326533323B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F';
wwv_flow_api.g_varchar2_table(650) := '6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E742D526567696F6E202E612D4D656E75';
wwv_flow_api.g_varchar2_table(651) := '202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D65787061';
wwv_flow_api.g_varchar2_table(652) := '6E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E657220';
wwv_flow_api.g_varchar2_table(653) := '2E612D4D656E752D616363656C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(654) := '20233263326533323B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A207267626128382C20392C2031302C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E';
wwv_flow_api.g_varchar2_table(655) := '752D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283139372C203139392C203230342C20302E3935293B0D0A2020626F726465722D636F6C6F723A20236161616362343B0D0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(656) := '20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A0D0A2E742D486561646572207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6C';
wwv_flow_api.g_varchar2_table(657) := '6162656C207B0D0A2020636F6C6F723A20236261626363323B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C69676E3A';
wwv_flow_api.g_varchar2_table(658) := '20746F703B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(659) := '6F723A20233530356236342021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D';
wwv_flow_api.g_varchar2_table(660) := '4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20233530356236342021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D';
wwv_flow_api.g_varchar2_table(661) := '4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162';
wwv_flow_api.g_varchar2_table(662) := '656C207B0D0A2020636F6C6F723A20236261626363322021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D';
wwv_flow_api.g_varchar2_table(663) := '0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233530356236342021696D706F7274616E743B0D0A7D';
wwv_flow_api.g_varchar2_table(664) := '0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A2072676261283138362C203138382C203139342C20302E38293B0D0A2020626F';
wwv_flow_api.g_varchar2_table(665) := '726465722D636F6C6F723A20233562363837323B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F63757365';
wwv_flow_api.g_varchar2_table(666) := '64203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A202062';
wwv_flow_api.g_varchar2_table(667) := '61636B67726F756E642D636F6C6F723A20233732383238653B0D0A2020626F726465722D636F6C6F723A20233732383238653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D';
wwv_flow_api.g_varchar2_table(668) := '2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20233830386539613B0D0A2020626F726465722D636F6C6F723A20233830386539613B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(669) := '486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(670) := '723A20236261626363323B0D0A2020626F726465722D636F6C6F723A20236261626363323B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E646564203E';
wwv_flow_api.g_varchar2_table(671) := '202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236230623963303B0D0A2020626F726465722D636F6C6F723A20236230623963303B0D0A2020636F6C6F723A2023323232';
wwv_flow_api.g_varchar2_table(672) := '3732623B0D0A7D0D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20233530356236343B0D0A7D0D0A2E742D486561646572';
wwv_flow_api.g_varchar2_table(673) := '202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20236261626363323B0D0A7D0D0A2E742D486561646572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A2072676261283138362C203138382C203139';
wwv_flow_api.g_varchar2_table(674) := '342C20302E3735293B0D0A7D0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564';
wwv_flow_api.g_varchar2_table(675) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233434346535362021696D706F7274616E743B0D0A7D0D0A2E742D426F6479207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F6479202E612D4D656E';
wwv_flow_api.g_varchar2_table(676) := '754261722D6C6162656C207B0D0A2020636F6C6F723A20233137316131363B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C';
wwv_flow_api.g_varchar2_table(677) := '69676E3A20746F703B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D426F6479202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(678) := '6F723A20233439363362312021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E75';
wwv_flow_api.g_varchar2_table(679) := '2D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20233439363362312021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D';
wwv_flow_api.g_varchar2_table(680) := '63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020';
wwv_flow_api.g_varchar2_table(681) := '636F6C6F723A20233137316131362021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D426F6479202E';
wwv_flow_api.g_varchar2_table(682) := '612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233439363362312021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E61';
wwv_flow_api.g_varchar2_table(683) := '2D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20726762612832332C2032362C2032322C20302E38293B0D0A2020626F726465722D636F6C6F723A202335393732';
wwv_flow_api.g_varchar2_table(684) := '62623B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75';
wwv_flow_api.g_varchar2_table(685) := '436F6C202E612D49636F6E2C0D0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2023376439';
wwv_flow_api.g_varchar2_table(686) := '3063613B0D0A2020626F726465722D636F6C6F723A20233764393063613B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D';
wwv_flow_api.g_varchar2_table(687) := '656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20233866613064313B0D0A2020626F726465722D636F6C6F723A20233866613064313B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D';
wwv_flow_api.g_varchar2_table(688) := '4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233137316131363B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(689) := '6F723A20233137316131363B0D0A2020636F6C6F723A20236436646264343B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E';
wwv_flow_api.g_varchar2_table(690) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236363643465613B0D0A2020626F726465722D636F6C6F723A20236363643465613B0D0A2020636F6C6F723A20233262336236393B0D0A7D0D0A2E742D426F6479202E612D4D656E752D636F';
wwv_flow_api.g_varchar2_table(691) := '6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20233439363362313B0D0A7D0D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(692) := '723A20233137316131363B0D0A7D0D0A2E742D426F6479202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612832332C2032362C2032322C20302E3735293B0D0A7D0D0A2E742D426F6479202E612D4D656E75202E612D4D656E';
wwv_flow_api.g_varchar2_table(693) := '752D6974656D2E69732D666F63757365642C0D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233431353939662021696D706F727461';
wwv_flow_api.g_varchar2_table(694) := '6E743B0D0A7D0D0A2E742D426F6479202E612D4D656E75426172203E20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236530653165343B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(695) := '6465722D636F6C6F723A20233439363362313B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D526567696F6E207B0D0A20';
wwv_flow_api.g_varchar2_table(696) := '200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233363336333633B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D';
wwv_flow_api.g_varchar2_table(697) := '0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D';
wwv_flow_api.g_varchar2_table(698) := '526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236530653165342021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D697465';
wwv_flow_api.g_varchar2_table(699) := '6D2E612D4D656E752D2D63757272656E742C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A2023653065';
wwv_flow_api.g_varchar2_table(700) := '3165342021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D526567696F6E202E612D4D656E754261';
wwv_flow_api.g_varchar2_table(701) := '722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233363336333632021696D706F7274616E743B0D0A2020666F6E742D7765696768743A2062';
wwv_flow_api.g_varchar2_table(702) := '6F6C643B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E64';
wwv_flow_api.g_varchar2_table(703) := '6564207B0D0A20206261636B67726F756E642D636F6C6F723A20236530653165342021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D';
wwv_flow_api.g_varchar2_table(704) := '49636F6E207B0D0A2020636F6C6F723A20726762612836302C2036302C2036302C20302E38293B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(705) := '696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D526567696F6E202E612D4D656E754261722D69';
wwv_flow_api.g_varchar2_table(706) := '74656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236237623963303B0D0A2020626F726465722D636F6C6F723A20236237623963303B0D0A2020';
wwv_flow_api.g_varchar2_table(707) := '636F6C6F723A20233030303030303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(708) := '723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E61';
wwv_flow_api.g_varchar2_table(709) := '2D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233363336333633B0D0A2020626F726465722D636F6C6F723A20233363336333633B0D0A2020636F6C6F723A2023666266626662';
wwv_flow_api.g_varchar2_table(710) := '3B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(711) := '6666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236530653165343B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A2030';
wwv_flow_api.g_varchar2_table(712) := '3B0D0A20206261636B67726F756E642D636F6C6F723A20236530653165343B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(713) := '6E202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612836302C2036302C2036302C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A';
wwv_flow_api.g_varchar2_table(714) := '2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236564656565662021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(715) := '2E612D4D656E75426172203E20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236530653165343B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D636F6C6F723A20236530';
wwv_flow_api.g_varchar2_table(716) := '653165343B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D4865616465722D757365724D656E75202E612D4D656E75';
wwv_flow_api.g_varchar2_table(717) := '2D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D';
wwv_flow_api.g_varchar2_table(718) := '666F63757365642C0D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(719) := '0A2E742D4865616465722D757365724D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C207B0D0A2020636F6C6F723A20233233333562623B0D0A7D0D0A2E742D4E617654616273207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(720) := '726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A2020626F78';
wwv_flow_api.g_varchar2_table(721) := '2D736861646F773A20696E7365742031707820302030203020236666666666663B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(722) := '723A20236434643464343B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E643A20236666666666663B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69';
wwv_flow_api.g_varchar2_table(723) := '742D7363726F6C6C6261722D747261636B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A7D0D0A2E742D4E6176546162732D6974656D207B0D0A2020636F6C6F723A20233262656232343B0D0A2020';
wwv_flow_api.g_varchar2_table(724) := '626F726465722D636F6C6F723A20236434643464343B0D0A7D0D0A2E742D4E6176546162732D6974656D3A686F7665722C0D0A2E742D4E6176546162732D6974656D2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(725) := '236661666166613B0D0A2020636F6C6F723A20233233333562623B0D0A7D0D0A2E742D4E6176546162732D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20233233333562623B0D0A2020636F6C6F723A20236661666166613B0D';
wwv_flow_api.g_varchar2_table(726) := '0A7D0D0A0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A2030203020327078203270783B0D0A20206261636B67726F756E642D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(727) := '39343134373B0D0A2020626F726465722D77696474683A20303B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D4E617669676174696F6E4261722D6D656E75';
wwv_flow_api.g_varchar2_table(728) := '202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233530356236342021696D706F7274616E743B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D65';
wwv_flow_api.g_varchar2_table(729) := '6E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D6C6162656C2C0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D6C6162656C20';
wwv_flow_api.g_varchar2_table(730) := '7B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C2C0D0A2E742D4E617669676174696F6E';
wwv_flow_api.g_varchar2_table(731) := '4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D20612C0D0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D737461747573436F6C207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(732) := '6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233534363036393B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(733) := '6666666666663B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0D0A7D0D0A2E742D506F70';
wwv_flow_api.g_varchar2_table(734) := '75704C4F562D726573756C74735365742074723A6E74682D6368696C6428326E29207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234641464146413B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B';
wwv_flow_api.g_varchar2_table(735) := '2C0D0A2E75692D7769646765742D636F6E74656E7420612E742D506F7075704C4F562D726573756C74735365742D6C696E6B207B0D0A2020636F6C6F723A20233534363036393B0D0A7D0D0A2E742D506167652D2D706F7075704C4F56207B0D0A202062';
wwv_flow_api.g_varchar2_table(736) := '61636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E742D506F7075704C4F562D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20236261626363323B0D0A7D0D0A2E742D426F6479202E742D506F7075704C';
wwv_flow_api.g_varchar2_table(737) := '4F562D6C696E6B732061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A2E742D426F';
wwv_flow_api.g_varchar2_table(738) := '64792D696E666F202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D6C696E6B7320612C0D0A2E742D427574746F6E526567696F6E';
wwv_flow_api.g_varchar2_table(739) := '202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A202336623761';
wwv_flow_api.g_varchar2_table(740) := '38363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20236533653365333B0D0A7D0D0A2E742D426F64792D7469746C65202E742D';
wwv_flow_api.g_varchar2_table(741) := '506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233436343634363B0D0A7D0D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A2023343634363436';
wwv_flow_api.g_varchar2_table(742) := '3B0D0A7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E2C0D0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233763376337633B';
wwv_flow_api.g_varchar2_table(743) := '0D0A7D0D0A0D0A2E742D526567696F6E2C0D0A2E742D436F6E74656E74426C6F636B2D2D6C696768744247202E742D436F6E74656E74426C6F636B2D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D';
wwv_flow_api.g_varchar2_table(744) := '0A2E742D426F6479202E6669656C64646174612062207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D7469746C65202E6669656C64646174612062207B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(745) := '742D426F64792D696E666F202E6669656C64646174612062207B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A2E742D526567696F6E202E6669656C646461746120622C0D0A2E742D427574746F6E526567696F6E202E6669656C64646174';
wwv_flow_api.g_varchar2_table(746) := '612062207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236335633763633B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D';
wwv_flow_api.g_varchar2_table(747) := '0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64';
wwv_flow_api.g_varchar2_table(748) := '792D616374696F6E73202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E643A207472616E73706172656E743B0D0A2020636F6C6F723A20233066306530663B0D0A7D0D0A2E742D526567696F6E2D2D737461636B6564207B';
wwv_flow_api.g_varchar2_table(749) := '0D0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(750) := '6662666266623B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D6E';
wwv_flow_api.g_varchar2_table(751) := '6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E';
wwv_flow_api.g_varchar2_table(752) := '2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572';
wwv_flow_api.g_varchar2_table(753) := '202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(754) := '2D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A0D0A2E742D526567696F6E2D2D61636365';
wwv_flow_api.g_varchar2_table(755) := '6E7432203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7432203E202E';
wwv_flow_api.g_varchar2_table(756) := '742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(757) := '236534663966643B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(758) := '2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(759) := '6F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C69';
wwv_flow_api.g_varchar2_table(760) := '6E6B207B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(761) := '233265626662633B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A2020636F6C6F723A202366306661';
wwv_flow_api.g_varchar2_table(762) := '66363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D6865616465';
wwv_flow_api.g_varchar2_table(763) := '72202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D68656164';
wwv_flow_api.g_varchar2_table(764) := '6572207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D';
wwv_flow_api.g_varchar2_table(765) := '0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7435203E20';
wwv_flow_api.g_varchar2_table(766) := '2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D74657874436F6E74656E74203E';
wwv_flow_api.g_varchar2_table(767) := '202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7436203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(768) := '6F6C6F723A20236464646535333B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7436203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(769) := '696F6E2D2D616363656E7436203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74362E742D526567696F6E';
wwv_flow_api.g_varchar2_table(770) := '2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7437203E202E742D526567696F6E2D686561646572207B0D';
wwv_flow_api.g_varchar2_table(771) := '0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7437203E202E742D526567696F6E2D686561646572202E742D427574746F6E';
wwv_flow_api.g_varchar2_table(772) := '2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7437203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E2D2D61';
wwv_flow_api.g_varchar2_table(773) := '6363656E74372E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7438203E202E742D52';
wwv_flow_api.g_varchar2_table(774) := '6567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7438203E202E742D526567696F6E2D68';
wwv_flow_api.g_varchar2_table(775) := '6561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7438203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(776) := '7D0D0A2E742D526567696F6E2D2D616363656E74382E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A0D0A2E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(777) := '2D616363656E7439203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74';
wwv_flow_api.g_varchar2_table(778) := '39203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7439203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(779) := '6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74392E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20236539356235343B0D0A';
wwv_flow_api.g_varchar2_table(780) := '7D0D0A0D0A2E742D526567696F6E2D2D616363656E743130203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(781) := '742D526567696F6E2D2D616363656E743130203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743130203E202E742D526567696F6E2D686561646572202E742D4275';
wwv_flow_api.g_varchar2_table(782) := '74746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431302E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A';
wwv_flow_api.g_varchar2_table(783) := '2020636F6C6F723A20236538356438383B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E743131203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A2020636F';
wwv_flow_api.g_varchar2_table(784) := '6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743131203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743131203E202E742D';
wwv_flow_api.g_varchar2_table(785) := '526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431312E742D526567696F6E2D2D74657874436F6E74656E74203E202E';
wwv_flow_api.g_varchar2_table(786) := '742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E743132203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(787) := '6C6F723A20233835346539623B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743132203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(788) := '696F6E2D2D616363656E743132203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431322E742D52656769';
wwv_flow_api.g_varchar2_table(789) := '6F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E743133203E202E742D526567696F6E2D686561646572';
wwv_flow_api.g_varchar2_table(790) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743133203E202E742D526567696F6E2D686561646572202E742D4275';
wwv_flow_api.g_varchar2_table(791) := '74746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743133203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(792) := '6F6E2D2D616363656E7431332E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233561363861643B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E743134';
wwv_flow_api.g_varchar2_table(793) := '203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743134203E202E742D';
wwv_flow_api.g_varchar2_table(794) := '526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743134203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(795) := '3331336134343B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431342E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20236166626163353B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(796) := '2E742D526567696F6E2D2D616363656E743135203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(797) := '696F6E2D2D616363656E743135203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743135203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(798) := '2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431352E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(799) := '6F723A20233665383539383B0D0A7D0D0A2E742D526567696F6E2D626F6479207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D526567696F6E2D2D6869646553686F772E69732D636F6C6C6170736564207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(800) := '722D626F74746F6D2D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(801) := '742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D73696465202E742D526567696F6E207B0D0A2020';
wwv_flow_api.g_varchar2_table(802) := '6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E2C0D0A2E742D526567696F6E2D686561646572207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(803) := '6F6E2D2D6E6F4247207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472';
wwv_flow_api.g_varchar2_table(804) := '616E73706172656E743B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D72616469';
wwv_flow_api.g_varchar2_table(805) := '75733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D62';
wwv_flow_api.g_varchar2_table(806) := '7574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A616374697665';
wwv_flow_api.g_varchar2_table(807) := '2C0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976653A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(808) := '742D526567696F6E2D2D6361726F7573656C202E612D546162732D6E6578742D726567696F6E207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D54';
wwv_flow_api.g_varchar2_table(809) := '6162732D70726576696F75732D726567696F6E207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974';
wwv_flow_api.g_varchar2_table(810) := '656D2E612D546162732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3435293B0D0A7D0D0A2E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(811) := '2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E612D546162732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B3A666F637573207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(812) := '6F723A20233562363837323B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31';
wwv_flow_api.g_varchar2_table(813) := '35293B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A0D0A2E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72742D636F6C48656164207B0D0A2020626F726465723A2031707820736F6C696420236530653165343B';
wwv_flow_api.g_varchar2_table(814) := '0D0A7D0D0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0D0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C';
wwv_flow_api.g_varchar2_table(815) := '64207B0D0A2020626F726465722D72696768743A2031707820736F6C696420236530653165343B0D0A7D0D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C64202E742D5265706F72742D63656C6C207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(816) := '722D626F74746F6D3A2031707820736F6C696420236530653165343B0D0A7D0D0A2E742D5265706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612832';
wwv_flow_api.g_varchar2_table(817) := '35312C203235312C203235312C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A7D0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265';
wwv_flow_api.g_varchar2_table(818) := '706F72742074723A686F766572202E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F6464293A686F766572202E742D52';
wwv_flow_api.g_varchar2_table(819) := '65706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236636663666372021696D706F7274616E743B0D0A7D0D0A2E742D5265706F72742D2D737461746963526F77436F6C6F7273202E742D5265706F72742D7265706F72';
wwv_flow_api.g_varchar2_table(820) := '742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E742D5265706F72742D2D616C74526F77734465666175';
wwv_flow_api.g_varchar2_table(821) := '6C74202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236638663866393B0D0A7D0D0A0D0A2E742D5265706F7274';
wwv_flow_api.g_varchar2_table(822) := '2D706167696E6174696F6E5465787420622C0D0A2E742D5265706F72742D706167696E6174696F6E5465787420613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(823) := '66663B0D0A7D0D0A2E742D536F6369616C466F6F746572207B0D0A202070616464696E672D746F703A20343870783B0D0A202070616464696E672D626F74746F6D3A20323470783B0D0A7D0D0A2E742D536F6369616C466F6F746572202E726F77207B0D';
wwv_flow_api.g_varchar2_table(824) := '0A202070616464696E672D746F703A203870783B0D0A7D0D0A2E742D536F6369616C466F6F746572202E636F6C207B0D0A202070616464696E672D626F74746F6D3A203870783B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A20207472';
wwv_flow_api.g_varchar2_table(825) := '616E736974696F6E3A20616C6C202E32733B0D0A7D0D0A2E742D536F6369616C466F6F746572202E636F6C3A686F766572207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A20202D6D6F7A2D';
wwv_flow_api.g_varchar2_table(826) := '7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A20202D6F2D7472616E73666F726D3A207472616E736C61746559282D387078293B0D';
wwv_flow_api.g_varchar2_table(827) := '0A20207472616E73666F726D3A207472616E736C61746559282D387078293B0D0A2020626F782D736861646F773A203070782038707820347078202D347078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D536F6369616C466F';
wwv_flow_api.g_varchar2_table(828) := '6F7465722061207B0D0A20207472616E736974696F6E3A20616C6C202E32733B0D0A2020646973706C61793A20626C6F636B3B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A2020746578742D616C69676E3A2063656E7465723B';
wwv_flow_api.g_varchar2_table(829) := '0D0A2020636F6C6F723A20726762612832332C2032362C2032322C20302E38293B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E742D49636F6E207B0D0A2020646973706C61793A20626C6F636B3B0D0A20206D617267696E3A2030206175';
wwv_flow_api.g_varchar2_table(830) := '746F3B0D0A2020636F6C6F723A20726762612832332C2032362C2032322C20302E34293B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E6661207B0D0A2020666F6E742D73697A653A20323870783B0D0A202077696474683A20333270783B';
wwv_flow_api.g_varchar2_table(831) := '0D0A20206865696768743A20333270783B0D0A20206C696E652D6865696768743A20333270783B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E207B0D0A20207769';
wwv_flow_api.g_varchar2_table(832) := '6474683A20333270783B0D0A20206865696768743A20333270783B0D0A20206C696E652D6865696768743A20333270783B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E3A6265666F7265207B0D0A2020666F6E742D73697A';
wwv_flow_api.g_varchar2_table(833) := '653A20333270783B0D0A7D0D0A2E742D536F6369616C466F6F74657220613A686F7665722C0D0A2E742D536F6369616C466F6F74657220613A686F766572202E742D49636F6E207B0D0A2020636F6C6F723A20233534363036393B0D0A7D0D0A2E742D53';
wwv_flow_api.g_varchar2_table(834) := '6561726368526573756C74732D64657363207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20236630663066303B0D0A7D0D0A2E742D53656172636852';
wwv_flow_api.g_varchar2_table(835) := '6573756C74732D6D697363207B0D0A2020636F6C6F723A20236630663066303B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D64657363207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(836) := '696F6E202E742D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20233666366636663B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D697363207B0D0A2020636F6C6F723A202336663666';
wwv_flow_api.g_varchar2_table(837) := '36663B0D0A7D0D0A2E742D5374617475734C6973742D626C6F636B486561646572207B0D0A2020636F6C6F723A20233363336333633B0D0A20206261636B67726F756E642D636F6C6F723A20236335633763633B0D0A7D0D0A2E742D5374617475734C69';
wwv_flow_api.g_varchar2_table(838) := '73742D68656164657254657874416C742C0D0A2E742D5374617475734C6973742D617474722C0D0A2E742D5374617475734C6973742D7465787444657363207B0D0A2020636F6C6F723A20233666366636663B0D0A7D0D0A2E742D5374617475734C6973';
wwv_flow_api.g_varchar2_table(839) := '742D6974656D5469746C65207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B6572207B0D0A2020636F6C6F723A20233730373037303B0D';
wwv_flow_api.g_varchar2_table(840) := '0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B65723A61667465';
wwv_flow_api.g_varchar2_table(841) := '72207B0D0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475';
wwv_flow_api.g_varchar2_table(842) := '734C6973742D6D61726B6572207B0D0A2020626F726465722D7261646975733A20323470783B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D5374617475734C69';
wwv_flow_api.g_varchar2_table(843) := '73742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D636F6D706C657465202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(844) := '2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D64616E676572202E742D5374617475734C6973742D6D61726B65722C0D0A2E742D5374617475734C6973742D2D62756C6C657473202E74';
wwv_flow_api.g_varchar2_table(845) := '2D5374617475734C6973742D6974656D2E69732D6572726F72202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0D0A7D0D0A2E742D5374617475734C6973742D2D6275';
wwv_flow_api.g_varchar2_table(846) := '6C6C657473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A7D0D0A2E742D5374617475734C';
wwv_flow_api.g_varchar2_table(847) := '6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D7761726E696E67202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(848) := '2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20234630463046';
wwv_flow_api.g_varchar2_table(849) := '303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A2020636F6C6F723A20234130413041303B0D0A';
wwv_flow_api.g_varchar2_table(850) := '7D0D0A0D0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0D0A2020626F782D736861646F773A2030202D3270782030202335623638373220696E7365743B0D0A7D';
wwv_flow_api.g_varchar2_table(851) := '0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202335623638373220696E7365743B0D0A7D0D0A2E742D546162732D2D70696C6C207B0D0A';
wwv_flow_api.g_varchar2_table(852) := '20206261636B67726F756E642D636F6C6F723A20236634663566353B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D49636F6E207B0D0A2020636F6C6F723A20233363336333633B0D0A';
wwv_flow_api.g_varchar2_table(853) := '7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(854) := '756E642D636F6C6F723A20236662666266623B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202335623638373220696E7365743B0D0A';
wwv_flow_api.g_varchar2_table(855) := '7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D3A';
wwv_flow_api.g_varchar2_table(856) := '66697273742D6368696C64202E742D546162732D6C696E6B207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D2E69732D616374697665202E';
wwv_flow_api.g_varchar2_table(857) := '742D546162732D6C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(858) := '546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(859) := '642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612830';
wwv_flow_api.g_varchar2_table(860) := '2C20302C20302C20302E3135293B0D0A7D0D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D7469746C65202E742D5461';
wwv_flow_api.g_varchar2_table(861) := '62732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233162313331623B0D0A7D0D0A2E742D526567696F6E202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(862) := '233363336333633B0D0A7D0D0A0D0A2E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A2030202D3270782030202335623638373220696E7365743B0D0A7D0D0A2E617065782D';
wwv_flow_api.g_varchar2_table(863) := '72647320613A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202335623638373220696E7365743B0D0A7D0D0A2E617065782D7264732061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F';
wwv_flow_api.g_varchar2_table(864) := '64792D7469746C65202E617065782D7264732061207B0D0A2020636F6C6F723A20233162313331623B0D0A7D0D0A2E742D526567696F6E202E617065782D7264732061207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E617065782D72';
wwv_flow_api.g_varchar2_table(865) := '647320613A686F766572207B0D0A2020636F6C6F723A20233534363036393B0D0A7D0D0A2E617065782D726473202E617065782D7264732D73656C65637465642061207B0D0A2020636F6C6F723A20233534363036393B0D0A7D0D0A2E617065782D7264';
wwv_flow_api.g_varchar2_table(866) := '732D686F7665722E6C6566742061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2023633263346339203530252C2072676261283235352C203235352C203235352C203029203130';
wwv_flow_api.g_varchar2_table(867) := '3025293B0D0A20200D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C2023633263346339203530252C2072676261283235352C203235352C203235352C2030292031303025293B0D0A20200D0A7D0D';
wwv_flow_api.g_varchar2_table(868) := '0A2E617065782D7264732D686F7665722E72696768742061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C20236332633463392030252C2072676261283235352C203235352C2032';
wwv_flow_api.g_varchar2_table(869) := '35352C2030292031252C202363326334633920353025293B0D0A20200D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C20236332633463392030252C2072676261283235352C203235352C20323535';
wwv_flow_api.g_varchar2_table(870) := '2C2030292031252C202363326334633920353025293B0D0A20200D0A7D0D0A0D0A2E766572746963616C2D726473202E617065782D726473202E617065782D7264732D73656C6563746564207370616E2C0D0A2E742D426F64792D73696465202E617065';
wwv_flow_api.g_varchar2_table(871) := '782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A2034707820302030202335623638373220696E7365743B0D0A7D0D0A2E752D52544C202E766572746963616C2D726473202E61706578';
wwv_flow_api.g_varchar2_table(872) := '2D726473202E617065782D7264732D73656C6563746564207370616E2C0D0A2E752D52544C202E742D426F64792D73696465202E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F77';
wwv_flow_api.g_varchar2_table(873) := '3A202D34707820302030202335623638373220696E7365743B0D0A7D0D0A0D0A2E612D546167436C6F75642D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20236564656565663B0D0A2020626F726465722D7261646975733A203270783B0D';
wwv_flow_api.g_varchar2_table(874) := '0A20206261636B67726F756E643A20236636663666373B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F7720302E32732C20636F';
wwv_flow_api.g_varchar2_table(875) := '6C6F7220302E32733B0D0A2020636F6C6F723A20233532356536373B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B207370616E207B0D0A20207472616E736974696F6E3A20636F6C6F72202E32733B0D0A7D0D0A2E612D546167436C6F75642D6C';
wwv_flow_api.g_varchar2_table(876) := '696E6B3A686F766572207B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020626F726465722D636F6C6F723A20233562363837323B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(877) := '6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020327078202335623638373220696E7365743B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F766572207370616E207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(878) := '666666663B0D0A7D0D0A2E612D546167436C6F75642D636F756E74207B0D0A2020636F6C6F723A20233632363236323B0D0A2020666F6E742D7765696768743A203530303B0D0A7D0D0A2E742D54696D656C696E65207B0D0A2020636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(879) := '63336333633B0D0A7D0D0A2E742D54696D656C696E652D757365726E616D652C0D0A2E742D54696D656C696E652D646174652C0D0A2E742D54696D656C696E652D64657363207B0D0A2020636F6C6F723A20233666366636663B0D0A7D0D0A2E742D5469';
wwv_flow_api.g_varchar2_table(880) := '6D656C696E652D77726170207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D54696D656C696E652D74797065207B0D0A20206261636B67726F756E642D636F6C6F723A20236261626363323B0D0A2020636F6C6F723A2023303030';
wwv_flow_api.g_varchar2_table(881) := '3030303B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D6E6577207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132633B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970';
wwv_flow_api.g_varchar2_table(882) := '652E69732D75706461746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D72656D6F766564207B0D0A20206261';
wwv_flow_api.g_varchar2_table(883) := '636B67726F756E642D636F6C6F723A20236634343333363B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D777261703A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(884) := '773A20302030203020317078202335623638373220696E7365743B0D0A7D0D0A406D6564696120286D696E2D77696474683A20373639707829207B0D0A20202E742D426F64792D6E6176207B0D0A202020206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(885) := '236666666666663B0D0A20207D0D0A7D0D0A2E742D547265654E6176207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D';
wwv_flow_api.g_varchar2_table(886) := '7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A2020626F782D736861646F773A20696E7365742031707820302030203020236666666666663B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(887) := '742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236434643464343B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(888) := '742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E643A20236666666666663B0D0A7D0D0A2E742D50616765426F64792D2D';
wwv_flow_api.g_varchar2_table(889) := '6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D747261636B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A7D0D0A2E742D526567696F6E207B0D0A';
wwv_flow_api.g_varchar2_table(890) := '20200D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20302030203020317078202335';
wwv_flow_api.g_varchar2_table(891) := '623638373220696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(892) := '726F772E69732D63757272656E742C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D547265';
wwv_flow_api.g_varchar2_table(893) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20236633663366343B0D0A7D0D';
wwv_flow_api.g_varchar2_table(894) := '0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D';
wwv_flow_api.g_varchar2_table(895) := '746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(896) := '636F6C6F723A20236662666266623B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(897) := '6C6F723A20236562656265642021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565';
wwv_flow_api.g_varchar2_table(898) := '566965772D746F67676C652C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(899) := '612836302C2036302C2036302C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(900) := '2D746F67676C653A686F7665722C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(901) := '6C6F723A20233363336333632021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A2020';
wwv_flow_api.g_varchar2_table(902) := '636F6C6F723A20233363336333632021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(903) := '233363336333633B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F';
wwv_flow_api.g_varchar2_table(904) := '64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20726762612836302C2036302C2036302C20302E3935293B0D0A7D0D0A2E742D526567696F6E202E612D547265655669';
wwv_flow_api.g_varchar2_table(905) := '65772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66613A6265666F72652C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(906) := '636F6E74656E74202E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E';
wwv_flow_api.g_varchar2_table(907) := '74656E742E69732D686F766572202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E';
wwv_flow_api.g_varchar2_table(908) := '742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64';
wwv_flow_api.g_varchar2_table(909) := '652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D526567696F6E202E612D547265655669';
wwv_flow_api.g_varchar2_table(910) := '65772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(911) := '2D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C';
wwv_flow_api.g_varchar2_table(912) := '0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(913) := '2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A20726762612836302C2036302C2036302C20302E3735293B0D0A7D0D0A2E742D52';
wwv_flow_api.g_varchar2_table(914) := '6567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233363336333632021696D706F7274616E743B0D0A7D0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(915) := '696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(916) := '6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236633663366343B0D0A7D0D0A2E742D5472';
wwv_flow_api.g_varchar2_table(917) := '65654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20302030203020317078202335623638373220696E736574';
wwv_flow_api.g_varchar2_table(918) := '3B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D637572';
wwv_flow_api.g_varchar2_table(919) := '72656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F';
wwv_flow_api.g_varchar2_table(920) := '64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D54726565';
wwv_flow_api.g_varchar2_table(921) := '4E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576';
wwv_flow_api.g_varchar2_table(922) := '656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(923) := '3A20236661666166613B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(924) := '20236562656265622021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965';
wwv_flow_api.g_varchar2_table(925) := '772D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A207267626128';
wwv_flow_api.g_varchar2_table(926) := '33352C2035332C203138372C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(927) := '2D746F67676C653A686F7665722C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0D0A202063';
wwv_flow_api.g_varchar2_table(928) := '6F6C6F723A20233233333562622021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A';
wwv_flow_api.g_varchar2_table(929) := '2020636F6C6F723A20233233333562622021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(930) := '723A20233262656232343B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D547265654E6176202E612D547265655669';
wwv_flow_api.g_varchar2_table(931) := '65772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20233362656232343B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D';
wwv_flow_api.g_varchar2_table(932) := '746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66613A6265666F72652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E7420';
wwv_flow_api.g_varchar2_table(933) := '2E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E6973';
wwv_flow_api.g_varchar2_table(934) := '2D686F766572202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D54726565';
wwv_flow_api.g_varchar2_table(935) := '4E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D74';
wwv_flow_api.g_varchar2_table(936) := '6F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0D0A2020636F6C6F723A20233164656534653B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(937) := '6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54';
wwv_flow_api.g_varchar2_table(938) := '726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D';
wwv_flow_api.g_varchar2_table(939) := '0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20233233333562623B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(940) := '2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A20726762612834332C203233352C2033362C20302E3735293B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(941) := '2D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233262656232342021696D706F7274616E743B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(942) := '547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E';
wwv_flow_api.g_varchar2_table(943) := '6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20233164656534653B0D0A7D0D0A2E742D547265654E6176202E612D54726565';
wwv_flow_api.g_varchar2_table(944) := '566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20233233333562623B0D0A7D0D0A2E6A732D6E6176436F6C6C6170736564202E742D';
wwv_flow_api.g_varchar2_table(945) := '547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C203E202E612D54726565566965772D636F6E74656E74202E612D54726565566965772D6C6162656C202E612D54726565566965772D6261646765207B0D0A20206261';
wwv_flow_api.g_varchar2_table(946) := '636B67726F756E643A20236439643964393B0D0A2020636F6C6F723A20233233333562623B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6261646765207B0D0A2020626F782D736861646F773A20302030203020317078207267';
wwv_flow_api.g_varchar2_table(947) := '62612833352C2035332C203138372C20302E31293B0D0A2020666F6E742D7765696768743A203430303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D636F6E74656E742E69732D63757272656E74202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(948) := '2D6C6162656C2C0D0A2E742D547265654E6176202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D54726565566965772D6C6162656C207B0D0A2020666F6E742D7765696768743A203530303B0D0A7D0D';
wwv_flow_api.g_varchar2_table(949) := '0A0D0A2E742D56616C69646174696F6E2D64617465207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A20233535353535353B0D0A7D0D0A2E742D426F64792D61';
wwv_flow_api.g_varchar2_table(950) := '6374696F6E73202E742D56616C69646174696F6E2D64617465207B0D0A2020636F6C6F723A20233066306530663B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A202332';
wwv_flow_api.g_varchar2_table(951) := '39323732393B0D0A7D0D0A0D0A2E742D4469616C6F672D706167652D2D77697A617264207B0D0A2020626F726465723A20236530653165343B0D0A7D0D0A2E742D57697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A202366626662';
wwv_flow_api.g_varchar2_table(952) := '66623B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A20236530653165343B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D7469746C65207B0D0A2020636F6C6F723A202333633363';
wwv_flow_api.g_varchar2_table(953) := '33633B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236636663666373B0D0A2020626F726465722D636F6C6F723A20236538653965623B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(954) := '57697A61726453746570732D777261703A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236530653165343B0D0A7D0D0A2E742D57697A61726453746570732D73746570202E742D57697A61726453746570732D6D61726B6572';
wwv_flow_api.g_varchar2_table(955) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236335633763633B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D636F6D706C657465202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(956) := '67726F756E642D636F6C6F723A20233362616132633B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6D61726B6572207B0D0A2020';
wwv_flow_api.g_varchar2_table(957) := '6261636B67726F756E642D636F6C6F723A20233562363837323B0D0A7D0D0A2E742D57697A61726453746570732D6C6162656C207B0D0A2020636F6C6F723A20233632363236323B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D';
wwv_flow_api.g_varchar2_table(958) := '616374697665202E742D57697A61726453746570732D6C6162656C207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A0D0A2E75692D776964676574207B0D0A2020666F6E742D66616D696C793A202748656C766574696361204E65756527';
wwv_flow_api.g_varchar2_table(959) := '2C20275365676F65205549272C2048656C7665746963612C20417269616C2C2073616E732D73657269663B0D0A2020666F6E742D73697A653A20313270783B0D0A7D0D0A2E75692D776964676574202E75692D776964676574207B0D0A2020666F6E742D';
wwv_flow_api.g_varchar2_table(960) := '73697A653A20313270783B0D0A7D0D0A0D0A626F6479202E75692D7769646765742D636F6E74656E74207B0D0A2020626F726465722D636F6C6F723A20236535653665383B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D';
wwv_flow_api.g_varchar2_table(961) := '0A2020636F6C6F723A20233363336333633B0D0A7D0D0A626F6479202E75692D7769646765742D636F6E74656E742061207B0D0A2020636F6C6F723A20233534363036393B0D0A7D0D0A626F6479202E75692D7769646765742D686561646572207B0D0A';
wwv_flow_api.g_varchar2_table(962) := '2020626F726465722D636F6C6F723A20236535653665383B0D0A20206261636B67726F756E642D636F6C6F723A20236335633763633B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A626F6479202E75692D7769646765742D686561646572';
wwv_flow_api.g_varchar2_table(963) := '2061207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A0D0A626F6479202E75692D73746174652D64656661756C742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D64656661756C742C0D0A62';
wwv_flow_api.g_varchar2_table(964) := '6F6479202E75692D7769646765742D686561646572202E75692D73746174652D64656661756C74207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663666363B0D0A2020636F6C6F723A20233336333633373B0D0A7D0D0A626F647920';
wwv_flow_api.g_varchar2_table(965) := '2E75692D73746174652D64656661756C7420612C0D0A626F6479202E75692D73746174652D64656661756C7420613A6C696E6B2C0D0A626F6479202E75692D73746174652D64656661756C7420613A766973697465642C0D0A626F6479202E75692D7374';
wwv_flow_api.g_varchar2_table(966) := '6174652D61637469766520612C0D0A626F6479202E75692D73746174652D61637469766520613A6C696E6B2C0D0A626F6479202E75692D73746174652D61637469766520613A76697369746564207B0D0A2020636F6C6F723A20233534363036393B0D0A';
wwv_flow_api.g_varchar2_table(967) := '7D0D0A626F6479202E75692D73746174652D686F7665722C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686F7665722C0D0A626F6479202E75692D7769646765742D686561646572202E75692D7374617465';
wwv_flow_api.g_varchar2_table(968) := '2D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233336333633373B0D0A7D0D0A626F6479202E75692D73746174652D666F6375732C0D0A626F6479202E75692D776964676574';
wwv_flow_api.g_varchar2_table(969) := '2D636F6E74656E74202E75692D73746174652D666F6375732C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D666F637573207B0D0A2020626F782D736861646F773A203020302030203170782023356236383732';
wwv_flow_api.g_varchar2_table(970) := '20696E7365742C20302030203170782032707820726762612839312C203130342C203131342C20302E3235292021696D706F7274616E743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233336';
wwv_flow_api.g_varchar2_table(971) := '333633373B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E3A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(972) := '6F773A20302030203020317078202335623638373220696E7365742C20302030203170782032707820726762612839312C203130342C203131342C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D73746174652D686F76';
wwv_flow_api.g_varchar2_table(973) := '657220612C0D0A626F6479202E75692D73746174652D686F76657220613A686F7665722C0D0A626F6479202E75692D73746174652D686F76657220613A6C696E6B2C0D0A626F6479202E75692D73746174652D686F76657220613A766973697465642C0D';
wwv_flow_api.g_varchar2_table(974) := '0A626F6479202E75692D73746174652D666F63757320612C0D0A626F6479202E75692D73746174652D666F63757320613A686F7665722C0D0A626F6479202E75692D73746174652D666F63757320613A6C696E6B2C0D0A626F6479202E75692D73746174';
wwv_flow_api.g_varchar2_table(975) := '652D666F63757320613A76697369746564207B0D0A2020636F6C6F723A20233534363036393B0D0A7D0D0A626F6479202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D7374617465';
wwv_flow_api.g_varchar2_table(976) := '2D6163746976652C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236463646364643B0D0A2020636F6C6F723A20233336333633373B';
wwv_flow_api.g_varchar2_table(977) := '0D0A7D0D0A0D0A626F6479202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D7769646765742D68656164';
wwv_flow_api.g_varchar2_table(978) := '6572202E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236533653665393B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D73746174652D686967686C6967';
wwv_flow_api.g_varchar2_table(979) := '687420612C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C6967687420612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C69676874206120';
wwv_flow_api.g_varchar2_table(980) := '7B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D73746174652D6572726F722C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722C0D0A626F6479202E75692D77';
wwv_flow_api.g_varchar2_table(981) := '69646765742D686561646572202E75692D73746174652D6572726F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D73746174652D65';
wwv_flow_api.g_varchar2_table(982) := '72726F7220612C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F7220612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722061207B0D0A202063';
wwv_flow_api.g_varchar2_table(983) := '6F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D73746174652D6572726F722D746578742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722D746578742C0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(984) := '75692D7769646765742D686561646572202E75692D73746174652D6572726F722D74657874207B0D0A2020636F6C6F723A20236634343333363B0D0A7D0D0A0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174';
wwv_flow_api.g_varchar2_table(985) := '652D64656661756C742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C74207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(986) := '233363336333633B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652C0D0A626F6479202E75692D646174657069636B65722074642061';
wwv_flow_api.g_varchar2_table(987) := '2E75692D73746174652D64656661756C742E75692D73746174652D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A2020666F6E742D7765696768743A';
wwv_flow_api.g_varchar2_table(988) := '20626F6C643B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0D0A626F6479202E75692D6461';
wwv_flow_api.g_varchar2_table(989) := '74657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837322021696D706F7274';
wwv_flow_api.g_varchar2_table(990) := '616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73';
wwv_flow_api.g_varchar2_table(991) := '746174652D64656661756C742E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236564656565662021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370';
wwv_flow_api.g_varchar2_table(992) := '616E2E75692D73746174652D64656661756C743A666F6375732C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C743A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A202062';
wwv_flow_api.g_varchar2_table(993) := '6F782D736861646F773A20302030203020317078202335623638373220696E7365742C20302030203170782032707820726762612839312C203130342C203131342C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D6461';
wwv_flow_api.g_varchar2_table(994) := '74657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D';
wwv_flow_api.g_varchar2_table(995) := '73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236535653665383B0D0A7D0D0A626F6479202E75692D646174657069636B6572207468207B0D0A2020636F6C6F723A20233763376337633B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(996) := '626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6865616465722C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E2C0D0A62';
wwv_flow_api.g_varchar2_table(997) := '6F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6E6578742C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D70726576207B0D0A2020626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(998) := '203270783B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0D0A20206261636B67726F756E642D636F6C6F723A20236335633763633B0D0A2020626F726465722D626F74746F6D3A203170';
wwv_flow_api.g_varchar2_table(999) := '7820736F6C6964207267626128302C20302C20302C20302E3035293B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A626F6479202E75692D';
wwv_flow_api.g_varchar2_table(1000) := '6469616C6F67202E75692D6469616C6F672D636F6E74656E742C0D0A2E742D4469616C6F672D70616765207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(1001) := '2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F672C0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722C0D0A2E742D4469616C6F672D2D77697A61726420626F';
wwv_flow_api.g_varchar2_table(1002) := '6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D4469616C6F672D2D77';
wwv_flow_api.g_varchar2_table(1003) := '697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A0D0A626F6479202E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A20';
wwv_flow_api.g_varchar2_table(1004) := '3270783B0D0A7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C6566742D726164697573';
wwv_flow_api.g_varchar2_table(1005) := '3A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D7261';
wwv_flow_api.g_varchar2_table(1006) := '646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D';
wwv_flow_api.g_varchar2_table(1007) := '2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D6272207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1008) := '65722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1009) := '75692D627574746F6E2E75692D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746C207B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(1010) := '746F702D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(1011) := '2D627574746F6E2E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F647920';
wwv_flow_api.g_varchar2_table(1012) := '2E75692D627574746F6E2E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1013) := '6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6272207B0D0A20';
wwv_flow_api.g_varchar2_table(1014) := '20626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A0D0A2E752D7761726E696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1015) := '6F723A20233434333330323B0D0A7D0D0A2E752D7761726E696E672D74657874207B0D0A2020636F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D7761726E696E672D6267207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1016) := '6F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D7761726E696E672D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D0A0D0A2E752D73756363';
wwv_flow_api.g_varchar2_table(1017) := '657373207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132632021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D737563636573732D74657874207B0D0A2020636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(1018) := '62616132632021696D706F7274616E743B0D0A7D0D0A2E752D737563636573732D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132632021696D706F7274616E743B0D0A7D0D0A2E752D737563636573732D626F72646572';
wwv_flow_api.g_varchar2_table(1019) := '207B0D0A2020626F726465722D636F6C6F723A20233362616132632021696D706F7274616E743B0D0A7D0D0A0D0A2E752D64616E676572207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333362021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1020) := '2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D64616E6765722D74657874207B0D0A2020636F6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A2E752D64616E6765722D6267207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1021) := '642D636F6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A2E752D64616E6765722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A0D0A2E752D696E';
wwv_flow_api.g_varchar2_table(1022) := '666F207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D696E666F2D74657874207B0D0A2020636F6C6F723A20233035373263';
wwv_flow_api.g_varchar2_table(1023) := '652021696D706F7274616E743B0D0A7D0D0A2E752D696E666F2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A2E752D696E666F2D626F72646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1024) := '65722D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A0D0A2E752D686F74207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837322021696D706F7274616E743B0D0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1025) := '6666663B0D0A7D0D0A2E752D686F742D74657874207B0D0A2020636F6C6F723A20233562363837322021696D706F7274616E743B0D0A7D0D0A2E752D686F742D6267207B0D0A20206261636B67726F756E642D636F6C6F723A2023356236383732202169';
wwv_flow_api.g_varchar2_table(1026) := '6D706F7274616E743B0D0A7D0D0A2E752D686F742D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233562363837322021696D706F7274616E743B0D0A7D0D0A0D0A2E752D6E6F726D616C207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1027) := '6F6C6F723A20233361346638642021696D706F7274616E743B0D0A2020636F6C6F723A20233137316131363B0D0A7D0D0A2E752D6E6F726D616C2D74657874207B0D0A2020636F6C6F723A20233137316131362021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1028) := '2E752D6E6F726D616C2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233137316131362021696D706F7274616E743B0D0A7D0D0A2E752D6E6F726D616C2D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023313731';
wwv_flow_api.g_varchar2_table(1029) := '6131362021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(1030) := '2D6469616C6F67202E75692D6469616C6F672D627574746F6E70616E65207B0D0A2020626F726465722D746F702D636F6C6F723A20236535653665383B0D0A7D0D0A2E742D426F6479207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F647920';
wwv_flow_api.g_varchar2_table(1031) := '2E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420233439363362313B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20233361346638643B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1032) := '2E742D426F6479202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233137316131363B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20236533653365333B0D';
wwv_flow_api.g_varchar2_table(1033) := '0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20233365353439363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D646179';
wwv_flow_api.g_varchar2_table(1034) := '2E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D';
wwv_flow_api.g_varchar2_table(1035) := '6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F6479202E612D4D696E69';
wwv_flow_api.g_varchar2_table(1036) := '43616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233364353339343B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1037) := '642D636F6C6F723A20233430353739623B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236530653165';
wwv_flow_api.g_varchar2_table(1038) := '343B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1039) := '3363336333633B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233763376337633B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D646179207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1040) := '726465722D636F6C6F723A20236634663566353B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A202062';
wwv_flow_api.g_varchar2_table(1041) := '61636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D6461746520';
wwv_flow_api.g_varchar2_table(1042) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1043) := '67726F756E642D636F6C6F723A20236636663666373B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236630663166323B0D0A7D0D0A2E742D42';
wwv_flow_api.g_varchar2_table(1044) := '6F64792D616374696F6E73207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420233962396561363B0D0A2020626F726465722D72';
wwv_flow_api.g_varchar2_table(1045) := '61646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236236623862653B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233066306530663B0D';
wwv_flow_api.g_varchar2_table(1046) := '0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233362336233623B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0D0A';
wwv_flow_api.g_varchar2_table(1047) := '2020626F726465722D636F6C6F723A20236166623162383B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64';
wwv_flow_api.g_varchar2_table(1048) := '617465207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D61637469766520';
wwv_flow_api.g_varchar2_table(1049) := '2E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461';
wwv_flow_api.g_varchar2_table(1050) := '792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236231623362613B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1051) := '756E642D636F6C6F723A20236162616562353B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C69';
wwv_flow_api.g_varchar2_table(1052) := '6420236137616162313B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236332633463393B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0D';
wwv_flow_api.g_varchar2_table(1053) := '0A2020636F6C6F723A20233162313331623B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233436343634363B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D69';
wwv_flow_api.g_varchar2_table(1054) := '6E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236262626463333B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D746F646179202E61';
wwv_flow_api.g_varchar2_table(1055) := '2D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363837323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D';
wwv_flow_api.g_varchar2_table(1056) := '616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E694361';
wwv_flow_api.g_varchar2_table(1057) := '6C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236264626663343B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1058) := '6F756E642D636F6C6F723A20236237623963303B0D0A7D0D0A0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D';
wwv_flow_api.g_varchar2_table(1059) := '0A202066696C6C3A20233330396664623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1060) := '6E74682D6368696C642834356E202B203129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1061) := '6E202B203129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1062) := '7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1063) := '6F6C6F723A20233330396664623B0D0A20207374726F6B653A20233330396664623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1064) := '723A20233133623663663B0D0A202066696C6C3A20233133623663663B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D62672C0D0A2E';
wwv_flow_api.g_varchar2_table(1065) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1066) := '6E74682D6368696C642834356E202B203229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233133623663663B';
wwv_flow_api.g_varchar2_table(1067) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D626F72646572207B';
wwv_flow_api.g_varchar2_table(1068) := '0D0A2020626F726465722D636F6C6F723A20233133623663663B0D0A20207374726F6B653A20233133623663663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F72207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1069) := '6B67726F756E642D636F6C6F723A20233265626662633B0D0A202066696C6C3A20233265626662633B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D';
wwv_flow_api.g_varchar2_table(1070) := '636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1071) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D74657874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1072) := '6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F';
wwv_flow_api.g_varchar2_table(1073) := '6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233265626662633B0D0A20207374726F6B653A20233265626662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F';
wwv_flow_api.g_varchar2_table(1074) := '6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A202066696C6C3A20233363616638353B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1075) := '34356E202B203429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(1076) := '63616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D74';
wwv_flow_api.g_varchar2_table(1077) := '657874207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1078) := '6E202B203429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233363616638353B0D0A20207374726F6B653A20233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1079) := '6E202B203529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A202066696C6C3A20233831626235663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1080) := '203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1081) := '6E642D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2035';
wwv_flow_api.g_varchar2_table(1082) := '29202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1083) := '6E74682D6368696C642834356E202B203529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233831626235663B0D0A20207374726F6B653A20233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1084) := '6E74682D6368696C642834356E202B203629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A202066696C6C3A20236464646535333B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1085) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D6261636B67726F756E64207B';
wwv_flow_api.g_varchar2_table(1086) := '0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1087) := '68696C642834356E202B203629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D62642C0D0A2E';
wwv_flow_api.g_varchar2_table(1088) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236464646535333B0D0A20207374726F6B653A20236464646535333B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1089) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A202066696C6C3A20236662636534613B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1090) := '233434333330323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1091) := '6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D7478742C0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1092) := '6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D';
wwv_flow_api.g_varchar2_table(1093) := '636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236662636534613B0D0A20207374726F6B653A202366';
wwv_flow_api.g_varchar2_table(1094) := '62636534613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A202066696C6C3A2023656438313365';
wwv_flow_api.g_varchar2_table(1095) := '3B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1096) := '3829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1097) := '7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1098) := '34356E202B203829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564383133653B0D0A';
wwv_flow_api.g_varchar2_table(1099) := '20207374726F6B653A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A202066';
wwv_flow_api.g_varchar2_table(1100) := '696C6C3A20236539356235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1101) := '6368696C642834356E202B203929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1102) := '3929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1103) := '203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1104) := '3A20236539356235343B0D0A20207374726F6B653A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1105) := '236538356438383B0D0A202066696C6C3A20236538356438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D62672C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1106) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1107) := '74682D6368696C642834356E202B20313029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A2023653835643838';
wwv_flow_api.g_varchar2_table(1108) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D626F726465';
wwv_flow_api.g_varchar2_table(1109) := '72207B0D0A2020626F726465722D636F6C6F723A20236538356438383B0D0A20207374726F6B653A20236538356438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F72207B0D0A20';
wwv_flow_api.g_varchar2_table(1110) := '206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A202066696C6C3A20236361353839643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203131';
wwv_flow_api.g_varchar2_table(1111) := '29202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B';
wwv_flow_api.g_varchar2_table(1112) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D7465787420';
wwv_flow_api.g_varchar2_table(1113) := '7B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1114) := '20313129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236361353839643B0D0A20207374726F6B653A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1115) := '2B20313229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A202066696C6C3A20233835346539623B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E752D636F6C6F7273203E20';
wwv_flow_api.g_varchar2_table(1116) := '3A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1117) := '756E642D636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1118) := '20313229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1119) := '203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233835346539623B0D0A20207374726F6B653A20233835346539623B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1120) := '73203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A202066696C6C3A20233561363861643B0D0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(1121) := '663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D6261636B';
wwv_flow_api.g_varchar2_table(1122) := '67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1123) := '203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D63';
wwv_flow_api.g_varchar2_table(1124) := '6F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233561363861643B0D0A20207374726F6B653A202335';
wwv_flow_api.g_varchar2_table(1125) := '61363861643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A202066696C6C3A20236166626163';
wwv_flow_api.g_varchar2_table(1126) := '353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1127) := '2B20313429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F';
wwv_flow_api.g_varchar2_table(1128) := '6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1129) := '68696C642834356E202B20313429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236166';
wwv_flow_api.g_varchar2_table(1130) := '626163353B0D0A20207374726F6B653A20236166626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A202336653835';
wwv_flow_api.g_varchar2_table(1131) := '39383B0D0A202066696C6C3A20233665383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1132) := '73203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1133) := '696C642834356E202B20313529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233665383539383B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1134) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D626F72646572207B0D0A';
wwv_flow_api.g_varchar2_table(1135) := '2020626F726465722D636F6C6F723A20233665383539383B0D0A20207374726F6B653A20233665383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F72207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1136) := '67726F756E642D636F6C6F723A20233539623265323B0D0A202066696C6C3A20233539623265323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D';
wwv_flow_api.g_varchar2_table(1137) := '636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1138) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D74657874207B0D0A2020';
wwv_flow_api.g_varchar2_table(1139) := '636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2031362920';
wwv_flow_api.g_varchar2_table(1140) := '2E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233539623265323B0D0A20207374726F6B653A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729';
wwv_flow_api.g_varchar2_table(1141) := '202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A202066696C6C3A20233432633564393B0D0A2020636F6C6F723A20233035313531373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1142) := '6368696C642834356E202B20313729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1143) := '6F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2031372920';
wwv_flow_api.g_varchar2_table(1144) := '2E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1145) := '74682D6368696C642834356E202B20313729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233432633564393B0D0A20207374726F6B653A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1146) := '6E74682D6368696C642834356E202B20313829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A202066696C6C3A20233538636363393B0D0A2020636F6C6F723A20233039316331633B0D0A7D';
wwv_flow_api.g_varchar2_table(1147) := '0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D6261636B67726F756E';
wwv_flow_api.g_varchar2_table(1148) := '64207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1149) := '74682D6368696C642834356E202B20313829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1150) := '62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233538636363393B0D0A20207374726F6B653A2023353863636339';
wwv_flow_api.g_varchar2_table(1151) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A202066696C6C3A20233633626639643B0D0A20';
wwv_flow_api.g_varchar2_table(1152) := '20636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929';
wwv_flow_api.g_varchar2_table(1153) := '202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D74';
wwv_flow_api.g_varchar2_table(1154) := '78742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1155) := '34356E202B20313929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233633626639643B';
wwv_flow_api.g_varchar2_table(1156) := '0D0A20207374726F6B653A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A';
wwv_flow_api.g_varchar2_table(1157) := '202066696C6C3A20233961633937663B0D0A2020636F6C6F723A20233230333331363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1158) := '6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1159) := '356E202B20323029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233961633937663B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1160) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D626F72646572207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(1161) := '6465722D636F6C6F723A20233961633937663B0D0A20207374726F6B653A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F72207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1162) := '642D636F6C6F723A20236534653537353B0D0A202066696C6C3A20236534653537353B0D0A2020636F6C6F723A20233463346330663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1163) := '2D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1164) := '6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1165) := '3A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F';
wwv_flow_api.g_varchar2_table(1166) := '6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534653537353B0D0A20207374726F6B653A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D63';
wwv_flow_api.g_varchar2_table(1167) := '6F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A202066696C6C3A20236663643836653B0D0A2020636F6C6F723A20233639346630323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1168) := '2834356E202B20323229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1169) := '20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F';
wwv_flow_api.g_varchar2_table(1170) := '6C6F722D74657874207B0D0A2020636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1171) := '696C642834356E202B20323229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236663643836653B0D0A20207374726F6B653A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1172) := '68696C642834356E202B20323329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A202066696C6C3A20236631396136353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1173) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D6261636B67726F756E64207B0D0A';
wwv_flow_api.g_varchar2_table(1174) := '20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1175) := '696C642834356E202B20323329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D62642C0D0A';
wwv_flow_api.g_varchar2_table(1176) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236631396136353B0D0A20207374726F6B653A20236631396136353B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1177) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A202066696C6C3A20236564376337363B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1178) := '723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D63';
wwv_flow_api.g_varchar2_table(1179) := '6F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D7478742C0D0A';
wwv_flow_api.g_varchar2_table(1180) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1181) := '20323429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376337363B0D0A202073';
wwv_flow_api.g_varchar2_table(1182) := '74726F6B653A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A202066696C';
wwv_flow_api.g_varchar2_table(1183) := '6C3A20236564376461303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1184) := '68696C642834356E202B20323529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1185) := '323529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1186) := '203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1187) := '6F6C6F723A20236564376461303B0D0A20207374726F6B653A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1188) := '6F723A20236435373962313B0D0A202066696C6C3A20236435373962313B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62672C0D';
wwv_flow_api.g_varchar2_table(1189) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1190) := '3E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236435';
wwv_flow_api.g_varchar2_table(1191) := '373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1192) := '6F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373962313B0D0A20207374726F6B653A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F7220';
wwv_flow_api.g_varchar2_table(1193) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A202066696C6C3A20233964373161663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1194) := '2B20323729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023396437';
wwv_flow_api.g_varchar2_table(1195) := '3161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D74';
wwv_flow_api.g_varchar2_table(1196) := '657874207B0D0A2020636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1197) := '356E202B20323729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233964373161663B0D0A20207374726F6B653A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1198) := '34356E202B20323829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A202066696C6C3A20233762383662643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1199) := '73203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D6261636B67726F756E64207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1200) := '6B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1201) := '356E202B20323829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D62642C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1202) := '6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233762383662643B0D0A20207374726F6B653A20233762383662643B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1203) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A202066696C6C3A20236266633864313B0D0A2020636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(1204) := '64343835343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1205) := '6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D7478742C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1206) := '6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2032392920';
wwv_flow_api.g_varchar2_table(1207) := '2E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236266633864313B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1208) := '3A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A202066696C6C3A202338';
wwv_flow_api.g_varchar2_table(1209) := '62396461643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1210) := '34356E202B20333029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E';
wwv_flow_api.g_varchar2_table(1211) := '752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1212) := '74682D6368696C642834356E202B20333029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1213) := '20233862396461643B0D0A20207374726F6B653A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1214) := '3139386363613B0D0A202066696C6C3A20233139386363613B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D62672C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1215) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233139386363613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1216) := '682D6368696C642834356E202B20333129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233139386363613B';
wwv_flow_api.g_varchar2_table(1217) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D626F72646572';
wwv_flow_api.g_varchar2_table(1218) := '207B0D0A2020626F726465722D636F6C6F723A20233139386363613B0D0A20207374726F6B653A20233139386363613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F72207B0D0A2020';
wwv_flow_api.g_varchar2_table(1219) := '6261636B67726F756E642D636F6C6F723A20233032613562653B0D0A202066696C6C3A20233032613562653B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229';
wwv_flow_api.g_varchar2_table(1220) := '202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233032613562653B0D';
wwv_flow_api.g_varchar2_table(1221) := '0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D74657874207B';
wwv_flow_api.g_varchar2_table(1222) := '0D0A2020636F6C6F723A20233032613562653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1223) := '333229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233032613562653B0D0A20207374726F6B653A20233032613562653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1224) := '20333329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233138623161653B0D0A202066696C6C3A20233138623161653B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1225) := '6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1226) := '6E642D636F6C6F723A20233138623161653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1227) := '333329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233138623161653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1228) := '3E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233138623161653B0D0A20207374726F6B653A20233138623161653B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1229) := '203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233234613437353B0D0A202066696C6C3A20233234613437353B0D0A2020636F6C6F723A2023656666626637';
wwv_flow_api.g_varchar2_table(1230) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D6261636B67';
wwv_flow_api.g_varchar2_table(1231) := '726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233234613437353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1232) := '3E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233234613437353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F';
wwv_flow_api.g_varchar2_table(1233) := '6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233234613437353B0D0A20207374726F6B653A20233234';
wwv_flow_api.g_varchar2_table(1234) := '613437353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233661616434323B0D0A202066696C6C3A2023366161643432';
wwv_flow_api.g_varchar2_table(1235) := '3B0D0A2020636F6C6F723A20233063313530363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1236) := '20333529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233661616434323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C';
wwv_flow_api.g_varchar2_table(1237) := '6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233661616434323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1238) := '696C642834356E202B20333529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023366161';
wwv_flow_api.g_varchar2_table(1239) := '6434323B0D0A20207374726F6B653A20233661616434323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236339636133';
wwv_flow_api.g_varchar2_table(1240) := '393B0D0A202066696C6C3A20236339636133393B0D0A2020636F6C6F723A20233264326530343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1241) := '203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236339636133393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1242) := '6C642834356E202B20333629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236339636133393B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1243) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D626F72646572207B0D0A20';
wwv_flow_api.g_varchar2_table(1244) := '20626F726465722D636F6C6F723A20236339636133393B0D0A20207374726F6B653A20236339636133393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F72207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(1245) := '726F756E642D636F6C6F723A20236439623133623B0D0A202066696C6C3A20236439623133623B0D0A2020636F6C6F723A20233436333430303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D63';
wwv_flow_api.g_varchar2_table(1246) := '6F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236439623133623B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1247) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D74657874207B0D0A202063';
wwv_flow_api.g_varchar2_table(1248) := '6F6C6F723A20236439623133623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E';
wwv_flow_api.g_varchar2_table(1249) := '752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236439623133623B0D0A20207374726F6B653A20236439623133623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2033382920';
wwv_flow_api.g_varchar2_table(1250) := '2E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236437366132373B0D0A202066696C6C3A20236437366132373B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1251) := '68696C642834356E202B20333829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1252) := '6C6F723A20236437366132373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E';
wwv_flow_api.g_varchar2_table(1253) := '752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236437366132373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1254) := '682D6368696C642834356E202B20333829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236437366132373B0D0A20207374726F6B653A20236437366132373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1255) := '74682D6368696C642834356E202B20333929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236432343233623B0D0A202066696C6C3A20236432343233623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1256) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D6261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1257) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236432343233623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1258) := '682D6368696C642834356E202B20333929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236432343233623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1259) := '642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236432343233623B0D0A20207374726F6B653A20236432343233623B';
wwv_flow_api.g_varchar2_table(1260) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336663B0D0A202066696C6C3A20236431343336663B0D0A2020';
wwv_flow_api.g_varchar2_table(1261) := '636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2034302920';
wwv_flow_api.g_varchar2_table(1262) := '2E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D7478';
wwv_flow_api.g_varchar2_table(1263) := '742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236431343336663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1264) := '356E202B20343029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236431343336663B0D';
wwv_flow_api.g_varchar2_table(1265) := '0A20207374726F6B653A20236431343336663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236261336438383B0D0A20';
wwv_flow_api.g_varchar2_table(1266) := '2066696C6C3A20236261336438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1267) := '74682D6368696C642834356E202B20343129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236261336438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1268) := '6E202B20343129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236261336438383B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1269) := '6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D626F72646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1270) := '65722D636F6C6F723A20236261336438383B0D0A20207374726F6B653A20236261336438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F72207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1271) := '2D636F6C6F723A20233737333339333B0D0A202066696C6C3A20233737333339333B0D0A2020636F6C6F723A20236636656666393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1272) := '62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233737333339333B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1273) := '6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1274) := '20233737333339333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C';
wwv_flow_api.g_varchar2_table(1275) := '6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233737333339333B0D0A20207374726F6B653A20233737333339333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F';
wwv_flow_api.g_varchar2_table(1276) := '6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561333B0D0A202066696C6C3A20233364346561333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1277) := '34356E202B20343329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1278) := '233364346561333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C';
wwv_flow_api.g_varchar2_table(1279) := '6F722D74657874207B0D0A2020636F6C6F723A20233364346561333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1280) := '6C642834356E202B20343329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233364346561333B0D0A20207374726F6B653A20233364346561333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1281) := '696C642834356E202B20343429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233863396562303B0D0A202066696C6C3A20233863396562303B0D0A2020636F6C6F723A20233238336134643B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1282) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20';
wwv_flow_api.g_varchar2_table(1283) := '206261636B67726F756E642D636F6C6F723A20233863396562303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1284) := '6C642834356E202B20343429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233863396562303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D62642C0D0A2E';
wwv_flow_api.g_varchar2_table(1285) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233863396562303B0D0A20207374726F6B653A20233863396562303B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1286) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233465373339313B0D0A202066696C6C3A20233465373339313B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1287) := '3A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F';
wwv_flow_api.g_varchar2_table(1288) := '6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233465373339313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D7478742C0D0A2E';
wwv_flow_api.g_varchar2_table(1289) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233465373339313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1290) := '343529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233465373339313B0D0A20207374';
wwv_flow_api.g_varchar2_table(1291) := '726F6B653A20233465373339313B0D0A7D0D0A0D0A2E752D636F6C6F722D31207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664622021696D706F7274616E743B0D0A202066696C6C3A20233330396664622021696D706F727461';
wwv_flow_api.g_varchar2_table(1292) := '6E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D312D62672C0D0A2E752D636F6C6F722D312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1293) := '3330396664622021696D706F7274616E743B0D0A202066696C6C3A20233330396664622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D312D7478742C0D0A2E752D636F6C6F722D312D74657874207B0D0A2020636F6C6F723A20233330';
wwv_flow_api.g_varchar2_table(1294) := '396664622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D312D62642C0D0A2E752D636F6C6F722D312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233330396664622021696D706F7274616E743B0D0A2020737472';
wwv_flow_api.g_varchar2_table(1295) := '6F6B653A20233330396664622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663662021696D706F7274616E743B0D0A202066696C6C3A202331336236636620';
wwv_flow_api.g_varchar2_table(1296) := '21696D706F7274616E743B0D0A2020636F6C6F723A20236534663966642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D62672C0D0A2E752D636F6C6F722D322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1297) := '636F6C6F723A20233133623663662021696D706F7274616E743B0D0A202066696C6C3A20233133623663662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D7478742C0D0A2E752D636F6C6F722D322D74657874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1298) := '6C6F723A20233133623663662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D62642C0D0A2E752D636F6C6F722D322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233133623663662021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(1299) := '3B0D0A20207374726F6B653A20233133623663662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662632021696D706F7274616E743B0D0A202066696C6C3A20';
wwv_flow_api.g_varchar2_table(1300) := '233265626662632021696D706F7274616E743B0D0A2020636F6C6F723A20236630666366622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D332D62672C0D0A2E752D636F6C6F722D332D6261636B67726F756E64207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1301) := '6B67726F756E642D636F6C6F723A20233265626662632021696D706F7274616E743B0D0A202066696C6C3A20233265626662632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D332D7478742C0D0A2E752D636F6C6F722D332D74657874';
wwv_flow_api.g_varchar2_table(1302) := '207B0D0A2020636F6C6F723A20233265626662632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D332D62642C0D0A2E752D636F6C6F722D332D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023326562666263202169';
wwv_flow_api.g_varchar2_table(1303) := '6D706F7274616E743B0D0A20207374726F6B653A20233265626662632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638352021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1304) := '202066696C6C3A20233363616638352021696D706F7274616E743B0D0A2020636F6C6F723A20236630666166362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D342D62672C0D0A2E752D636F6C6F722D342D6261636B67726F756E6420';
wwv_flow_api.g_varchar2_table(1305) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638352021696D706F7274616E743B0D0A202066696C6C3A20233363616638352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D342D7478742C0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1306) := '722D342D74657874207B0D0A2020636F6C6F723A20233363616638352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D342D62642C0D0A2E752D636F6C6F722D342D626F72646572207B0D0A2020626F726465722D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(1307) := '63616638352021696D706F7274616E743B0D0A20207374726F6B653A20233363616638352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D35207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235662021696D706F';
wwv_flow_api.g_varchar2_table(1308) := '7274616E743B0D0A202066696C6C3A20233831626235662021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D352D62672C0D0A2E752D636F6C6F722D352D626163';
wwv_flow_api.g_varchar2_table(1309) := '6B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235662021696D706F7274616E743B0D0A202066696C6C3A20233831626235662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D352D7478742C0D';
wwv_flow_api.g_varchar2_table(1310) := '0A2E752D636F6C6F722D352D74657874207B0D0A2020636F6C6F723A20233831626235662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D352D62642C0D0A2E752D636F6C6F722D352D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1311) := '6F6C6F723A20233831626235662021696D706F7274616E743B0D0A20207374726F6B653A20233831626235662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D36207B0D0A20206261636B67726F756E642D636F6C6F723A202364646465';
wwv_flow_api.g_varchar2_table(1312) := '35332021696D706F7274616E743B0D0A202066696C6C3A20236464646535332021696D706F7274616E743B0D0A2020636F6C6F723A20233261326130382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D362D62672C0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1313) := '6F722D362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535332021696D706F7274616E743B0D0A202066696C6C3A20236464646535332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1314) := '2D362D7478742C0D0A2E752D636F6C6F722D362D74657874207B0D0A2020636F6C6F723A20236464646535332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D362D62642C0D0A2E752D636F6C6F722D362D626F72646572207B0D0A2020';
wwv_flow_api.g_varchar2_table(1315) := '626F726465722D636F6C6F723A20236464646535332021696D706F7274616E743B0D0A20207374726F6B653A20236464646535332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D37207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1316) := '723A20236662636534612021696D706F7274616E743B0D0A202066696C6C3A20236662636534612021696D706F7274616E743B0D0A2020636F6C6F723A20233434333330322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D372D62672C';
wwv_flow_api.g_varchar2_table(1317) := '0D0A2E752D636F6C6F722D372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A202066696C6C3A20236662636534612021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1318) := '2E752D636F6C6F722D372D7478742C0D0A2E752D636F6C6F722D372D74657874207B0D0A2020636F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D372D62642C0D0A2E752D636F6C6F722D372D626F7264';
wwv_flow_api.g_varchar2_table(1319) := '6572207B0D0A2020626F726465722D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A20207374726F6B653A20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D38207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1320) := '756E642D636F6C6F723A20236564383133652021696D706F7274616E743B0D0A202066696C6C3A20236564383133652021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1321) := '6F722D382D62672C0D0A2E752D636F6C6F722D382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133652021696D706F7274616E743B0D0A202066696C6C3A20236564383133652021696D706F727461';
wwv_flow_api.g_varchar2_table(1322) := '6E743B0D0A7D0D0A2E752D636F6C6F722D382D7478742C0D0A2E752D636F6C6F722D382D74657874207B0D0A2020636F6C6F723A20236564383133652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D382D62642C0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1323) := '722D382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564383133652021696D706F7274616E743B0D0A20207374726F6B653A20236564383133652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D39207B0D0A20';
wwv_flow_api.g_varchar2_table(1324) := '206261636B67726F756E642D636F6C6F723A20236539356235342021696D706F7274616E743B0D0A202066696C6C3A20236539356235342021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D';
wwv_flow_api.g_varchar2_table(1325) := '0D0A2E752D636F6C6F722D392D62672C0D0A2E752D636F6C6F722D392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235342021696D706F7274616E743B0D0A202066696C6C3A202365393562353420';
wwv_flow_api.g_varchar2_table(1326) := '21696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D392D7478742C0D0A2E752D636F6C6F722D392D74657874207B0D0A2020636F6C6F723A20236539356235342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D392D62642C0D';
wwv_flow_api.g_varchar2_table(1327) := '0A2E752D636F6C6F722D392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236539356235342021696D706F7274616E743B0D0A20207374726F6B653A20236539356235342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1328) := '722D3130207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438382021696D706F7274616E743B0D0A202066696C6C3A20236538356438382021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F';
wwv_flow_api.g_varchar2_table(1329) := '7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D62672C0D0A2E752D636F6C6F722D31302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438382021696D706F7274616E743B0D0A202066696C';
wwv_flow_api.g_varchar2_table(1330) := '6C3A20236538356438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D7478742C0D0A2E752D636F6C6F722D31302D74657874207B0D0A2020636F6C6F723A20236538356438382021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1331) := '2D636F6C6F722D31302D62642C0D0A2E752D636F6C6F722D31302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236538356438382021696D706F7274616E743B0D0A20207374726F6B653A20236538356438382021696D706F727461';
wwv_flow_api.g_varchar2_table(1332) := '6E743B0D0A7D0D0A2E752D636F6C6F722D3131207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839642021696D706F7274616E743B0D0A202066696C6C3A20236361353839642021696D706F7274616E743B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1333) := '3A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D62672C0D0A2E752D636F6C6F722D31312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839642021696D';
wwv_flow_api.g_varchar2_table(1334) := '706F7274616E743B0D0A202066696C6C3A20236361353839642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D7478742C0D0A2E752D636F6C6F722D31312D74657874207B0D0A2020636F6C6F723A20236361353839642021696D';
wwv_flow_api.g_varchar2_table(1335) := '706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D62642C0D0A2E752D636F6C6F722D31312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236361353839642021696D706F7274616E743B0D0A20207374726F6B653A2023';
wwv_flow_api.g_varchar2_table(1336) := '6361353839642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3132207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539622021696D706F7274616E743B0D0A202066696C6C3A20233835346539622021696D706F';
wwv_flow_api.g_varchar2_table(1337) := '7274616E743B0D0A2020636F6C6F723A20236636663066382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D62672C0D0A2E752D636F6C6F722D31322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1338) := '6F723A20233835346539622021696D706F7274616E743B0D0A202066696C6C3A20233835346539622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D7478742C0D0A2E752D636F6C6F722D31322D74657874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1339) := '6F723A20233835346539622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D62642C0D0A2E752D636F6C6F722D31322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233835346539622021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1340) := '743B0D0A20207374726F6B653A20233835346539622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3133207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861642021696D706F7274616E743B0D0A202066696C6C';
wwv_flow_api.g_varchar2_table(1341) := '3A20233561363861642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31332D62672C0D0A2E752D636F6C6F722D31332D6261636B67726F756E64207B0D0A20';
wwv_flow_api.g_varchar2_table(1342) := '206261636B67726F756E642D636F6C6F723A20233561363861642021696D706F7274616E743B0D0A202066696C6C3A20233561363861642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31332D7478742C0D0A2E752D636F6C6F722D31';
wwv_flow_api.g_varchar2_table(1343) := '332D74657874207B0D0A2020636F6C6F723A20233561363861642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31332D62642C0D0A2E752D636F6C6F722D31332D626F72646572207B0D0A2020626F726465722D636F6C6F723A202335';
wwv_flow_api.g_varchar2_table(1344) := '61363861642021696D706F7274616E743B0D0A20207374726F6B653A20233561363861642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3134207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163352021696D70';
wwv_flow_api.g_varchar2_table(1345) := '6F7274616E743B0D0A202066696C6C3A20236166626163352021696D706F7274616E743B0D0A2020636F6C6F723A20233331336134342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31342D62672C0D0A2E752D636F6C6F722D31342D';
wwv_flow_api.g_varchar2_table(1346) := '6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163352021696D706F7274616E743B0D0A202066696C6C3A20236166626163352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31342D74';
wwv_flow_api.g_varchar2_table(1347) := '78742C0D0A2E752D636F6C6F722D31342D74657874207B0D0A2020636F6C6F723A20236166626163352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31342D62642C0D0A2E752D636F6C6F722D31342D626F72646572207B0D0A202062';
wwv_flow_api.g_varchar2_table(1348) := '6F726465722D636F6C6F723A20236166626163352021696D706F7274616E743B0D0A20207374726F6B653A20236166626163352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3135207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1349) := '723A20233665383539382021696D706F7274616E743B0D0A202066696C6C3A20233665383539382021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31352D6267';
wwv_flow_api.g_varchar2_table(1350) := '2C0D0A2E752D636F6C6F722D31352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539382021696D706F7274616E743B0D0A202066696C6C3A20233665383539382021696D706F7274616E743B0D0A7D';
wwv_flow_api.g_varchar2_table(1351) := '0D0A2E752D636F6C6F722D31352D7478742C0D0A2E752D636F6C6F722D31352D74657874207B0D0A2020636F6C6F723A20233665383539382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31352D62642C0D0A2E752D636F6C6F722D31';
wwv_flow_api.g_varchar2_table(1352) := '352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233665383539382021696D706F7274616E743B0D0A20207374726F6B653A20233665383539382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3136207B0D0A2020';
wwv_flow_api.g_varchar2_table(1353) := '6261636B67726F756E642D636F6C6F723A20233539623265322021696D706F7274616E743B0D0A202066696C6C3A20233539623265322021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1354) := '0A2E752D636F6C6F722D31362D62672C0D0A2E752D636F6C6F722D31362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265322021696D706F7274616E743B0D0A202066696C6C3A2023353962326532';
wwv_flow_api.g_varchar2_table(1355) := '2021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31362D7478742C0D0A2E752D636F6C6F722D31362D74657874207B0D0A2020636F6C6F723A20233539623265322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31362D';
wwv_flow_api.g_varchar2_table(1356) := '62642C0D0A2E752D636F6C6F722D31362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233539623265322021696D706F7274616E743B0D0A20207374726F6B653A20233539623265322021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1357) := '2D636F6C6F722D3137207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564392021696D706F7274616E743B0D0A202066696C6C3A20233432633564392021696D706F7274616E743B0D0A2020636F6C6F723A202330353135313720';
wwv_flow_api.g_varchar2_table(1358) := '21696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D62672C0D0A2E752D636F6C6F722D31372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564392021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1359) := '202066696C6C3A20233432633564392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D7478742C0D0A2E752D636F6C6F722D31372D74657874207B0D0A2020636F6C6F723A20233432633564392021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1360) := '7D0D0A2E752D636F6C6F722D31372D62642C0D0A2E752D636F6C6F722D31372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233432633564392021696D706F7274616E743B0D0A20207374726F6B653A20233432633564392021696D';
wwv_flow_api.g_varchar2_table(1361) := '706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3138207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363392021696D706F7274616E743B0D0A202066696C6C3A20233538636363392021696D706F7274616E743B0D0A2020';
wwv_flow_api.g_varchar2_table(1362) := '636F6C6F723A20233039316331632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D62672C0D0A2E752D636F6C6F722D31382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363';
wwv_flow_api.g_varchar2_table(1363) := '392021696D706F7274616E743B0D0A202066696C6C3A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D7478742C0D0A2E752D636F6C6F722D31382D74657874207B0D0A2020636F6C6F723A20233538636363';
wwv_flow_api.g_varchar2_table(1364) := '392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D62642C0D0A2E752D636F6C6F722D31382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233538636363392021696D706F7274616E743B0D0A20207374726F';
wwv_flow_api.g_varchar2_table(1365) := '6B653A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3139207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639642021696D706F7274616E743B0D0A202066696C6C3A202336336266396420';
wwv_flow_api.g_varchar2_table(1366) := '21696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31392D62672C0D0A2E752D636F6C6F722D31392D6261636B67726F756E64207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1367) := '642D636F6C6F723A20233633626639642021696D706F7274616E743B0D0A202066696C6C3A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31392D7478742C0D0A2E752D636F6C6F722D31392D74657874207B0D0A';
wwv_flow_api.g_varchar2_table(1368) := '2020636F6C6F723A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31392D62642C0D0A2E752D636F6C6F722D31392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233633626639642021696D70';
wwv_flow_api.g_varchar2_table(1369) := '6F7274616E743B0D0A20207374726F6B653A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3230207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937662021696D706F7274616E743B0D0A20';
wwv_flow_api.g_varchar2_table(1370) := '2066696C6C3A20233961633937662021696D706F7274616E743B0D0A2020636F6C6F723A20233230333331362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32302D62672C0D0A2E752D636F6C6F722D32302D6261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1371) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937662021696D706F7274616E743B0D0A202066696C6C3A20233961633937662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32302D7478742C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1372) := '6C6F722D32302D74657874207B0D0A2020636F6C6F723A20233961633937662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32302D62642C0D0A2E752D636F6C6F722D32302D626F72646572207B0D0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1373) := '723A20233961633937662021696D706F7274616E743B0D0A20207374726F6B653A20233961633937662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3231207B0D0A20206261636B67726F756E642D636F6C6F723A2023653465353735';
wwv_flow_api.g_varchar2_table(1374) := '2021696D706F7274616E743B0D0A202066696C6C3A20236534653537352021696D706F7274616E743B0D0A2020636F6C6F723A20233463346330662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32312D62672C0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1375) := '722D32312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537352021696D706F7274616E743B0D0A202066696C6C3A20236534653537352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1376) := '2D32312D7478742C0D0A2E752D636F6C6F722D32312D74657874207B0D0A2020636F6C6F723A20236534653537352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32312D62642C0D0A2E752D636F6C6F722D32312D626F72646572207B';
wwv_flow_api.g_varchar2_table(1377) := '0D0A2020626F726465722D636F6C6F723A20236534653537352021696D706F7274616E743B0D0A20207374726F6B653A20236534653537352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3232207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1378) := '2D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A202066696C6C3A20236663643836652021696D706F7274616E743B0D0A2020636F6C6F723A20233639346630322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1379) := '32322D62672C0D0A2E752D636F6C6F722D32322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A202066696C6C3A20236663643836652021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1380) := '743B0D0A7D0D0A2E752D636F6C6F722D32322D7478742C0D0A2E752D636F6C6F722D32322D74657874207B0D0A2020636F6C6F723A20236663643836652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32322D62642C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1381) := '6C6F722D32322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A20207374726F6B653A20236663643836652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D323320';
wwv_flow_api.g_varchar2_table(1382) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136352021696D706F7274616E743B0D0A202066696C6C3A20236631396136352021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(1383) := '3B0D0A7D0D0A2E752D636F6C6F722D32332D62672C0D0A2E752D636F6C6F722D32332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136352021696D706F7274616E743B0D0A202066696C6C3A202366';
wwv_flow_api.g_varchar2_table(1384) := '31396136352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32332D7478742C0D0A2E752D636F6C6F722D32332D74657874207B0D0A2020636F6C6F723A20236631396136352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1385) := '722D32332D62642C0D0A2E752D636F6C6F722D32332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236631396136352021696D706F7274616E743B0D0A20207374726F6B653A20236631396136352021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1386) := '7D0D0A2E752D636F6C6F722D3234207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337362021696D706F7274616E743B0D0A202066696C6C3A20236564376337362021696D706F7274616E743B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1387) := '666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D62672C0D0A2E752D636F6C6F722D32342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337362021696D706F727461';
wwv_flow_api.g_varchar2_table(1388) := '6E743B0D0A202066696C6C3A20236564376337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D7478742C0D0A2E752D636F6C6F722D32342D74657874207B0D0A2020636F6C6F723A20236564376337362021696D706F727461';
wwv_flow_api.g_varchar2_table(1389) := '6E743B0D0A7D0D0A2E752D636F6C6F722D32342D62642C0D0A2E752D636F6C6F722D32342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376337362021696D706F7274616E743B0D0A20207374726F6B653A20236564376337';
wwv_flow_api.g_varchar2_table(1390) := '362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3235207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461302021696D706F7274616E743B0D0A202066696C6C3A20236564376461302021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(1391) := '3B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32352D62672C0D0A2E752D636F6C6F722D32352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1392) := '6564376461302021696D706F7274616E743B0D0A202066696C6C3A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32352D7478742C0D0A2E752D636F6C6F722D32352D74657874207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1393) := '6564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32352D62642C0D0A2E752D636F6C6F722D32352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376461302021696D706F7274616E743B0D0A20';
wwv_flow_api.g_varchar2_table(1394) := '207374726F6B653A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3236207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962312021696D706F7274616E743B0D0A202066696C6C3A20236435';
wwv_flow_api.g_varchar2_table(1395) := '373962312021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32362D62672C0D0A2E752D636F6C6F722D32362D6261636B67726F756E64207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1396) := '67726F756E642D636F6C6F723A20236435373962312021696D706F7274616E743B0D0A202066696C6C3A20236435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32362D7478742C0D0A2E752D636F6C6F722D32362D746578';
wwv_flow_api.g_varchar2_table(1397) := '74207B0D0A2020636F6C6F723A20236435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32362D62642C0D0A2E752D636F6C6F722D32362D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023643537396231';
wwv_flow_api.g_varchar2_table(1398) := '2021696D706F7274616E743B0D0A20207374726F6B653A20236435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3237207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161662021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1399) := '743B0D0A202066696C6C3A20233964373161662021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32372D62672C0D0A2E752D636F6C6F722D32372D6261636B67';
wwv_flow_api.g_varchar2_table(1400) := '726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161662021696D706F7274616E743B0D0A202066696C6C3A20233964373161662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32372D7478742C0D0A';
wwv_flow_api.g_varchar2_table(1401) := '2E752D636F6C6F722D32372D74657874207B0D0A2020636F6C6F723A20233964373161662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32372D62642C0D0A2E752D636F6C6F722D32372D626F72646572207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1402) := '2D636F6C6F723A20233964373161662021696D706F7274616E743B0D0A20207374726F6B653A20233964373161662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3238207B0D0A20206261636B67726F756E642D636F6C6F723A202337';
wwv_flow_api.g_varchar2_table(1403) := '62383662642021696D706F7274616E743B0D0A202066696C6C3A20233762383662642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32382D62672C0D0A2E75';
wwv_flow_api.g_varchar2_table(1404) := '2D636F6C6F722D32382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662642021696D706F7274616E743B0D0A202066696C6C3A20233762383662642021696D706F7274616E743B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1405) := '636F6C6F722D32382D7478742C0D0A2E752D636F6C6F722D32382D74657874207B0D0A2020636F6C6F723A20233762383662642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32382D62642C0D0A2E752D636F6C6F722D32382D626F72';
wwv_flow_api.g_varchar2_table(1406) := '646572207B0D0A2020626F726465722D636F6C6F723A20233762383662642021696D706F7274616E743B0D0A20207374726F6B653A20233762383662642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3239207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(1407) := '726F756E642D636F6C6F723A20236266633864312021696D706F7274616E743B0D0A202066696C6C3A20236266633864312021696D706F7274616E743B0D0A2020636F6C6F723A20233364343835342021696D706F7274616E743B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1408) := '6F6C6F722D32392D62672C0D0A2E752D636F6C6F722D32392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864312021696D706F7274616E743B0D0A202066696C6C3A20236266633864312021696D70';
wwv_flow_api.g_varchar2_table(1409) := '6F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32392D7478742C0D0A2E752D636F6C6F722D32392D74657874207B0D0A2020636F6C6F723A20236266633864312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32392D62642C0D0A';
wwv_flow_api.g_varchar2_table(1410) := '2E752D636F6C6F722D32392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236266633864312021696D706F7274616E743B0D0A20207374726F6B653A20236266633864312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1411) := '722D3330207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461642021696D706F7274616E743B0D0A202066696C6C3A20233862396461642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F';
wwv_flow_api.g_varchar2_table(1412) := '7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D62672C0D0A2E752D636F6C6F722D33302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461642021696D706F7274616E743B0D0A202066696C';
wwv_flow_api.g_varchar2_table(1413) := '6C3A20233862396461642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D7478742C0D0A2E752D636F6C6F722D33302D74657874207B0D0A2020636F6C6F723A20233862396461642021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1414) := '2D636F6C6F722D33302D62642C0D0A2E752D636F6C6F722D33302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233862396461642021696D706F7274616E743B0D0A20207374726F6B653A20233862396461642021696D706F727461';
wwv_flow_api.g_varchar2_table(1415) := '6E743B0D0A7D0D0A2E752D636F6C6F722D3331207B0D0A20206261636B67726F756E642D636F6C6F723A20233139386363612021696D706F7274616E743B0D0A202066696C6C3A20233139386363612021696D706F7274616E743B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1416) := '3A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D62672C0D0A2E752D636F6C6F722D33312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233139386363612021696D';
wwv_flow_api.g_varchar2_table(1417) := '706F7274616E743B0D0A202066696C6C3A20233139386363612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D7478742C0D0A2E752D636F6C6F722D33312D74657874207B0D0A2020636F6C6F723A20233139386363612021696D';
wwv_flow_api.g_varchar2_table(1418) := '706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D62642C0D0A2E752D636F6C6F722D33312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233139386363612021696D706F7274616E743B0D0A20207374726F6B653A2023';
wwv_flow_api.g_varchar2_table(1419) := '3139386363612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3332207B0D0A20206261636B67726F756E642D636F6C6F723A20233032613562652021696D706F7274616E743B0D0A202066696C6C3A20233032613562652021696D706F';
wwv_flow_api.g_varchar2_table(1420) := '7274616E743B0D0A2020636F6C6F723A20233030303030302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D62672C0D0A2E752D636F6C6F722D33322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1421) := '6F723A20233032613562652021696D706F7274616E743B0D0A202066696C6C3A20233032613562652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D7478742C0D0A2E752D636F6C6F722D33322D74657874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1422) := '6F723A20233032613562652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D62642C0D0A2E752D636F6C6F722D33322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233032613562652021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1423) := '743B0D0A20207374726F6B653A20233032613562652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3333207B0D0A20206261636B67726F756E642D636F6C6F723A20233138623161652021696D706F7274616E743B0D0A202066696C6C';
wwv_flow_api.g_varchar2_table(1424) := '3A20233138623161652021696D706F7274616E743B0D0A2020636F6C6F723A20233030303030302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33332D62672C0D0A2E752D636F6C6F722D33332D6261636B67726F756E64207B0D0A20';
wwv_flow_api.g_varchar2_table(1425) := '206261636B67726F756E642D636F6C6F723A20233138623161652021696D706F7274616E743B0D0A202066696C6C3A20233138623161652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33332D7478742C0D0A2E752D636F6C6F722D33';
wwv_flow_api.g_varchar2_table(1426) := '332D74657874207B0D0A2020636F6C6F723A20233138623161652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33332D62642C0D0A2E752D636F6C6F722D33332D626F72646572207B0D0A2020626F726465722D636F6C6F723A202331';
wwv_flow_api.g_varchar2_table(1427) := '38623161652021696D706F7274616E743B0D0A20207374726F6B653A20233138623161652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3334207B0D0A20206261636B67726F756E642D636F6C6F723A20233234613437352021696D70';
wwv_flow_api.g_varchar2_table(1428) := '6F7274616E743B0D0A202066696C6C3A20233234613437352021696D706F7274616E743B0D0A2020636F6C6F723A20236566666266372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33342D62672C0D0A2E752D636F6C6F722D33342D';
wwv_flow_api.g_varchar2_table(1429) := '6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233234613437352021696D706F7274616E743B0D0A202066696C6C3A20233234613437352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33342D74';
wwv_flow_api.g_varchar2_table(1430) := '78742C0D0A2E752D636F6C6F722D33342D74657874207B0D0A2020636F6C6F723A20233234613437352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33342D62642C0D0A2E752D636F6C6F722D33342D626F72646572207B0D0A202062';
wwv_flow_api.g_varchar2_table(1431) := '6F726465722D636F6C6F723A20233234613437352021696D706F7274616E743B0D0A20207374726F6B653A20233234613437352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3335207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1432) := '723A20233661616434322021696D706F7274616E743B0D0A202066696C6C3A20233661616434322021696D706F7274616E743B0D0A2020636F6C6F723A20233063313530362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33352D6267';
wwv_flow_api.g_varchar2_table(1433) := '2C0D0A2E752D636F6C6F722D33352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233661616434322021696D706F7274616E743B0D0A202066696C6C3A20233661616434322021696D706F7274616E743B0D0A7D';
wwv_flow_api.g_varchar2_table(1434) := '0D0A2E752D636F6C6F722D33352D7478742C0D0A2E752D636F6C6F722D33352D74657874207B0D0A2020636F6C6F723A20233661616434322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33352D62642C0D0A2E752D636F6C6F722D33';
wwv_flow_api.g_varchar2_table(1435) := '352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233661616434322021696D706F7274616E743B0D0A20207374726F6B653A20233661616434322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3336207B0D0A2020';
wwv_flow_api.g_varchar2_table(1436) := '6261636B67726F756E642D636F6C6F723A20236339636133392021696D706F7274616E743B0D0A202066696C6C3A20236339636133392021696D706F7274616E743B0D0A2020636F6C6F723A20233264326530342021696D706F7274616E743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1437) := '0A2E752D636F6C6F722D33362D62672C0D0A2E752D636F6C6F722D33362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236339636133392021696D706F7274616E743B0D0A202066696C6C3A2023633963613339';
wwv_flow_api.g_varchar2_table(1438) := '2021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33362D7478742C0D0A2E752D636F6C6F722D33362D74657874207B0D0A2020636F6C6F723A20236339636133392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33362D';
wwv_flow_api.g_varchar2_table(1439) := '62642C0D0A2E752D636F6C6F722D33362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236339636133392021696D706F7274616E743B0D0A20207374726F6B653A20236339636133392021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1440) := '2D636F6C6F722D3337207B0D0A20206261636B67726F756E642D636F6C6F723A20236439623133622021696D706F7274616E743B0D0A202066696C6C3A20236439623133622021696D706F7274616E743B0D0A2020636F6C6F723A202334363334303020';
wwv_flow_api.g_varchar2_table(1441) := '21696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D62672C0D0A2E752D636F6C6F722D33372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236439623133622021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1442) := '202066696C6C3A20236439623133622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D7478742C0D0A2E752D636F6C6F722D33372D74657874207B0D0A2020636F6C6F723A20236439623133622021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1443) := '7D0D0A2E752D636F6C6F722D33372D62642C0D0A2E752D636F6C6F722D33372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236439623133622021696D706F7274616E743B0D0A20207374726F6B653A20236439623133622021696D';
wwv_flow_api.g_varchar2_table(1444) := '706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3338207B0D0A20206261636B67726F756E642D636F6C6F723A20236437366132372021696D706F7274616E743B0D0A202066696C6C3A20236437366132372021696D706F7274616E743B0D0A2020';
wwv_flow_api.g_varchar2_table(1445) := '636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D62672C0D0A2E752D636F6C6F722D33382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236437366132';
wwv_flow_api.g_varchar2_table(1446) := '372021696D706F7274616E743B0D0A202066696C6C3A20236437366132372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D7478742C0D0A2E752D636F6C6F722D33382D74657874207B0D0A2020636F6C6F723A20236437366132';
wwv_flow_api.g_varchar2_table(1447) := '372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D62642C0D0A2E752D636F6C6F722D33382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236437366132372021696D706F7274616E743B0D0A20207374726F';
wwv_flow_api.g_varchar2_table(1448) := '6B653A20236437366132372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3339207B0D0A20206261636B67726F756E642D636F6C6F723A20236432343233622021696D706F7274616E743B0D0A202066696C6C3A202364323432336220';
wwv_flow_api.g_varchar2_table(1449) := '21696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33392D62672C0D0A2E752D636F6C6F722D33392D6261636B67726F756E64207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1450) := '642D636F6C6F723A20236432343233622021696D706F7274616E743B0D0A202066696C6C3A20236432343233622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33392D7478742C0D0A2E752D636F6C6F722D33392D74657874207B0D0A';
wwv_flow_api.g_varchar2_table(1451) := '2020636F6C6F723A20236432343233622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33392D62642C0D0A2E752D636F6C6F722D33392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236432343233622021696D70';
wwv_flow_api.g_varchar2_table(1452) := '6F7274616E743B0D0A20207374726F6B653A20236432343233622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3430207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336662021696D706F7274616E743B0D0A20';
wwv_flow_api.g_varchar2_table(1453) := '2066696C6C3A20236431343336662021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34302D62672C0D0A2E752D636F6C6F722D34302D6261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1454) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336662021696D706F7274616E743B0D0A202066696C6C3A20236431343336662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34302D7478742C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1455) := '6C6F722D34302D74657874207B0D0A2020636F6C6F723A20236431343336662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34302D62642C0D0A2E752D636F6C6F722D34302D626F72646572207B0D0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1456) := '723A20236431343336662021696D706F7274616E743B0D0A20207374726F6B653A20236431343336662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3431207B0D0A20206261636B67726F756E642D636F6C6F723A2023626133643838';
wwv_flow_api.g_varchar2_table(1457) := '2021696D706F7274616E743B0D0A202066696C6C3A20236261336438382021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34312D62672C0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1458) := '722D34312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236261336438382021696D706F7274616E743B0D0A202066696C6C3A20236261336438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1459) := '2D34312D7478742C0D0A2E752D636F6C6F722D34312D74657874207B0D0A2020636F6C6F723A20236261336438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34312D62642C0D0A2E752D636F6C6F722D34312D626F72646572207B';
wwv_flow_api.g_varchar2_table(1460) := '0D0A2020626F726465722D636F6C6F723A20236261336438382021696D706F7274616E743B0D0A20207374726F6B653A20236261336438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3432207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1461) := '2D636F6C6F723A20233737333339332021696D706F7274616E743B0D0A202066696C6C3A20233737333339332021696D706F7274616E743B0D0A2020636F6C6F723A20236636656666392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1462) := '34322D62672C0D0A2E752D636F6C6F722D34322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233737333339332021696D706F7274616E743B0D0A202066696C6C3A20233737333339332021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1463) := '743B0D0A7D0D0A2E752D636F6C6F722D34322D7478742C0D0A2E752D636F6C6F722D34322D74657874207B0D0A2020636F6C6F723A20233737333339332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34322D62642C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1464) := '6C6F722D34322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233737333339332021696D706F7274616E743B0D0A20207374726F6B653A20233737333339332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D343320';
wwv_flow_api.g_varchar2_table(1465) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561332021696D706F7274616E743B0D0A202066696C6C3A20233364346561332021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(1466) := '3B0D0A7D0D0A2E752D636F6C6F722D34332D62672C0D0A2E752D636F6C6F722D34332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561332021696D706F7274616E743B0D0A202066696C6C3A202333';
wwv_flow_api.g_varchar2_table(1467) := '64346561332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34332D7478742C0D0A2E752D636F6C6F722D34332D74657874207B0D0A2020636F6C6F723A20233364346561332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1468) := '722D34332D62642C0D0A2E752D636F6C6F722D34332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233364346561332021696D706F7274616E743B0D0A20207374726F6B653A20233364346561332021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1469) := '7D0D0A2E752D636F6C6F722D3434207B0D0A20206261636B67726F756E642D636F6C6F723A20233863396562302021696D706F7274616E743B0D0A202066696C6C3A20233863396562302021696D706F7274616E743B0D0A2020636F6C6F723A20233238';
wwv_flow_api.g_varchar2_table(1470) := '336134642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D62672C0D0A2E752D636F6C6F722D34342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233863396562302021696D706F727461';
wwv_flow_api.g_varchar2_table(1471) := '6E743B0D0A202066696C6C3A20233863396562302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D7478742C0D0A2E752D636F6C6F722D34342D74657874207B0D0A2020636F6C6F723A20233863396562302021696D706F727461';
wwv_flow_api.g_varchar2_table(1472) := '6E743B0D0A7D0D0A2E752D636F6C6F722D34342D62642C0D0A2E752D636F6C6F722D34342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233863396562302021696D706F7274616E743B0D0A20207374726F6B653A20233863396562';
wwv_flow_api.g_varchar2_table(1473) := '302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3435207B0D0A20206261636B67726F756E642D636F6C6F723A20233465373339312021696D706F7274616E743B0D0A202066696C6C3A20233465373339312021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(1474) := '3B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34352D62672C0D0A2E752D636F6C6F722D34352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1475) := '3465373339312021696D706F7274616E743B0D0A202066696C6C3A20233465373339312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34352D7478742C0D0A2E752D636F6C6F722D34352D74657874207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1476) := '3465373339312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34352D62642C0D0A2E752D636F6C6F722D34352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233465373339312021696D706F7274616E743B0D0A20';
wwv_flow_api.g_varchar2_table(1477) := '207374726F6B653A20233465373339312021696D706F7274616E743B0D0A7D0D0A0D0A2E752D636F6C6F722D7472616E73706172656E74207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1478) := '743B0D0A2020636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D6267207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E7420';
wwv_flow_api.g_varchar2_table(1479) := '21696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D7478742C0D0A2E752D636F6C6F722D7472616E73706172656E742D74657874207B0D0A2020636F6C6F723A207472616E73706172656E742021696D706F7274';
wwv_flow_api.g_varchar2_table(1480) := '616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D62642C0D0A2E752D636F6C6F722D7472616E73706172656E742D626F72646572207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E742021696D706F72';
wwv_flow_api.g_varchar2_table(1481) := '74616E743B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(77415535552724472)
,p_theme_id=>42
,p_file_name=>'77415128946724470.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77098522708686748)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77098922400686749)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77099567881686749)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77099969896686749)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77103320094686751)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77103759957686751)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77105586275686752)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77106302473686753)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77107521953686753)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77108705001686753)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77109144716686754)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77111182818686754)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77114554245686756)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77116974630686757)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77117702189686757)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77118879710686758)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77120761139686758)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77130666133686763)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77131005960686763)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77131801125686764)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77133925275686764)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77134997720686767)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77135548628686767)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77136764015686768)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77138314412686769)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77142162016686771)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77145744519686773)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77146328798686774)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77146796147686774)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77148351379686775)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77149572464686775)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77151390675686776)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77152186332686776)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77154300233686778)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77154920265686778)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77155957733686779)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77158132049686781)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77159354515686781)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77160552587686782)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77163122358686784)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77166366906686786)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77168377469686787)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77168959524686787)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77173754944686789)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77175393025686792)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77177421740686820)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77177849651686821)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77179443084686821)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77179802326686821)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77181429770686823)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77181858486686823)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77183478172686823)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77183822998686824)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77185494296686824)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77185832543686824)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77186295476686824)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77186616662686824)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77187007564686825)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77187429469686825)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77187853315686825)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77189266581686825)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77190622602686826)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77191670328686826)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77192012081686827)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77192404918686827)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77192819415686827)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77193422059686827)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77194015802686828)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77194442759686828)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77194814070686828)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77195204666686828)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77196008686686829)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77080162106686730)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(77077122244686718)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77081426405686732)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(77080207731686731)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77081676785686733)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(77080207731686731)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77083783534686734)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(77082561910686733)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77083984322686734)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(77082561910686733)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77086778994686735)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(77084050604686734)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77089555749686736)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(77086872180686735)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77092680139686737)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(77089637403686736)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77095100954686738)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(77092775634686737)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77097633990686742)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(77095207607686738)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77098309923686746)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(77097786133686744)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77098754733686749)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77097786133686744)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(77098522708686748)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77099126771686749)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77097786133686744)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(77098922400686749)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77099332835686749)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77097786133686744)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(77098922400686749)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77099716155686749)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77097786133686744)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(77099567881686749)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77100191378686749)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77097786133686744)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(77099969896686749)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77100301879686749)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77097786133686744)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(77098522708686748)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77100533668686750)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77097786133686744)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(77099567881686749)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77100739878686750)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77097786133686744)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(77098522708686748)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77100961956686750)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77097786133686744)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(77099567881686749)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77101152703686750)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77097786133686744)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(77098522708686748)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77101336046686750)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77097786133686744)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(77099969896686749)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77103598792686751)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(77102478702686750)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77103930695686751)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(77102478702686750)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(77103759957686751)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77104128043686751)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(77102478702686750)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77104306871686751)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(77102478702686750)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(77103759957686751)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77104574465686751)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77102478702686750)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77105799029686752)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(77105586275686752)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77105978302686752)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(77105586275686752)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77106165038686752)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(77105586275686752)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77106519296686753)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(77106302473686753)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77106707270686753)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(77106302473686753)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77106951832686753)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(77106302473686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77107128551686753)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(77105586275686752)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77107380226686753)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(77106302473686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77107705395686753)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77107975971686753)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77108106289686753)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77108397605686753)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77108520834686753)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77108980847686753)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(77108705001686753)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77109351730686754)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(77109144716686754)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77109590601686754)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(77108705001686753)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77109715504686754)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77109943599686754)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77110193405686754)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77110357311686754)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(77109144716686754)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77110562143686754)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77110716760686754)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77110935786686754)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77111339227686754)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(77111182818686754)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77111521149686754)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(77111182818686754)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77111742227686755)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77104604800686751)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77112758757686755)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(77106302473686753)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77112933679686755)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(77106302473686753)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77113112087686755)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(77106302473686753)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77113351924686755)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(77106302473686753)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77113531670686755)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77113725388686756)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77113941559686756)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77114147065686756)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77114335336686756)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77114750336686756)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(77114554245686756)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77114951346686756)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(77114554245686756)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77115105456686756)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(77109144716686754)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77115323224686756)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77115594838686756)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77115750657686756)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77115950604686756)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77116115360686756)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(77109144716686754)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77116379073686756)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77111879816686755)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77116720326686757)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77116421591686756)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77117109386686757)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77116421591686756)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(77116974630686757)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77117383424686757)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77116421591686756)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(77116974630686757)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77117525191686757)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77116421591686756)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(77116974630686757)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77117948050686757)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77116421591686756)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(77117702189686757)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77118112021686757)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77116421591686756)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(77117702189686757)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77119075476686758)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77118252427686757)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(77118879710686758)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77119223353686758)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77118252427686757)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77119497060686758)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77118252427686757)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77119682726686758)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77118252427686757)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77120369509686758)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(77119788284686758)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77120560683686758)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77119788284686758)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77120916854686758)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77119788284686758)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(77120761139686758)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77121113891686758)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77119788284686758)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(77120761139686758)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77121351239686759)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77119788284686758)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77121502795686759)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77119788284686758)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77121706300686759)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77119788284686758)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(77120761139686758)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77122102713686759)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77121851229686759)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77122328493686759)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77121851229686759)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77123891541686759)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(77106302473686753)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77124059456686759)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(77106302473686753)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77124259918686760)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(77106302473686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77124430863686760)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(77106302473686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77124617829686760)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77124832156686760)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77125011761686760)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77125236888686760)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77125483170686760)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77125604072686760)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77125855030686760)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77126059110686760)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77126240357686761)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77126466084686761)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77126696742686761)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77126829341686761)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77127003951686761)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77127296677686761)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77127447763686761)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(77107521953686753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77127691234686761)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(77108705001686753)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77127863233686761)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(77109144716686754)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77128029678686761)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(77108705001686753)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77128217126686762)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77128401080686763)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77128602626686763)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77128811736686763)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(77109144716686754)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77129040561686763)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77129216323686763)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77129454472686763)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77129654342686763)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77122997320686759)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(77103320094686751)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77130865275686763)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77129795801686763)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(77130666133686763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77131229418686764)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77129795801686763)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(77131005960686763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77131426890686764)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77129795801686763)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77131623666686764)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77129795801686763)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(77131005960686763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77132045726686764)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77129795801686763)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(77131801125686764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77132262616686764)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77129795801686763)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(77131801125686764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77132675847686764)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(77132388965686764)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(77116974630686757)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77132800121686764)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(77132388965686764)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77133007425686764)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(77132388965686764)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(77116974630686757)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77133279245686764)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77132388965686764)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77134185966686765)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77133358995686764)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(77133925275686764)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77134346296686765)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77133358995686764)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(77133925275686764)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77134525889686765)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77133358995686764)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77135174554686767)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(77134611834686766)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(77134997720686767)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77135773728686767)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77135201773686767)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77135924756686767)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77135201773686767)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77136146273686768)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77135201773686767)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77136330981686768)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77135201773686767)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77136563449686768)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77135201773686767)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77136907210686768)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77135201773686767)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(77136764015686768)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77137197720686768)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77135201773686767)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77137359237686768)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77135201773686767)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77137518626686769)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77135201773686767)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77137710634686769)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77135201773686767)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77137971252686769)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(77135201773686767)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77138595821686769)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77138054958686769)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(77138314412686769)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77138717489686769)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77138054958686769)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(77138314412686769)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77138970016686769)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77138054958686769)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(77138314412686769)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77139183097686769)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77138054958686769)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77139336235686769)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77138054958686769)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77139513449686769)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(77138054958686769)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(77138314412686769)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77139766325686769)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77138054958686769)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(77138314412686769)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77139901598686769)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77138054958686769)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(77138314412686769)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77140325196686770)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77140043042686769)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(77138314412686769)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77140542493686771)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77140043042686769)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(77138314412686769)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77140793789686771)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77140043042686769)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(77138314412686769)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77140972682686771)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77140043042686769)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77141124471686771)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77140043042686769)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77141392795686771)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(77140043042686769)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(77138314412686769)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77141593355686771)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77140043042686769)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(77138314412686769)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77141797093686771)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77140043042686769)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(77138314412686769)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77142333230686771)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(77142162016686771)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77142564115686771)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77142759079686771)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(77142162016686771)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77142949940686771)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77143166790686772)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(77142162016686771)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77143325439686772)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77143568619686772)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77143725030686772)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(77142162016686771)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77143996960686772)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(77142162016686771)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77144132088686772)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77144329504686772)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(77134997720686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77144522680686772)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77144738042686772)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77144921347686772)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77145124240686773)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(77134997720686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77145357506686773)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77141820366686771)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77145910768686773)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77145499025686773)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(77145744519686773)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77146117486686774)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77145499025686773)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(77145744519686773)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77146501661686774)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77145499025686773)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(77146328798686774)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77146941585686774)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77145499025686773)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(77146796147686774)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77147130494686774)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77145499025686773)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(77146796147686774)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77147332933686774)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77145499025686773)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(77146796147686774)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77147501532686774)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77145499025686773)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(77146328798686774)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77147702019686774)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77145499025686773)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77147965019686774)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77145499025686773)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(77146796147686774)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77148548956686775)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77148078782686774)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(77148351379686775)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77148759214686775)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77148078782686774)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(77148351379686775)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77149323273686775)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77149741967686775)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(77149572464686775)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77149921992686775)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77150130037686775)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(77149572464686775)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77150356546686775)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77150563570686775)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(77149572464686775)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77150744370686775)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77150941426686775)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(77134997720686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77151157184686776)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(77134997720686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77151550396686776)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(77151390675686776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77151751937686776)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(77151390675686776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77151961751686776)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(77134997720686767)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77152392437686776)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(77152186332686776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77152591610686776)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(77152186332686776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77152789224686776)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77152923682686776)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(77134997720686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77153115939686776)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77153304768686776)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(77149572464686775)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77153584989686776)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(77135548628686767)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77153763782686776)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77149068493686775)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77154518188686778)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(77154044799686777)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(77154300233686778)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77154726260686778)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(77154044799686777)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(77154300233686778)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77155143381686778)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77154044799686777)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(77154920265686778)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77155361941686778)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77154044799686777)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(77154920265686778)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77155531683686778)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77154044799686777)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(77154920265686778)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77156140703686779)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77155658891686778)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(77155957733686779)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77156303300686779)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77155658891686778)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(77155957733686779)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77156505536686779)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77155658891686778)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(77155957733686779)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77156738396686779)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77155658891686778)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77157112248686780)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(77156862873686779)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77157390569686780)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77156862873686779)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77157565836686780)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77156862873686779)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77157774279686780)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77156862873686779)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77158310221686781)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77158548480686781)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77158731230686781)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77158964707686781)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77159144377686781)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77159516989686781)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(77159354515686781)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77159749314686781)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77159977384686782)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77160187246686782)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77160340731686782)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(77159354515686781)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77160774085686782)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(77160552587686782)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77160974909686782)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(77160552587686782)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77161133268686782)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(77160552587686782)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77161367129686783)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77161517499686783)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(77160552587686782)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77161735225686783)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(77157819962686780)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(77160552587686782)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77162139920686783)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77162317748686783)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77162531333686784)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77162705563686784)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77162998792686784)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77163390852686784)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(77163122358686784)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77163511928686784)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77163756667686784)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77163958695686784)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77164111332686784)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77164549218686785)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77164273469686784)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77164932727686785)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(77164633812686785)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77165131563686785)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(77164633812686785)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77165351170686785)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(77164633812686785)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77165535907686785)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(77164633812686785)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77166111696686786)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77166529586686786)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(77166366906686786)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77166771508686786)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77166998226686786)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(77166366906686786)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77167125025686786)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77167311406686786)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(77166366906686786)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77167590734686787)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77167769301686787)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(77159354515686781)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77167970102686787)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(77159354515686781)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77168190223686787)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77168543312686787)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(77168377469686787)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77168758491686787)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(77159354515686781)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77169115057686787)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(77168959524686787)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77169388394686787)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(77168959524686787)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77169577257686787)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77169765010686787)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(77159354515686781)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77169930287686787)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77170128096686787)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(77166366906686786)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77170367061686787)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(77168377469686787)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77170534326686788)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77170778360686788)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77171107812686788)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77170803229686788)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(77168959524686787)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77171346460686788)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(77170803229686788)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(77158132049686781)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77171566435686788)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77170803229686788)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(77168959524686787)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77171711079686788)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77170803229686788)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(77163122358686784)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77171979895686788)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77170803229686788)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(77159354515686781)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77172194083686788)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77170803229686788)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(77159354515686781)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77172367445686789)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(77170803229686788)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(77163122358686784)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77172968186686789)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77172639100686789)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(77159354515686781)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77173197834686789)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77172639100686789)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77173363836686789)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77172639100686789)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77173555513686789)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77172639100686789)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77173922854686789)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77172639100686789)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(77173754944686789)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77174157393686789)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77172639100686789)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(77173754944686789)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77175580912686792)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(77175193617686792)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(77175393025686792)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77175737647686792)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(77175193617686792)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(77175393025686792)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77177607923686821)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(77177421740686820)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77178099619686821)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(77177849651686821)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77178258630686821)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(77177421740686820)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77178419489686821)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(77177849651686821)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77178620793686821)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(77177421740686820)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77178868439686821)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(77177849651686821)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77179040880686821)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(77177421740686820)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77179261316686821)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(77177849651686821)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77179691764686821)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(77179443084686821)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77180012304686821)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(77179802326686821)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77180274467686822)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(77179443084686821)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77180431091686822)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(77179802326686821)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77180615643686823)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(77179443084686821)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77180880253686823)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(77179802326686821)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77181038794686823)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(77179443084686821)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77181238530686823)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(77179802326686821)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77181668342686823)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(77181429770686823)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77182038518686823)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(77181858486686823)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77182292537686823)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(77181429770686823)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77182403476686823)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(77181858486686823)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77182644360686823)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(77181429770686823)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77182830302686823)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(77181858486686823)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77183033140686823)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(77181429770686823)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77183220511686823)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(77181858486686823)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77183641550686824)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(77183478172686823)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77184039754686824)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(77183822998686824)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77184201242686824)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(77183478172686823)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77184494645686824)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(77183822998686824)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77184687598686824)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(77183478172686823)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77184828335686824)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(77183822998686824)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77185010767686824)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(77183478172686823)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77185294766686824)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(77183822998686824)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77185692289686824)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(77185494296686824)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77186028668686824)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(77185832543686824)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77186437440686824)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(77186295476686824)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77186879138686825)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(77186616662686824)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77187263299686825)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(77187007564686825)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77187648727686825)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(77187429469686825)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77188029101686825)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(77187853315686825)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77188242503686825)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(77187853315686825)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77188415222686825)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(77185832543686824)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77188648369686825)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(77186295476686824)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77188818066686825)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(77186616662686824)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77189078995686825)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(77187007564686825)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77189463273686825)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(77189266581686825)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77189607296686825)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(77189266581686825)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77189813016686826)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(77189266581686825)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77190079814686826)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(77185494296686824)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77190258538686826)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(77187853315686825)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77190413338686826)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(77187429469686825)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77190845994686826)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(77190622602686826)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77191090532686826)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(77185494296686824)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77191297892686826)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(77187429469686825)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77191425475686826)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(77185494296686824)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77191836265686826)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(77191670328686826)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77192255803686827)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(77192012081686827)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77192650292686827)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(77192404918686827)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77193018520686827)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(77192819415686827)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77193242766686827)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(77192819415686827)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77193644044686827)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(77193422059686827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77193890400686827)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(77192012081686827)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77194230822686828)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(77194015802686828)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77194650890686828)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(77194442759686828)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77195034821686828)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(77194814070686828)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77195461741686828)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(77195204666686828)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77195667791686828)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77195867988686828)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(77194015802686828)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77196246247686829)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(77196008686686829)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(77198522500686849)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(77198641042686849)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(77198770545686849)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(77198906064686849)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Application Express build option, from within the application.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(77199261994686849)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(77199310647686849)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(77202221313686856)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(77076011221686693)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(77196920167686832)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(77076831155686697)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(77164273469686784)
,p_nav_list_template_options=>'#DEFAULT#'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(77196699073686831)
,p_nav_bar_list_template_id=>wwv_flow_api.id(77165636872686785)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111940'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'TEST'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629112152'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77212526814686917)
,p_plug_name=>'TEST'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77118252427686757)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77257332644687041)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--cols:t-Cards--hideBody:t-Cards--animRaiseCard'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(77255855115687040)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(77165852169686786)
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Duplicate Customers'
,p_step_title=>'Duplicate Customers'
,p_step_sub_title=>'Duplicate Customers'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200703165721'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77213912373686919)
,p_plug_name=>'Duplicate Customers'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77121851229686759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from duplicate_match@prod where org_id = 84'
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77214058136686919)
,p_name=>'Duplicate Customers'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'WAQAR.HAMEED'
,p_internal_uid=>77214058136686919
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77214489554686928)
,p_db_column_name=>'MEMBER_N_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Member N Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77214884403686930)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77215230085686930)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77215609069686930)
,p_db_column_name=>'BIRTH_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Birth Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77216014725686930)
,p_db_column_name=>'MD_UNIVERSITY_DISP'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Md University Disp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77216420897686931)
,p_db_column_name=>'MD_YEAR_OBTAINED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Md Year Obtained'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77216814865686931)
,p_db_column_name=>'ADDRESS1'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Address1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77217223572686931)
,p_db_column_name=>'ADDRESS2'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Address2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77217640138686932)
,p_db_column_name=>'ADDRESS3'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Address3'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77218099934686932)
,p_db_column_name=>'ADDRESS4'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Address4'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77218447289686933)
,p_db_column_name=>'CITY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77218835637686933)
,p_db_column_name=>'PROVINCE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Province'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77219254893686933)
,p_db_column_name=>'POSTAL_CODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Postal Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77219639900686933)
,p_db_column_name=>'COUNTRY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77220003130686934)
,p_db_column_name=>'ORG_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77416853862751390)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'774169'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEMBER_N_ID:FIRST_NAME:LAST_NAME:BIRTH_DATE:MD_UNIVERSITY_DISP:MD_YEAR_OBTAINED:ADDRESS1:ADDRESS2:ADDRESS3:ADDRESS4:CITY:PROVINCE:POSTAL_CODE:COUNTRY:ORG_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77221255852686937)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77132388965686764)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(77076305690686695)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(77175857401686792)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77220484672686934)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77213912373686919)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(77175193617686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75823282884512946)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77213912373686919)
,p_button_name=>'Merge'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Merge'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75823414733512948)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77213912373686919)
,p_button_name=>'MERGE_DELETE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Merge & Delete'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP::'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Customer Merged'
,p_step_title=>'Customer Merged'
,p_step_sub_title=>'Customer Dashboard'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200703162850'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77453733175824569)
,p_plug_name=>'Customer Merged'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77121851229686759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from ',
'xx_customer_merged where',
'trunc(creation_Date) between :P3_DATE_FROM AND :P3_DATE_TO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77453861342824569)
,p_name=>'Customer Dashboard'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'WAQAR.HAMEED'
,p_internal_uid=>77453861342824569
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77454280256824570)
,p_db_column_name=>'CUSTOMER_MERGE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Customer Merge Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77454641554824571)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77455004279824571)
,p_db_column_name=>'CUSTOMER_ADDRESS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Customer Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77455417080824571)
,p_db_column_name=>'DUPLICATE_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Duplicate Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77455818407824571)
,p_db_column_name=>'DUPLICATE_ADDRESS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Duplicate Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77456262739824572)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77456637807825209)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'774567'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTOMER_MERGE_ID:CUSTOMER_NAME:CUSTOMER_ADDRESS:DUPLICATE_NAME:DUPLICATE_ADDRESS:CREATION_DATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77438085273690423)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(77453733175824569)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Submit'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77437727288690420)
,p_name=>'P3_DATE_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77453733175824569)
,p_prompt=>'Date From'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77437857144690421)
,p_name=>'P3_DATE_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77453733175824569)
,p_prompt=>'Date To'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Merge Customer'
,p_page_mode=>'MODAL'
,p_step_title=>'Merge Customer'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200703183923'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75822299366512936)
,p_plug_name=>'Merge Customers'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(77122997320686759)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75822760907512941)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75822299366512936)
,p_button_name=>'Merge'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Merge'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75822323696512937)
,p_name=>'P5_DUPLICATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75822299366512936)
,p_prompt=>'From Customer'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75822455642512938)
,p_name=>'P5_MERGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75822299366512936)
,p_prompt=>'To Customer'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75822658105512940)
,p_name=>'P5_ORG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75822299366512936)
,p_prompt=>'Org Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75823072965512944)
,p_name=>'submit'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75822760907512941)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75823173941512945)
,p_event_id=>wwv_flow_api.id(75823072965512944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'xx_customer_merge(',
':P5_DUPLICATE,:P_MERGE,',
'''N'',:P5_ORG)'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Delete After Merge'
,p_page_mode=>'MODAL'
,p_step_title=>'Delete After Merge'
,p_step_sub_title=>'Delete After Merge'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200703184005'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(153250095341076548)
,p_plug_name=>'Merge & Delete Customers'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(77122997320686759)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77428705136563625)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(153250095341076548)
,p_button_name=>'Merge_Delete'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Merge & Delete'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77429123429563630)
,p_name=>'P6_DUPLICATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(153250095341076548)
,p_prompt=>'From Customer'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77429507023563634)
,p_name=>'P6_MERGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(153250095341076548)
,p_prompt=>'To Customer'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77429916795563634)
,p_name=>'P6_ORG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(153250095341076548)
,p_prompt=>'Org Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77430307982563637)
,p_name=>'submit'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(77428705136563625)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77430893097563638)
,p_event_id=>wwv_flow_api.id(77430307982563637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'xx_customer_merge(',
':P6_DUPLICATE,:P_MERGE,',
'''Y'',:P6_ORG)'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'abcd'
,p_step_title=>'abcd'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629113917'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75822809754512942)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(77122997320686759)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75822960475512943)
,p_name=>'P7_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75822809754512942)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'TEST - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(77081766643686733)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111941'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77205646227686893)
,p_plug_name=>'TEST'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77122492668686759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77210386011686907)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(77205646227686893)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77208428533686904)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(77205646227686893)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77206082256686897)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77205646227686893)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(77174215918686789)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77206455645686899)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77205646227686893)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(77174215918686789)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77207553705686902)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77205646227686893)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(77206715473686899)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(77174215918686789)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77209248703686906)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77208842696686906)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77210093634686907)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77209652404686906)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_api.create_page(
 p_id=>10000
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Administration'
,p_alias=>'ADMIN'
,p_step_title=>'Administration'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77397345126687221)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77132388965686764)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(77076305690686695)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(77175857401686792)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77403134539687225)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101647127686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77403524341687225)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_api.id(77403134539687225)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77122997320686759)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(77397924396687222)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77403990725687225)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_api.id(77403134539687225)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77122997320686759)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(77399084013687222)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(77198641042686849)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77404384571687225)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101647127686750)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77404754179687226)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_api.id(77404384571687225)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77122997320686759)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(77198522500686849)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77405551522687226)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_api.id(77404754179687226)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77097786133686744)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope   varchar2(45);',
'begin',
'    l_acl_scope   := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'') );',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'') );',
'    else',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope) );',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(77405920782687226)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_api.id(77404754179687226)
,p_template=>wwv_flow_api.id(77122997320686759)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from  APEX_APPL_ACL_ROLES r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(77138054958686769)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77406657274687231)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77407030837687231)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77407463112687231)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77410501896687237)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_api.id(77404754179687226)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(77401382406687224)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77410981403687237)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_api.id(77404384571687225)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77122997320686759)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(77198770545686849)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(77411365216687237)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_api.id(77410981403687237)
,p_template=>wwv_flow_api.id(77122997320686759)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(77138054958686769)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77412055386687241)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77412482822687241)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77414333883687245)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_api.id(77410981403687237)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(77402444893687224)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(77161882574686783)
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77405136315687226)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77404754179687226)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(77175193617686792)
,p_button_image_alt=>'Add'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77409656859687236)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(77405136315687226)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77410150268687237)
,p_event_id=>wwv_flow_api.id(77409656859687236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77405920782687226)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_api.create_page(
 p_id=>10010
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Configuration Options'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198906064686849)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111942'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77257758087687041)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77102478702686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77257960259687041)
,p_plug_name=>'Configuration Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(77121851229686759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end ),',
'         p_attributes => ''style="white-space:pre;"'') "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'', ''APPLICATION_CONFIGURATION'')'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77258943850687042)
,p_name=>'Configuration Options'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'WAQAR.HAMEED'
,p_internal_uid=>77258943850687042
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77259059402687047)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77259411600687049)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77259854621687049)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77260249467687050)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77260653081687050)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77261078971687050)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77261441378687051)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77262172217687052)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'772622'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77263798693687054)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77257758087687041)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77263084754687053)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77257960259687041)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(77175193617686792)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77264596307687054)
,p_branch_name=>'Refresh Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77264167974687054)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_api.create_page(
 p_id=>10020
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Application Appearance'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77199310647686849)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111942'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77264801416687055)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77102478702686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77264912638687055)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77266765456687056)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77264801416687055)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77266234246687056)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77264801416687055)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77267130089687056)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77267427159687056)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77264912638687055)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'    s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and t.is_current = ''Yes''',
'order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77268173496687058)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77264912638687055)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ui.theme_style_by_user_pref',
'  from apex_application_themes t, apex_appl_user_interfaces ui',
' where ui.application_id = t.application_id',
'   and ui.theme_number   = t.theme_number',
'   and t.application_id  = :app_id ',
'   and t.ui_type_name    = ''DESKTOP''',
'   and t.is_current      = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_api.id(77268206943687058)||'.'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(77174215918686789)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77265169162687055)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(77266234246687056)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77269657203687059)
,p_event_id=>wwv_flow_api.id(77265169162687055)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77270117670687059)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => c1.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77270562416687060)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for c1 in ( select ui.theme_number',
'                from apex_application_themes t,',
'                    apex_appl_user_interfaces ui',
'                where ui.application_id = t.application_id',
'                    and ui.theme_number   = t.theme_number',
'                    and t.application_id  = :APP_ID',
'                    and t.ui_type_name    = ''DESKTOP''',
'                    and t.is_current      = ''Yes'' ) loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => c1.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => c1.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'  end loop;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_api.create_page(
 p_id=>10030
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Activity Dashboard'
,p_alias=>'DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198641042686849)
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111943'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77270883151687060)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77122997320686759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(77270913991687060)
,p_region_id=>wwv_flow_api.id(77270883151687060)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(77273159454687061)
,p_chart_id=>wwv_flow_api.id(77270913991687060)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select  w.start_tm log_time,',
'    (   select count(*)',
'        from apex_activity_log l',
'        where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(77273782746687062)
,p_chart_id=>wwv_flow_api.id(77270913991687060)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(77274388985687063)
,p_chart_id=>wwv_flow_api.id(77270913991687060)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77271002661687060)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77122997320686759)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(77271149387687060)
,p_region_id=>wwv_flow_api.id(77271002661687060)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(77278142017687066)
,p_chart_id=>wwv_flow_api.id(77271149387687060)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value ',
'from',
'(',
'select step_id,',
'    count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'    and step_id is not null',
'group by step_id',
'order by 2 desc',
') x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(77278776521687067)
,p_chart_id=>wwv_flow_api.id(77271149387687060)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(77279347120687067)
,p_chart_id=>wwv_flow_api.id(77271149387687060)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77271288104687060)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77122997320686759)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(77271319756687060)
,p_region_id=>wwv_flow_api.id(77271288104687060)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(77275604159687065)
,p_chart_id=>wwv_flow_api.id(77271319756687060)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( lower(userid), apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( lower(userid), apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(77276271285687065)
,p_chart_id=>wwv_flow_api.id(77271319756687060)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(77276867982687066)
,p_chart_id=>wwv_flow_api.id(77271319756687060)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(77271410580687060)
,p_name=>'Recent Errors'
,p_template=>wwv_flow_api.id(77122997320686759)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    sqlerrm label,',
'    time_stamp value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'and sqlerrm is not null',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_query_row_template=>wwv_flow_api.id(77145499025686773)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77280414301687072)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77280843617687073)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(77271585956687060)
,p_name=>'Latest Activity'
,p_template=>wwv_flow_api.id(77122997320686759)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(USERID) as username,',
'    max(time_stamp) as last_activity',
'from apex_activity_log',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'    and lower(USERID) is not null',
'group by lower(USERID)',
'order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_query_row_template=>wwv_flow_api.id(77145499025686773)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77283511922687097)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77283901383687097)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77271664006687060)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77102478702686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77286271953687100)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77270883151687060)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(77174948021686791)
,p_button_image_alt=>'View Details'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77286689503687100)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77271002661687060)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(77174948021686791)
,p_button_image_alt=>'View Details'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77287042445687100)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77271288104687060)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(77174948021686791)
,p_button_image_alt=>'View Details'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77287443383687100)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77271410580687060)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(77174948021686791)
,p_button_image_alt=>'View Details'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77271762566687060)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77271664006687060)
,p_item_default=>'900'
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77271817397687060)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77289026264687102)
,p_event_id=>wwv_flow_api.id(77271817397687060)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77270883151687060)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77289558812687102)
,p_event_id=>wwv_flow_api.id(77271817397687060)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77271288104687060)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77290060875687102)
,p_event_id=>wwv_flow_api.id(77271817397687060)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77271002661687060)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77290565574687102)
,p_event_id=>wwv_flow_api.id(77271817397687060)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77271410580687060)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77291044808687103)
,p_event_id=>wwv_flow_api.id(77271817397687060)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77271585956687060)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_api.create_page(
 p_id=>10031
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Top Users'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Remove padding around dialog page */',
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; background-color: #a6ffa6; min-width: 32px; }',
'span.hour.is-over1k { background-color: #7bdc7b; }',
'span.hour.is-null { background-color: #E0E0E0; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198641042686849)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111943'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77314369145687134)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(77121851229686759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select lower(userid)                as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by lower(userid)) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77315843440687137)
,p_name=>'Top Users'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'WAQAR.HAMEED'
,p_internal_uid=>77315843440687137
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77315978105687141)
,p_db_column_name=>'THE_USER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77316335106687144)
,p_db_column_name=>'HOURS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77316707209687146)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77317186431687147)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77317543930687148)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77317988352687149)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'IR Searches'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77318307168687150)
,p_db_column_name=>'ERRORS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77318727209687151)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77319459975687152)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'773195'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77314452092687134)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77102478702686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77314681478687134)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(77314702223687134)
,p_region_id=>wwv_flow_api.id(77314681478687134)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(77323049184687155)
,p_chart_id=>wwv_flow_api.id(77314702223687134)
,p_seq=>10
,p_name=>'Top Users'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(userid) as userid,',
'    count(*) as page_views',
'from apex_activity_log',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'    and userid is not null',
'group by lower(userid)',
'order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77320391736687152)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77314369145687134)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(77175193617686792)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77314822862687134)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77314452092687134)
,p_item_default=>'REPORT'
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_api.id(77323566085687156)||'.'
,p_field_template=>wwv_flow_api.id(77174215918686789)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77315099675687134)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77314452092687134)
,p_item_default=>'900'
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(77174395581686790)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77314506567687134)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77321683761687154)
,p_event_id=>wwv_flow_api.id(77314506567687134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77314369145687134)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77325008467687156)
,p_event_id=>wwv_flow_api.id(77314506567687134)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77314369145687134)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_api.create_page(
 p_id=>10032
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Application Error Log'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198641042686849)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111943'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77309351831687129)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(77121851229686759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    step_id,',
'    userid,',
'    time_stamp err_time,',
'    sqlerrm,',
'    sqlerrm_component_type,',
'    sqlerrm_component_name',
'from apex_activity_log',
'where flow_id = :app_id',
'and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77310306268687129)
,p_name=>'Application Error Log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'WAQAR.HAMEED'
,p_internal_uid=>77310306268687129
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77310420660687131)
,p_db_column_name=>'STEP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77310828931687131)
,p_db_column_name=>'USERID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77311206940687132)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Occurrence'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77311620659687132)
,p_db_column_name=>'SQLERRM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Message'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77312050412687133)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77312458719687133)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77313163287687133)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'773132'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77314067532687134)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77309351831687129)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(77175193617686792)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_api.create_page(
 p_id=>10033
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Page Performance'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198641042686849)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111943'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77299687952687115)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(77121851229686759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77300611300687116)
,p_name=>'Page Performance'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'WAQAR.HAMEED'
,p_internal_uid=>77300611300687116
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77300777341687120)
,p_db_column_name=>'PAGE'
,p_display_order=>15
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77301134487687122)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>25
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77301597247687123)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>35
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77301939814687123)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>45
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77302358662687123)
,p_db_column_name=>'ERRORS'
,p_display_order=>55
,p_column_identifier=>'E'
,p_column_label=>'Action Processed.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77302705341687124)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>65
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77303164529687124)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>75
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77303576008687124)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>85
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77303928551687125)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>95
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77304317229687125)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>105
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77304760104687125)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>115
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77305124072687126)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>125
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77305543038687126)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>135
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77305972195687126)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>145
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77306650418687127)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'773067'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77299786837687115)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77102478702686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77307577620687128)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77299687952687115)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(77175193617686792)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77299542803687115)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77299786837687115)
,p_item_default=>'900'
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(77174395581686790)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77299816477687115)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77308854997687129)
,p_event_id=>wwv_flow_api.id(77299816477687115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77299687952687115)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_api.create_page(
 p_id=>10034
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Page Views'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198641042686849)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111943'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77291509581687103)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(77121851229686759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    lower(userid) user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77292539202687103)
,p_name=>'Page Views'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'WAQAR.HAMEED'
,p_internal_uid=>77292539202687103
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77292660712687108)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77293062500687109)
,p_db_column_name=>'USER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77293486003687110)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77293894066687110)
,p_db_column_name=>'ELAPSED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77294247872687111)
,p_db_column_name=>'PAGE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77294605417687111)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77295079511687111)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77295479931687112)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77295859656687112)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77296288269687112)
,p_db_column_name=>'ERROR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77296947465687113)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'772970'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77291654197687103)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77102478702686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77297839749687113)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77291509581687103)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(77175193617686792)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77291496205687103)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77291654197687103)
,p_item_default=>'900'
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(77174395581686790)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77291796484687103)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77299171475687115)
,p_event_id=>wwv_flow_api.id(77291796484687103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77291509581687103)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_api.create_page(
 p_id=>10040
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Configure Access Control'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198522500686849)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111943'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77325431438687157)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77325533922687157)
,p_plug_name=>'Dialog Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77102478702686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77327065536687158)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77325533922687157)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77325688687687157)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77325533922687157)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77327759600687158)
,p_branch_name=>'Go To Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77328064552687158)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77325431438687157)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(77174395581686790)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77325732007687157)
,p_name=>'Cancel Modal'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(77325688687687157)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77328721464687159)
,p_event_id=>wwv_flow_api.id(77325732007687157)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77329249131687159)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL ENABLED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_api.create_page(
 p_id=>10041
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Manage User Access'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198522500686849)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111943'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77329662782687160)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(77121851229686759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   lower(user_name) USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77330839409687160)
,p_name=>'Manage User Access'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::::P10042_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'WAQAR.HAMEED'
,p_internal_uid=>77330839409687160
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77330900844687163)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77331315978687164)
,p_db_column_name=>'USERNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77331726146687164)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77332426089687165)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'773325'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77333337486687165)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77329662782687160)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(77175193617686792)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77333721771687166)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77329662782687160)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77334190633687166)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(77329662782687160)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:10042'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77329712930687160)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(77329662782687160)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77334728395687167)
,p_event_id=>wwv_flow_api.id(77329712930687160)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77329662782687160)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_api.create_page(
 p_id=>10042
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Manage User Access'
,p_alias=>'USER_ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198522500686849)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle Application Express accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111943'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77335235142687168)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77335321646687168)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77102478702686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77335417929687168)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77335321646687168)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77335586424687168)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77335321646687168)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77335632573687168)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77335321646687168)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77335722712687168)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77335321646687168)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77335954985687168)
,p_name=>'P10042_USERNAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77335235142687168)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(77174809668686791)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77338275282687170)
,p_name=>'P10042_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77335235142687168)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77338606609687170)
,p_name=>'P10042_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77335235142687168)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77339341539687170)
,p_name=>'P10042_ROLE_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(77335235142687168)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Role'
,p_source=>'ROLE_IDS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>wwv_flow_api.id(77174809668686791)
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77335829570687168)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(77335632573687168)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77340830540687171)
,p_event_id=>wwv_flow_api.id(77335829570687168)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77341305645687171)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row'
,p_attribute_02=>'APEX_APPL_ACL_USERS'
,p_attribute_03=>'P10042_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77341718306687172)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Save'
,p_attribute_02=>'APEX_APPL_ACL_USERS'
,p_attribute_03=>'P10042_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_security_scheme=>wwv_flow_api.id(77201404570686853)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77342111308687172)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset Page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(77335722712687168)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77342561449687172)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_api.create_page(
 p_id=>10043
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Add Multiple Users - Step 1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.helpText {',
'padding: 8px;',
'color: #707070;',
'}'))
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198522500686849)
,p_dialog_chained=>'N'
,p_deep_linking=>'N'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77342906407687173)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77102478702686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77343087529687173)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77343155981687173)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77342906407687173)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(77175193617686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77343206906687173)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77342906407687173)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77345920330687175)
,p_branch_name=>'Go To Next Step'
,p_branch_action=>'f?p=&APP_ID.:10044:&SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(77343155981687173)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77346389991687175)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77343087529687173)
,p_item_default=>'2'
,p_prompt=>'Role'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>wwv_flow_api.id(77174809668686791)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77346770053687175)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77343087529687173)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(77174809668686791)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77347127415687175)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77343087529687173)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_api.id(77347209367687175)||'.'
,p_field_template=>wwv_flow_api.id(77174809668686791)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77343308498687173)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(77343206906687173)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77348434141687176)
,p_event_id=>wwv_flow_api.id(77343308498687173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77348926523687176)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    ---------------------',
'    -- create collections',
'    --',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''ACL_BULK_USER_INVALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''ACL_BULK_USER_VALID'');',
'',
'    --------------------------------------------',
'    -- replace delimiting characters with commas',
'    --',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line,chr(10),'' '');',
'    l_line := replace(l_line,chr(13),'' '');',
'    l_line := replace(l_line,chr(9),'' '');',
'    l_line := replace(l_line,''<'','' '');',
'    l_line := replace(l_line,''>'','' '');',
'    l_line := replace(l_line,'';'','' '');',
'    l_line := replace(l_line,'':'','' '');',
'    l_line := replace(l_line,''('','' '');',
'    l_line := replace(l_line,'')'','' '');',
'    l_line := replace(l_line,'' '','','');',
'',
'    -----------------------------------------',
'    -- get one comma separated line of emails',
'    --',
'    for j in 1..1000 loop',
'        if instr(l_line,'',,'') > 0 then',
'           l_line := replace(l_line,'',,'','','');',
'        else',
'           exit;',
'        end if;',
'    end loop;',
'',
'    -------------------------',
'    -- get an array of emails',
'    --',
'    l_emails := apex_string.split(l_line,'','');',
'',
'    -----------------------------',
'    -- add emails to a collection',
'    --',
'    l_username := null;',
'    l_domain := null;',
'    l_at := 0;',
'    l_dot := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid := true;',
'        l_username := trim(l_emails(j));',
'',
'        if l_username is not null then',
'            if NVL(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -----------',
'              -- Validate',
'              --',
'              l_at := instr(nvl(l_username,''x''),''@'');',
'              l_domain := substr(l_username,l_at+1);',
'              l_dot := instr(l_domain,''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            l_username := trim(l_username);',
'            l_username := trim(both ''.'' from l_username);',
'            l_username := replace(l_username,'' '',null);',
'            l_username := replace(l_username,chr(10),null);',
'            l_username := replace(l_username,chr(9),null);',
'            l_username := replace(l_username,chr(13),null);',
'            l_username := replace(l_username,chr(49824),null);',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => upper(l_username),',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where upper(user_name) = upper(l_username) and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => upper(l_username),',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001 = upper(l_username))',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => upper(l_username),',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => upper(l_username),',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(77343155981687173)
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_api.create_page(
 p_id=>10044
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Add Multiple Users - Step 2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.uReportList {',
'    margin: 0;',
'    list-style: none;',
'}',
'.uReportList li {',
'    margin: 0 0 4px 0;',
'}',
'.check_icon {',
'    display: inline-block;',
'    width: 16px;',
'    height: 16px;',
'    line-height: 16px;',
'    background: #69B86B;',
'    color: #FFF;',
'    text-align: center;',
'    border-radius: 12px;',
'    font-size: 15px;',
'    border: 1px solid green;',
'    text-shadow: 0 -1px 0 rgba(0,0,0,.15);',
'    vertical-align: top;',
'    margin-right: 4px;',
'}',
'.valid_user {',
'    display: inline-block;',
'    padding: 4px 8px 4px 4px;',
'    border: 1px solid #D0D0D0;',
'    border-radius: 3px;',
'    line-height: 20px;',
'    background-color: #F8F8F8;',
'    color: #404040;',
'}'))
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198522500686849)
,p_deep_linking=>'N'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77343439446687173)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77102478702686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77343548986687173)
,p_plug_name=>'Add Multiple Users - Step 2'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(77343959043687173)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_api.id(77343548986687173)
,p_template=>wwv_flow_api.id(77111879816686755)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(77145499025686773)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77350937598687181)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77351396024687181)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(77344029785687173)
,p_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_api.id(77343548986687173)
,p_template=>wwv_flow_api.id(77101407889686750)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct lower(c001) username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(77145499025686773)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No valid new users found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(77354436269687186)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_column_html_expression=>'<span class="fa fa-check-circle u-success-text" aria-hidden="true"></span> #USERNAME#'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77344160613687173)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77356070032687188)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.prn(''<p>'');',
'sys.htp.prn(apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'', :P10044_VALID_COUNT, :P10044_ROLE));',
'sys.htp.prn(''</p>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77356758040687189)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77344277196687173)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77343439446687173)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77357413070687189)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77343439446687173)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77174948021686791)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77343701096687173)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77343439446687173)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77358187610687190)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77344160613687173)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 access_level',
'from dual ',
'where 1 = 1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77358592013687190)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77344160613687173)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77358917441687190)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77344160613687173)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77343893031687173)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(77343701096687173)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77359631688687191)
,p_event_id=>wwv_flow_api.id(77343893031687173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77360146532687191)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' ) loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.DELETE_COLLECTION(''ACL_BULK_USER_INVALID'');',
'    apex_collection.DELETE_COLLECTION(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(77344277196687173)
,p_process_success_message=>'User(s) added.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77360513736687191)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_api.create_page(
 p_id=>10050
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Feedback'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_required_patch=>wwv_flow_api.id(77198770545686849)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77360924426687191)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77361000304687191)
,p_plug_name=>'Buttons Region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77102478702686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77361189384687191)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77361000304687191)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77361296854687191)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77361000304687191)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(77369997251687199)
,p_branch_name=>'success'
,p_branch_action=>'f?p=&APP_ID.:10051:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77364700203687194)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77360924426687191)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77365171151687194)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77360924426687191)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77365508891687195)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77360924426687191)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77365965943687195)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(77360924426687191)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_api.id(77366074526687195)||'.'
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
,p_attribute_03=>'Y'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77367860054687196)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77360924426687191)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(77369528566687198)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77361302931687191)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(77361296854687191)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77368677866687197)
,p_event_id=>wwv_flow_api.id(77361302931687191)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77369109816687197)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_util.submit_feedback (',
'    p_comment              => :P10050_FEEDBACK,',
'    p_application_id       => :APP_ID,',
'    p_page_id              => :P10050_PAGE_ID,',
'    p_rating               => :P10050_RATING',
'',
' );',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(77361189384687191)
,p_process_success_message=>'Feedback Submitted'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_api.create_page(
 p_id=>10051
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Feedback Submitted'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_required_patch=>wwv_flow_api.id(77198770545686849)
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77361538900687191)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77097786133686744)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77361443462687191)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77361538900687191)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_css_classes=>'w40p'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77361645989687191)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(77361443462687191)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77371676699687200)
,p_event_id=>wwv_flow_api.id(77361645989687191)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_api.create_page(
 p_id=>10053
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Manage Feedback'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198770545686849)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77363068017687191)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(77121851229686759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'',
'',
'',
'',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77382802220687206)
,p_name=>'Manage Feedback'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::::P10054_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'WAQAR.HAMEED'
,p_internal_uid=>77382802220687206
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77382910799687209)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77383301525687210)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>11
,p_column_identifier=>'B'
,p_column_label=>'Application Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77383756725687210)
,p_db_column_name=>'CREATED'
,p_display_order=>21
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77384104786687211)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>31
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77384560147687211)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77384994533687211)
,p_db_column_name=>'RATING'
,p_display_order=>51
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(77366074526687195)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77385336538687212)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>55
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77385749684687212)
,p_db_column_name=>'STATUS'
,p_display_order=>61
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(77376449330687202)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77386155295687212)
,p_db_column_name=>'RESPONSE'
,p_display_order=>71
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77386542689687213)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>81
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77386919113687213)
,p_db_column_name=>'UPDATED'
,p_display_order=>91
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77387345611687213)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>101
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77387788401687214)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>111
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77388432079687214)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'773885'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77389313666687215)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77363068017687191)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(77175193617686792)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77362959021687191)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(77363068017687191)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77390658358687217)
,p_event_id=>wwv_flow_api.id(77362959021687191)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(77363068017687191)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_api.create_page(
 p_id=>10054
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Feedback'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_required_role=>wwv_flow_api.id(77201299347686853)
,p_required_patch=>wwv_flow_api.id(77198770545686849)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77362335216687191)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77362420509687191)
,p_plug_name=>'Buttons Region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77102478702686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77362595480687191)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77362420509687191)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77362658101687191)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(77362420509687191)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77362786449687191)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77362420509687191)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(77175025778686792)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77373982484687201)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77362335216687191)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77374377680687201)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77362335216687191)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77374707884687201)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(77362335216687191)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77375116597687201)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77362335216687191)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77375514433687202)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77362335216687191)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77375967538687202)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77362335216687191)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77376374759687202)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(77362335216687191)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_api.id(77376449330687202)||'.'
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77378661479687203)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(77362335216687191)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(77174512270686790)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(77362886237687191)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(77362658101687191)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(77379497219687203)
,p_event_id=>wwv_flow_api.id(77362886237687191)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77379980463687204)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID',
') loop',
'   :P10054_PAGE_ID := c1.page_id||''. ''||c1.page_name;',
'   :P10054_FILED := c1.filed;',
'   :P10054_RATING_ICON := c1.rating_icon;',
'   :P10054_FEEDBACK := c1.feedback;',
'   :P10054_RESPONSE := c1.public_response;',
'   :P10054_FEEDBACK_STATUS := c1.feedback_status;',
'   :P10054_USER_AGENT := c1.http_user_agent;',
'end loop;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77380300948687204)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.reply_to_feedback (',
'    p_feedback_id        => :P10054_ID,',
'    p_status             => :P10054_FEEDBACK_STATUS,',
'    p_public_response    => :P10054_RESPONSE );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(77362595480687191)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77380711967687204)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.delete_feedback (',
'    p_feedback_id        => :P10054_ID );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(77362786449687191)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77381122729687205)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'E.PROPERTY.BUTTON_ACTION.LOV.RESET.D'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(77362786449687191)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77381507626687205)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_api.create_page(
 p_id=>10060
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'About'
,p_alias=>'HELP'
,p_step_title=>'About'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(77203156589686863)
,p_required_role=>wwv_flow_api.id(77201331609686853)
,p_required_patch=>wwv_flow_api.id(77199261994686849)
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77391693500687217)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77116421591686756)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_api.create_page(
 p_id=>10061
,p_user_interface_id=>wwv_flow_api.id(77196920167686832)
,p_name=>'Help'
,p_alias=>'PAGE_HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(77201331609686853)
,p_required_patch=>wwv_flow_api.id(77199261994686849)
,p_dialog_chained=>'N'
,p_last_updated_by=>'WAQAR.HAMEED'
,p_last_upd_yyyymmddhh24miss=>'20200629111944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77392490901687218)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(77101407889686750)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ',
'(',
'    select page_title, help_text ',
'      from apex_application_pages',
'     where page_id = :P10061_PAGE_ID ',
'       and application_id = :APP_ID',
')',
'loop',
'    if c1.help_text is null then',
'        sys.htp.p(''No help is available for this page.'');',
'    else',
'        if substr(c1.help_text, 1, 3) != ''<p>'' then',
'            sys.htp.p(''<p>'');',
'        end if;',
'',
'        sys.htp.p(apex_application.do_substitutions(c1.help_text));',
'',
'        if substr(trim(c1.help_text), -4) != ''</p>'' then',
'            sys.htp.p(''</p>'');',
'        end if;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77392877047687218)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77392490901687218)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
