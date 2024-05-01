prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>8205260902819239028
,p_default_application_id=>160207
,p_default_id_offset=>0
,p_default_owner=>'LUFCMATTYLAD'
);
end;
/
 
prompt APPLICATION 160207 - Button Builder
--
-- Application Export:
--   Application:     160207
--   Name:            Button Builder
--   Date and Time:   14:08 Tuesday April 30, 2024
--   Exported By:     MATT@GIZMA.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 13418591002924118969
--   Manifest End
--   Version:         23.2.4
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/com_pretius_apex_button_builder
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(13418591002924118969)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'COM.PRETIUS.APEX.BUTTON_BUILDER'
,p_display_name=>'Pretius Button Builder'
,p_supported_component_types=>'PARTIAL'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div></div> ',
'{else/}',
'  {if LABEL/}',
'    {if LINK/}',
'      <a href="#LINK#"',
'    {else/}',
'      <button type="button"',
'    {endif/}',
'    {case BUTTON_TEMPLATE/}',
'      {when ICON/}',
'        title="#LABEL#" aria-label="#LABEL#"',
'    {endcase/}',
'    class="t-Button',
'    {case BUTTON_TEMPLATE/}',
'      {when TEXT_WITH_ICON/}',
'        t-Button--icon',
'        {case ICON_POSITION/}',
'          {when LEFT/}t-Button--iconLeft',
'          {when RIGHT/}t-Button--iconRight',
'        {endcase/}',
'      {when ICON/}',
'        t-Button--noLabel t-Button--icon',
'    {endcase/}',
'    {if HOT/}t-Button--hot{endif/}',
'    {case SIZE/}',
'      {when TINY/}t-Button--tiny',
'      {when SMALL/}t-Button--small',
'      {when LARGE/}t-Button--large',
'    {endcase/}',
'    {case TYPE/}',
'      {when PRIMARY/}t-Button--primary',
'      {when WARNING/}t-Button--warning',
'      {when DANGER/}t-Button--danger',
'      {when SUCCESS/}t-Button--success',
'    {endcase/}',
'    {case STYLE/}',
'      {when SIMPLE/}t-Button--simple',
'      {when REMOVE_UI_DECORATIONS/}t-Button--noUI',
'      {when DISPLAY_AS_LINK/}t-Button--link',
'    {endcase/}',
'    {case BUTTON_SET/}',
'      {when FIRST_BUTTON/}t-Button--pillStart',
'      {when INNER_BUTTON/}t-Button--pill',
'      {when LAST_BUTTON/}t-Button--pillEnd',
'    {endcase/}',
'    {case WIDTH/}',
'      {when STRETCH/}t-Button--stretch',
'    {endcase/}',
'    {case SPACING_LEFT/}',
'      {when SMALL/}t-Button--padLeft',
'      {when LARGE/}t-Button--gapLeft',
'    {endcase/}',
'    {case SPACING_RIGHT/}',
'      {when SMALL/}t-Button--padRight',
'      {when LARGE/}t-Button--gapRight',
'    {endcase/}',
'    {case SPACING_TOP/}',
'      {when SMALL/}t-Button--padTop',
'      {when LARGE/}t-Button--gapTop',
'    {endcase/}',
'    {case SPACING_BOTTOM/}',
'      {when SMALL/}t-Button--padBottom',
'      {when LARGE/}t-Button--gapBottom',
'    {endcase/}',
'    #CSS_CLASSES#">',
'    {case BUTTON_TEMPLATE/}',
'      {when TEXT_WITH_ICON/}',
'        {case ICON_POSITION/}',
'          {when RIGHT/}#LABEL#',
'        {endcase/}',
'    {endcase/}',
'    {case BUTTON_TEMPLATE/}',
'      {when TEXT_WITH_ICON/}',
'        <span aria-hidden="true" class="t-Icon',
'        {case ICON_POSITION/}',
'          {when LEFT/}t-Icon--left fa #ICON_CLASS#"></span>#LABEL#',
'          {when RIGHT/}t-Icon--right fa #ICON_CLASS#"></span>',
'        {endcase/}',
'      {when ICON/}',
'        <span aria-hidden="true" class="t-Icon fa #ICON_CLASS#"></span>',
'      {otherwise/}',
'        #LABEL#',
'    {endcase/}',
'    {if LINK/}',
'      </a>',
'    {else/}',
'      </button>',
'    {endif/}',
'  {endif/}',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('A reimagining of Universal Theme''s Button Builder as a Single Template Component \D83C\DF89 Shows buttons in IR Columns.<p></p><p></p>'),
'Defaults for With/Apply',
'<pre>',
'    {with/}',
'        BUTTON_TEMPLATE:=TEXT',
'        LABEL:=My Button',
'        ICON_CLASS:=fa-check-circle',
'        CSS_CLASSES:=',
'        HOT:=N',
'        LINK:=',
'        SIZE:=DEFAULT',
'        TYPE:=NORMAL',
'        STYLE:=DEFAULT',
'        ICON_POSITION:=LEFT',
'        BUTTON_SET:=DEFAULT',
'        WIDTH:=AUTO',
'        SPACING_LEFT:=DEFAULT',
'        SPACING_RIGHT:=DEFAULT',
'        ICON_CLASS:=DEFAULT',
'        SPACING_TOP:=DEFAULT',
'        SPACING_BOTTOM:=DEFAULT',
'    {apply COM.PRETIUS.APEX.BUTTON_BUILDER/}',
'</pre>'))
,p_version_identifier=>'23.2.2'
,p_about_url=>'https://github.com/Pretius/pretius-button-builder-plugin'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(13421382902544141379)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_title=>unistr('\D83D\DEE0\FE0F Appearance')
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(13421383211978141380)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_title=>unistr('\D83D\DEE0\FE0F Template Options')
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(13421383599384141380)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_title=>unistr('\D83D\DEE0\FE0F Advanced')
,p_display_sequence=>30
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13418591303896118983)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>20
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'My Button'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(13421382902544141379)
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'<li>My Button</li>',
'<li>#ENAME#</li>',
'<li>&ENAME.</li>',
'</ul>'))
,p_help_text=>'The label for the button. Plain Text, #COLUMN# and &ITEM. Substitutions are accepted'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13421495586255147031)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>10
,p_static_id=>'BUTTON_TEMPLATE'
,p_prompt=>'Button Template'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'TEXT'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(13421382902544141379)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13421541583381904549)
,p_plugin_attribute_id=>wwv_flow_imp.id(13421495586255147031)
,p_display_sequence=>10
,p_display_value=>'Text'
,p_return_value=>'TEXT'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13421722443337149187)
,p_plugin_attribute_id=>wwv_flow_imp.id(13421495586255147031)
,p_display_sequence=>20
,p_display_value=>'Text with Icon'
,p_return_value=>'TEXT_WITH_ICON'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13421726275980149766)
,p_plugin_attribute_id=>wwv_flow_imp.id(13421495586255147031)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'ICON'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13422789602020156540)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'ICON_CLASS'
,p_prompt=>'Icon Class'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_default_value=>'fa-check-circle'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(13421495586255147031)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'TEXT_WITH_ICON,ICON'
,p_attribute_group_id=>wwv_flow_imp.id(13421382902544141379)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13461919654900300449)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'HOT'
,p_prompt=>'Hot'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(13421382902544141379)
,p_help_text=>'The stateful hot colour - Theme Dependant'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13462216051781085592)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'DEFAULT'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(13421383211978141380)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13463093819280330966)
,p_plugin_attribute_id=>wwv_flow_imp.id(13462216051781085592)
,p_display_sequence=>10
,p_display_value=>'Tiny'
,p_return_value=>'TINY'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13462279208015088265)
,p_plugin_attribute_id=>wwv_flow_imp.id(13462216051781085592)
,p_display_sequence=>20
,p_display_value=>'Small'
,p_return_value=>'SMALL'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13462291624005089390)
,p_plugin_attribute_id=>wwv_flow_imp.id(13462216051781085592)
,p_display_sequence=>30
,p_display_value=>'Default'
,p_return_value=>'DEFAULT'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13462294725743090016)
,p_plugin_attribute_id=>wwv_flow_imp.id(13462216051781085592)
,p_display_sequence=>40
,p_display_value=>'Large'
,p_return_value=>'LARGE'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13467098720679363428)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'NORMAL'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(13421383211978141380)
,p_help_text=>'Universal Theme provides 5 stateful colors: normal, informational, danger, warning, and success. Here are the CSS modifier classes you can use to apply these states to your own UI controls.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13473677538008434134)
,p_plugin_attribute_id=>wwv_flow_imp.id(13467098720679363428)
,p_display_sequence=>10
,p_display_value=>'Normal'
,p_return_value=>'NORMAL'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13472886518703192285)
,p_plugin_attribute_id=>wwv_flow_imp.id(13467098720679363428)
,p_display_sequence=>20
,p_display_value=>'Primary'
,p_return_value=>'PRIMARY'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13472889996916193130)
,p_plugin_attribute_id=>wwv_flow_imp.id(13467098720679363428)
,p_display_sequence=>30
,p_display_value=>'Warning'
,p_return_value=>'WARNING'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13472894610494193831)
,p_plugin_attribute_id=>wwv_flow_imp.id(13467098720679363428)
,p_display_sequence=>40
,p_display_value=>'Danger'
,p_return_value=>'DANGER'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13473748976641438249)
,p_plugin_attribute_id=>wwv_flow_imp.id(13467098720679363428)
,p_display_sequence=>50
,p_display_value=>'Success'
,p_return_value=>'SUCCESS'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13476258325735458909)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'DEFAULT'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(13421383211978141380)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13476413239766216668)
,p_plugin_attribute_id=>wwv_flow_imp.id(13476258325735458909)
,p_display_sequence=>10
,p_display_value=>'Default'
,p_return_value=>'DEFAULT'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13476416164385217402)
,p_plugin_attribute_id=>wwv_flow_imp.id(13476258325735458909)
,p_display_sequence=>20
,p_display_value=>'Simple'
,p_return_value=>'SIMPLE'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13476425524746218549)
,p_plugin_attribute_id=>wwv_flow_imp.id(13476258325735458909)
,p_display_sequence=>30
,p_display_value=>'Remove UI Decorations'
,p_return_value=>'REMOVE_UI_DECORATIONS'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13476578042962463477)
,p_plugin_attribute_id=>wwv_flow_imp.id(13476258325735458909)
,p_display_sequence=>40
,p_display_value=>'Display as Link'
,p_return_value=>'DISPLAY_AS_LINK'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13477050972998483913)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'ICON_POSITION'
,p_prompt=>'Icon Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'LEFT'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(13421495586255147031)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'TEXT_WITH_ICON'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(13421383211978141380)
,p_help_text=>'Icon Position, relative to the Text when Text with Icon Button Template is used'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13477056586834484736)
,p_plugin_attribute_id=>wwv_flow_imp.id(13477050972998483913)
,p_display_sequence=>10
,p_display_value=>'Left'
,p_return_value=>'LEFT'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13477288587978242120)
,p_plugin_attribute_id=>wwv_flow_imp.id(13477050972998483913)
,p_display_sequence=>20
,p_display_value=>'Right'
,p_return_value=>'RIGHT'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13485427554650324163)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'BUTTON_SET'
,p_prompt=>'Button Set'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'DEFAULT'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(13421383599384141380)
,p_help_text=>'Use these options if you would like to arrange multiple buttons into a pill or button set. You can then set the first button of the set to "First Button" and the last button to "Last Button." Any buttons in the middle can be set to "Inner Button."'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13498323643866415352)
,p_plugin_attribute_id=>wwv_flow_imp.id(13485427554650324163)
,p_display_sequence=>10
,p_display_value=>'Default'
,p_return_value=>'DEFAULT'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13498329876313416147)
,p_plugin_attribute_id=>wwv_flow_imp.id(13485427554650324163)
,p_display_sequence=>20
,p_display_value=>'First Button'
,p_return_value=>'FIRST_BUTTON'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13499235877783660976)
,p_plugin_attribute_id=>wwv_flow_imp.id(13485427554650324163)
,p_display_sequence=>30
,p_display_value=>'Inner Button'
,p_return_value=>'INNER_BUTTON'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13498348411325418594)
,p_plugin_attribute_id=>wwv_flow_imp.id(13485427554650324163)
,p_display_sequence=>40
,p_display_value=>'Last Button'
,p_return_value=>'LAST_BUTTON'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13485716187324326963)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'WIDTH'
,p_prompt=>'Width'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'AUTO'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(13421383599384141380)
,p_help_text=>'Display the button width relative to text of the button or Stretch the button full width'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13498392253736422316)
,p_plugin_attribute_id=>wwv_flow_imp.id(13485716187324326963)
,p_display_sequence=>10
,p_display_value=>'Auto - Default'
,p_return_value=>'AUTO'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13498397343823423396)
,p_plugin_attribute_id=>wwv_flow_imp.id(13485716187324326963)
,p_display_sequence=>20
,p_display_value=>'Stretch'
,p_return_value=>'STRETCH'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13485604689471572052)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'SPACING_LEFT'
,p_prompt=>'Spacing Left'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'DEFAULT'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(13421383599384141380)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13499701017442669462)
,p_plugin_attribute_id=>wwv_flow_imp.id(13485604689471572052)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'SMALL'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13499708370395670092)
,p_plugin_attribute_id=>wwv_flow_imp.id(13485604689471572052)
,p_display_sequence=>20
,p_display_value=>'Default'
,p_return_value=>'DEFAULT'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13499711115005670722)
,p_plugin_attribute_id=>wwv_flow_imp.id(13485604689471572052)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'LARGE'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13499832059220676725)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'SPACING_RIGHT'
,p_prompt=>'Spacing Right'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'DEFAULT'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(13421383599384141380)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13500112290522683427)
,p_plugin_attribute_id=>wwv_flow_imp.id(13499832059220676725)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'SMALL'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13500000747384440900)
,p_plugin_attribute_id=>wwv_flow_imp.id(13499832059220676725)
,p_display_sequence=>20
,p_display_value=>'Default'
,p_return_value=>'DEFAULT'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13500679911584685040)
,p_plugin_attribute_id=>wwv_flow_imp.id(13499832059220676725)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'LARGE'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13499849454618680330)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'SPACING_TOP'
,p_prompt=>'Spacing Top'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'DEFAULT'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(13421383599384141380)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13500053313899443793)
,p_plugin_attribute_id=>wwv_flow_imp.id(13499849454618680330)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'SMALL'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13501246968513687761)
,p_plugin_attribute_id=>wwv_flow_imp.id(13499849454618680330)
,p_display_sequence=>20
,p_display_value=>'Default'
,p_return_value=>'DEFAULT'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(13500056619564445485)
,p_plugin_attribute_id=>wwv_flow_imp.id(13499849454618680330)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'LARGE'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(7021101214346485509)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'SPACING_BOTTOM'
,p_prompt=>'Spacing Bottom'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'DEFAULT'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(13421383599384141380)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(7021103188774486304)
,p_plugin_attribute_id=>wwv_flow_imp.id(7021101214346485509)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'SMALL'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(7020795445924243901)
,p_plugin_attribute_id=>wwv_flow_imp.id(7021101214346485509)
,p_display_sequence=>20
,p_display_value=>'Default'
,p_return_value=>'DEFAULT'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(7020799859329244679)
,p_plugin_attribute_id=>wwv_flow_imp.id(7021101214346485509)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'LARGE'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13566703911791880172)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'LINK'
,p_prompt=>'Link'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(13421382902544141379)
,p_help_text=>'Link to Custom Page or URL'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(13988375232185852037)
,p_plugin_id=>wwv_flow_imp.id(13418591002924118969)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>35
,p_static_id=>'CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(13421382902544141379)
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'u-color-10',
'u-hot'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter classes to add to this component. You may add multiple classes by separating them with spaces.',
'',
'Note: These CSS classes will be applied to the HTML form element tag.'))
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
