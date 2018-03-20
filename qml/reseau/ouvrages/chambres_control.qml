<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.13" simplifyAlgorithm="0" minimumScale="0" maximumScale="2501" simplifyDrawingHints="0" minLabelScale="0" maxLabelScale="1e+08" simplifyDrawingTol="1" readOnly="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="1" simplifyLocal="0" scaleBasedLabelVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="id">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="name">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="identification">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="fk_installation">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_status">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression="&quot;id&quot; IN (103,1301,1302,13002)" UseCompleter="0" fieldEditable="1" Key="id" constraint="( &quot;fk_status&quot; IN (1302,13002) AND year_end is not null ) OR (&quot;fk_status&quot; NOT IN (1302, 13002) AND year_end is null )" Layer="vl_status20130304110011436" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_distributor">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;fk_status&quot; = 1301 AND  &quot;fk_distributor&quot; is not null) OR  (&quot;fk_status&quot; != 1301 AND  (&quot;fk_distributor&quot; is null OR &quot;fk_distributor&quot; is not null) )" Layer="distributor20130304114719702" Value="name" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_remote">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_watertype">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="schema_force_visible">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="altitude">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="remark">
      <widgetv2config IsMultiline="1" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="year">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="(((&quot;year&quot; > 1860 AND  &quot;year&quot;  &lt;=  year( now() ))  OR ( &quot;year&quot; =0)) AND  &quot;fk_status&quot; IN (103, 1301))   OR ((&quot;year&quot; is null OR &quot;year&quot; is not null) AND  &quot;fk_status&quot; NOT IN (103, 1301) )" UseHtml="0" labelOnTop="0" constraintDescription="Champ obligatoire, année doit être entre 1860 et l'année actuel ou 0 si inconnu" notNull="1"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="year_end">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="( &quot;fk_status&quot;  IN (1302, 13002) AND &quot;year_end&quot; > 1860 AND  &quot;year_end&quot; &lt;=   year(now()) AND &quot;year_end&quot;  >=  coalesce(&quot;year&quot;,0) OR &quot;year_end&quot; = 0 )  OR (&quot;fk_status&quot;  NOT IN (1302, 13002) AND  &quot;year_end&quot; is null)" UseHtml="0" labelOnTop="0" constraintDescription="L'année d'archive doit être égal ou supérieur à l'année de pose ou égal à 0 si inconnu" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="open_water_surface">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_1_visible">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_1_x">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_1_y">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_1_rotation">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_1_text">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_2_visible">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_2_x">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_2_y">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_2_rotation">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_2_text">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="networkseparation">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="fk_node">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_district">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="id" constraint=" &quot;fk_district&quot; NOT IN (396,397,399) OR &quot;fk_district&quot;  is null" Layer="district20130304110004764" Value="name" labelOnTop="0" constraintDescription="utilisez les communes actives" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_pressurezone">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;usr_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="&quot;fk_pressurezone&quot; NOT IN (103,107,122,130,134,135,136,140,141)" Layer="pressurezone20130417133612105" Value="name" labelOnTop="0" constraintDescription="obligatoire" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_printmap">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_district">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_printmaps">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="geometry">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="geometry_alt1">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="geometry_alt2">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_geometry_alt1_used">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_geometry_alt2_used">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_locationtype">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="( &quot;fk_status&quot; = 1301 AND  &quot;fk_locationtype&quot; is not null) OR ( &quot;fk_status&quot; != 1301 AND ( &quot;fk_locationtype&quot; is not null OR &quot;fk_locationtype&quot; is null))" Layer="locationtype20160705160251361" Value="value_fr" labelOnTop="0" constraintDescription="obligatoire" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_folder">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_precision">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =   't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;usr_cale_sisol&quot;  =  't'  AND  &quot;fk_precision&quot;  IN (1102, 1104)) OR (&quot;usr_cale_sisol&quot;  =  'f' AND &quot;fk_precision&quot;  IN (1101))" Layer="vl_precision20130304110011372" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire, si calé SISOL, précis ou reporté, sinon imprécis" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_precisionalti">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  = 't'" UseCompleter="0" fieldEditable="1" Key="id" constraint=" (z(  $geometry ) > 300 AND  &quot;fk_precisionalti&quot;  IN (1121,11021)) OR ((z(  $geometry ) is null OR z(  $geometry ) = 0)  AND &quot;fk_precisionalti&quot;  IN (102))" Layer="vl_precisionalti20131211161429510" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire, si l'altitude est null ou égal à 0  la précision altimétrique est inconnu. Sinon la précision doit être renseignée comme précis ou imprécis." AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_object_reference">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_cale_sisol">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint=" (&quot;usr_cale_sisol&quot;  = 't' AND  &quot;fk_precision&quot;  IN (1102, 1104)) OR (&quot;usr_cale_sisol&quot;  = 'f' AND &quot;fk_precision&quot;  IN (102,1101))" CheckedState="t" labelOnTop="0" constraintDescription="Champ obligatoire, si calé SISOL, l'objet est précis ou reporté, sinon imprécis" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_no_printmap">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_chamber_type">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" &quot;fk_chamber_type&quot; != 103" Layer="usr_chamber_type20160705083228444" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_equipment_type">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" ((&quot;fk_equipment_type&quot;  LIKE '%26012%' OR &quot;fk_equipment_type&quot;  LIKE '%26014%'  OR &quot;fk_equipment_type&quot;  LIKE '%26015%' OR &quot;fk_equipment_type&quot;  LIKE '%26016%' OR &quot;fk_equipment_type&quot;  LIKE '%26017%'  OR &quot;fk_equipment_type&quot;  LIKE '%26018%'  ) AND  &quot;adduction&quot; = 't') OR &#xd;&#xa;  ((&quot;fk_equipment_type&quot;  NOT LIKE '%26012%' AND &quot;fk_equipment_type&quot;  NOT LIKE '%26014%'  AND &quot;fk_equipment_type&quot;  NOT LIKE '%26015%' AND &quot;fk_equipment_type&quot;  NOT LIKE '%26016%' AND &quot;fk_equipment_type&quot;  NOT LIKE '%26017%'  AND &quot;fk_equipment_type&quot;  NOT LIKE '%26018%'  ) AND  &quot;adduction&quot; = 'f')" Layer="usr_chamber_equipment20160705083228506" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="1" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="adduction">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="Champ obligatoire" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_adduction">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" ( &quot;fk_status&quot; = 1301 AND &quot;adduction&quot; = 't' AND  &quot;fk_adduction&quot; is not null) OR (&quot;adduction&quot; = 'f' AND  &quot;fk_adduction&quot; is null) OR &#xd;&#xa;( &quot;fk_status&quot; != 1301 AND &quot;adduction&quot; = 't' AND  (&quot;fk_adduction&quot; is not null OR &quot;fk_adduction&quot; is null)) " Layer="usr_adduction20160705083228553" Value="value_fr" labelOnTop="0" constraintDescription="à renseigner si adduction" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_network">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="( &quot;fk_network&quot; is not null AND  &quot;fk_distributor&quot; =  3 ) OR ( (&quot;fk_network&quot; is not null  OR &quot;fk_network&quot; is null)  AND  (&quot;fk_distributor&quot; !=  3  OR  &quot;fk_distributor&quot; is null))" Layer="usr_water_network20160705160251212" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="depth">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="no_hydro">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="date_modif">
      <widgetv2config fieldEditable="1" calendar_popup="1" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="user_session">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="fk_doc_goeland">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_start_setting">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" ( &quot;fk_status&quot; = 1301 AND &quot;adduction&quot; = 't' AND   &quot;fk_start_setting&quot;  is not null) OR (&quot;adduction&quot; = 'f' AND   &quot;fk_start_setting&quot;  is null) OR&#xd;&#xa;  ( &quot;fk_status&quot; != 1301 AND &quot;adduction&quot; = 't' AND   (&quot;fk_start_setting&quot;  is not null OR &quot;fk_start_setting&quot;  is null )) &#xd;&#xa;" Layer="usr_source_setting20160705160251306" Value="value_fr" labelOnTop="0" constraintDescription="obligatoire pour les adductions" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="sampling">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_source_system">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;adduction&quot; = 't' AND   &quot;fk_source_system&quot;  is not null AND &quot;fk_status&quot; = 1301 ) OR (&quot;adduction&quot; = 'f' AND   &quot;fk_source_system&quot;  is null ) OR &#xd;&#xa;  (&quot;adduction&quot; = 't' AND   (&quot;fk_source_system&quot;  is not null  OR &quot;fk_source_system&quot; is null) AND &quot;fk_status&quot; != 1301 ) " Layer="usr_source_system20160705160251260" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nbr_inlet">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint=" (&quot;adduction&quot; = 't' AND  ( &quot;nbr_inlet&quot;  is not null OR  &quot;nbr_inlet&quot; is null)) OR (&quot;adduction&quot; = 'f' AND   &quot;nbr_inlet&quot;  is null) " UseHtml="0" labelOnTop="0" constraintDescription="à renseigner uniquemen pour les adductions" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="type_inlet">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint=" (&quot;adduction&quot; = 't' AND  (&quot;type_inlet&quot; is not null OR  &quot;type_inlet&quot;  is null)) OR (&quot;adduction&quot; = 'f' AND   &quot;type_inlet&quot;  is null) " UseHtml="0" labelOnTop="0" constraintDescription="à renseigner pour les adductions" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="length_tunnel">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="terrain_height">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="geometry_polygon">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_aperture">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_chamber_aperture20170519124050067" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_key">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  = 't'" UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_chamber_key20170519124050155" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_access">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  = 't'" UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_chamber_access20170519124050017" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="dim_length">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="dim_width">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="access_dry">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="fk_pipe">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="create_date">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="last_date">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="last_user">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="deleted">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="z">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
  </edittypes>
  <renderer-v2 forceraster="0" symbollevels="0" type="RuleRenderer" enableorderby="0">
    <rules key="{b92db2b3-b6d9-41a2-9eb5-4c6a2227f99e}">
      <rule key="{0e7192d5-b3d4-4d90-bbca-43e3559af752}" label="Modèle saisie">
        <rule filter="fk_status != 13002 AND fk_status !=103" key="{02e54808-a869-44c3-803c-67f3364e3ed8}" label="Actif">
          <rule filter=" &quot;fk_aperture&quot;  = 27001 and &quot;fk_precision&quot; = 1102 " key="{08f4752e-7338-4057-b1d3-fb6647e4d6b7}" symbol="0" label="Couvercle circulaire précis"/>
          <rule filter=" &quot;fk_aperture&quot;  != 27001 or &quot;fk_precision&quot; != 1102" key="{4615a15b-ba65-4f70-8358-96044ee96d65}" label="Chambre sans couvercle circulaire précis">
            <rule filter="&quot;fk_chamber_type&quot; = 102" key="{13470e78-af78-4d77-9455-9f76bbd325c7}" symbol="1" label="Inconnu"/>
            <rule filter="&quot;fk_chamber_type&quot; = 21003" key="{c19b3047-aeaf-4f59-a055-a9a368186d20}" symbol="2" label="Chambre de captage"/>
            <rule filter="&quot;fk_chamber_type&quot; = 21004" key="{4abeb817-5b11-45f1-a0fe-065e8fd9cefa}" symbol="3" label="Chambre de compteurs"/>
            <rule filter="&quot;fk_chamber_type&quot; = 21005" key="{0d6d36aa-9173-47aa-8f01-bc25908262cb}" symbol="4" label="Chambre de jauge"/>
            <rule filter="&quot;fk_chamber_type&quot; = 21006" key="{e39b49e4-2a18-47f8-b689-300133bca49e}" symbol="5" label="Chambre de passage"/>
            <rule filter="&quot;fk_chamber_type&quot; = 21007" key="{1dda5bdf-ca9c-49f9-a856-e114e2783e00}" symbol="6" label="Chambre de réseau"/>
            <rule filter="&quot;fk_chamber_type&quot; = 21008" key="{ba74cfe1-9b4b-4b0f-b4dd-63ec2f2ecf40}" symbol="7" label="Chambre de réunion"/>
            <rule filter="&quot;fk_chamber_type&quot; = 21009" key="{d547e48c-d037-44fe-9c64-b4d83c8ea7d0}" symbol="8" label="Chambre de vanne"/>
            <rule filter="&quot;fk_chamber_type&quot; = 21010" key="{bb3f618d-8a82-42d6-ace3-94ff7a20c729}" symbol="9" label="Trou d'homme"/>
            <rule filter="&quot;fk_chamber_type&quot; = 21011" key="{3a688760-5e92-43ad-89d1-24011c6342d0}" symbol="10" label="Galerie"/>
            <rule filter="&quot;fk_chamber_type&quot; = 21012" key="{ad3df287-61ee-4465-9250-08c5d957cd95}" symbol="11" label="Chambre de prise"/>
            <rule filter="&quot;fk_chamber_type&quot; = 21013" key="{645175d4-56fd-40f0-9511-9f0fcdaf099c}" symbol="12" label="Puits"/>
          </rule>
        </rule>
        <rule filter="fk_status = 103" key="{e325cdef-9c2a-423c-b582-70215df3bb39}" symbol="13" label="Nouveau relevé"/>
      </rule>
      <rule key="{364220f2-2d21-439f-8106-8d1f2a5ad442}" label="Contrôle attributs">
        <rule filter="&quot;fk_status&quot; != 13002  AND (&quot;fk_chamber_type&quot;  NOT IN (102,21003,21004,21005,21006,21007,21008,21009,21010,21011,21012,21013) OR &quot;fk_chamber_type&quot; is null)" key="{67b8faee-9aca-44f9-904c-2297d1bb55b7}" symbol="14" label="Fonction (code erreur : 653) "/>
        <rule filter="&quot;fk_status&quot; != 13002 AND (&quot;fk_locationtype&quot; NOT IN (101,9604,96602,96603,96604,96605,96607) OR &quot;fk_locationtype&quot; is null)" key="{44513e47-f773-43aa-9164-66da62fd59d0}" symbol="15" label="Situtation (code erreur : 654) "/>
        <rule filter="&quot;fk_status&quot; != 13002 AND (&quot;fk_access&quot; NOT IN (29001,29002,29003,29004,29005) OR &quot;fk_access&quot; is NULL)" key="{8516121b-2517-4850-a5fe-3a1e31fd2cc2}" symbol="16" label="Accès (code erreur : 658)"/>
        <rule filter="&quot;fk_status&quot; != 13002 AND (&quot;fk_aperture&quot; NOT IN (27001,27002,27003) OR &quot;fk_aperture&quot; is null) " key="{0d0dc6c6-5a8c-4ab6-bca1-2830f3903984}" symbol="17" label="Ouverture (code erreur : 661) "/>
        <rule filter="&quot;fk_status&quot; != 13002 AND (&quot;fk_key&quot; NOT IN (28000,28002,28003,28004,28005,28006,28007,28008,28009,28010,28011,28012,28013,28014,28015,28016,28017,28018,28019,28020,28021,28022,28023) OR &quot;fk_key&quot; is null)" key="{c98b9d2a-0afb-47be-bf9c-dd781769e09d}" symbol="18" label="Type de clé (code erreur : 664)"/>
        <rule filter="&quot;fk_status&quot; != 13002  AND (&quot;fk_pressurezone&quot; is null OR &quot;fk_pressurezone&quot;  NOT IN (101,102,103,104,105,106,108,109,110,111,112,113,114,115,116,117,118,119,120,121,123,124,125,126,127,128,129,130,131,132,133,137,138,139,151,152,153,154,155,156,157,158,159,160,161,163,165,166,167,168))" key="{dc61d636-f82a-4f6f-ba71-9127f1615247}" symbol="19" label="Zone de pression non renseignée (code erreur : 651)"/>
        <rule key="{2e2ce5a7-36c4-4540-b70d-e4252ec7b1e1}" label="Précision et calé SISOL (code erreur : 656 et 665)">
          <rule filter="&quot;fk_status&quot; != 13002 AND &quot;fk_precision&quot; NOT IN (1102,1104,1101)" key="{4ad3284c-c231-47ec-ad3f-d6278b4c9482}" symbol="20" label="Le champ précision ne doit pas être null ou inconnu (code erreur : 656)"/>
          <rule filter="&quot;fk_status&quot; != 13002 AND ((&quot;usr_cale_sisol&quot; = 't' AND &quot;fk_precision&quot; NOT IN (1102,1104)) OR (&quot;usr_cale_sisol&quot; = 'f' AND &quot;fk_precision&quot; IN (1102,1104)))" key="{0d037c8a-4147-40d3-832a-2602be101828}" symbol="21" label="Calé SISOL mais imprécis (code erreur : 665)"/>
        </rule>
        <rule filter="&quot;fk_status&quot; IS NULL OR &quot;fk_status&quot;  NOT IN (103,1301,13002,13003)" key="{5c0edf13-eb9c-4b05-b115-b14300ba73d5}" symbol="22" label="Statut inconnu (code erreur : 655)"/>
        <rule filter="(&quot;year&quot; is null AND &quot;fk_status&quot; != 13002) OR (&quot;year&quot; != 0 AND &quot;year&quot; &lt; 1870 ) OR (&quot;year&quot; > year( now()) )" key="{a78e8f8a-b1da-4833-a648-591a1ed4e4ba}" symbol="23" label="Contrôle année de pose (code erreur : 666)"/>
        <rule key="{9967c75f-703d-407e-9f01-4cfbbe9d5ed7}" label="Contrôle année d'archive (code erreur : 667)">
          <rule filter="&quot;year_end&quot; &lt; &quot;year&quot; AND &quot;year_end&quot; > 0" key="{d9c80572-a66b-45d2-8c0a-de85235dbe23}" symbol="24" label="année archive plus petite que l'année de pose"/>
          <rule filter="&quot;year_end&quot; > 0 AND &quot;fk_status&quot; != 13002" key="{a34fc775-ade4-4fbb-8e83-fae12d4cfb02}" symbol="25" label="statut non archivé mais année d'archivage"/>
          <rule filter="&quot;year_end&quot; is null AND &quot;fk_status&quot; = 13002" key="{fb9644b1-8215-46f8-895a-492e2781c79e}" symbol="26" label="statut archivé mais pas d''année d''archivage"/>
        </rule>
        <rule key="{6fb5af2a-7d16-4159-8435-e37fe744ffec}" label="Contrôle altitude et précision altimétrique">
          <rule filter="&quot;fk_status&quot; != 13002 AND  ((&quot;z&quot; >0 AND  &quot;fk_precisionalti&quot; NOT IN (1121 , 11021)) OR ((&quot;z&quot; = 0 OR  &quot;z&quot; is null) AND &quot;fk_precisionalti&quot; != 102))" key="{c3bc9ae7-d15d-4d1b-8128-68003ae4dd26}" symbol="27" label="Contrôle précision altimétrique (code erreur 657)"/>
          <rule filter="&quot;fk_status&quot; != 13002 AND (&quot;z&quot;  !=0 AND &quot;z&quot;  &lt; 300 OR &quot;z&quot; > 1500)" key="{6a0eb4ac-9939-452b-8f1c-f595f05b1980}" symbol="28" label="Contrôle altitude incohérente &lt; 300 et > 1500  (code erreur : 425)"/>
          <rule filter="&quot;fk_status&quot; != 13002 AND &quot;z&quot;  = 0 AND  &quot;year&quot; > 2012 AND  &quot;fk_precision&quot; = 1102" key="{06a42d9e-dcfb-4190-9af6-12fd981b7a4b}" symbol="29" label="Contrôle altitude (code erreur : 101)"/>
          <rule filter="&quot;fk_status&quot; != 13002 AND &quot;z&quot;  = 0 AND  &quot;year&quot; > 2012" key="{30808fc0-f3c6-48f4-aa2b-63e8b361b6f5}" symbol="30" label="Contrôle altitude (code erreur : 102)"/>
        </rule>
      </rule>
    </rules>
    <symbols>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="144,30,159,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="144,30,159,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="&quot;dim_width&quot;/100"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="1">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="215,25,28,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="10">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.5"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="11">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.5"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="12">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.5"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="13">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,248,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="14">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,1,149,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="15">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,1,149,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="16">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,1,149,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="17">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,1,149,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="18">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,1,149,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="19">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="94,1,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="2">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="227,74,51,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="installations/source.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="20">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="180"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="equilateral_triangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,5,1,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="7"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="21">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="180"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="equilateral_triangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,5,1,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="7"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="22">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,1,149,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="23">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="1,175,56,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="24">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="1,175,56,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="25">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="1,175,56,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="26">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="1,175,56,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="27">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="24,7,109,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="28">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="24,7,109,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="29">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="24,7,109,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="3">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,124,74,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="installations/meter.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="30">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="pentagon"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="10"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,1,149,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="24,7,109,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="4">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="253,174,97,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="installations/pressurebreak.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="5">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.5"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="6">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.5"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="7">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,192,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="installations/gathering.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="8">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="225,242,163,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="installations/valve.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="9">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.5"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple"/>
  <customproperties>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="labeling" value="pal"/>
    <property key="labeling/addDirectionSymbol" value="false"/>
    <property key="labeling/angleOffset" value="0"/>
    <property key="labeling/blendMode" value="0"/>
    <property key="labeling/bufferBlendMode" value="0"/>
    <property key="labeling/bufferColorA" value="255"/>
    <property key="labeling/bufferColorB" value="255"/>
    <property key="labeling/bufferColorG" value="255"/>
    <property key="labeling/bufferColorR" value="255"/>
    <property key="labeling/bufferDraw" value="false"/>
    <property key="labeling/bufferJoinStyle" value="64"/>
    <property key="labeling/bufferNoFill" value="false"/>
    <property key="labeling/bufferSize" value="1"/>
    <property key="labeling/bufferSizeInMapUnits" value="false"/>
    <property key="labeling/bufferSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/bufferTransp" value="0"/>
    <property key="labeling/centroidInside" value="false"/>
    <property key="labeling/centroidWhole" value="false"/>
    <property key="labeling/decimals" value="3"/>
    <property key="labeling/displayAll" value="false"/>
    <property key="labeling/dist" value="0"/>
    <property key="labeling/distInMapUnits" value="false"/>
    <property key="labeling/distMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/drawLabels" value="false"/>
    <property key="labeling/enabled" value="false"/>
    <property key="labeling/fieldName" value=""/>
    <property key="labeling/fitInPolygonOnly" value="false"/>
    <property key="labeling/fontCapitals" value="0"/>
    <property key="labeling/fontFamily" value="MS Shell Dlg 2"/>
    <property key="labeling/fontItalic" value="false"/>
    <property key="labeling/fontLetterSpacing" value="0"/>
    <property key="labeling/fontLimitPixelSize" value="false"/>
    <property key="labeling/fontMaxPixelSize" value="10000"/>
    <property key="labeling/fontMinPixelSize" value="3"/>
    <property key="labeling/fontSize" value="8.25"/>
    <property key="labeling/fontSizeInMapUnits" value="false"/>
    <property key="labeling/fontSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/fontStrikeout" value="false"/>
    <property key="labeling/fontUnderline" value="false"/>
    <property key="labeling/fontWeight" value="50"/>
    <property key="labeling/fontWordSpacing" value="0"/>
    <property key="labeling/formatNumbers" value="false"/>
    <property key="labeling/isExpression" value="true"/>
    <property key="labeling/labelOffsetInMapUnits" value="true"/>
    <property key="labeling/labelOffsetMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/labelPerPart" value="false"/>
    <property key="labeling/leftDirectionSymbol" value="&lt;"/>
    <property key="labeling/limitNumLabels" value="false"/>
    <property key="labeling/maxCurvedCharAngleIn" value="20"/>
    <property key="labeling/maxCurvedCharAngleOut" value="-20"/>
    <property key="labeling/maxNumLabels" value="2000"/>
    <property key="labeling/mergeLines" value="false"/>
    <property key="labeling/minFeatureSize" value="0"/>
    <property key="labeling/multilineAlign" value="0"/>
    <property key="labeling/multilineHeight" value="1"/>
    <property key="labeling/namedStyle" value="Normal"/>
    <property key="labeling/obstacle" value="true"/>
    <property key="labeling/obstacleFactor" value="1"/>
    <property key="labeling/obstacleType" value="0"/>
    <property key="labeling/offsetType" value="0"/>
    <property key="labeling/placeDirectionSymbol" value="0"/>
    <property key="labeling/placement" value="0"/>
    <property key="labeling/placementFlags" value="10"/>
    <property key="labeling/plussign" value="false"/>
    <property key="labeling/predefinedPositionOrder" value="TR,TL,BR,BL,R,L,TSR,BSR"/>
    <property key="labeling/preserveRotation" value="true"/>
    <property key="labeling/previewBkgrdColor" value="#ffffff"/>
    <property key="labeling/priority" value="5"/>
    <property key="labeling/quadOffset" value="4"/>
    <property key="labeling/repeatDistance" value="0"/>
    <property key="labeling/repeatDistanceMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/repeatDistanceUnit" value="1"/>
    <property key="labeling/reverseDirectionSymbol" value="false"/>
    <property key="labeling/rightDirectionSymbol" value=">"/>
    <property key="labeling/scaleMax" value="10000000"/>
    <property key="labeling/scaleMin" value="1"/>
    <property key="labeling/scaleVisibility" value="false"/>
    <property key="labeling/shadowBlendMode" value="6"/>
    <property key="labeling/shadowColorB" value="0"/>
    <property key="labeling/shadowColorG" value="0"/>
    <property key="labeling/shadowColorR" value="0"/>
    <property key="labeling/shadowDraw" value="false"/>
    <property key="labeling/shadowOffsetAngle" value="135"/>
    <property key="labeling/shadowOffsetDist" value="1"/>
    <property key="labeling/shadowOffsetGlobal" value="true"/>
    <property key="labeling/shadowOffsetMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shadowOffsetUnits" value="1"/>
    <property key="labeling/shadowRadius" value="1.5"/>
    <property key="labeling/shadowRadiusAlphaOnly" value="false"/>
    <property key="labeling/shadowRadiusMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shadowRadiusUnits" value="1"/>
    <property key="labeling/shadowScale" value="100"/>
    <property key="labeling/shadowTransparency" value="30"/>
    <property key="labeling/shadowUnder" value="0"/>
    <property key="labeling/shapeBlendMode" value="0"/>
    <property key="labeling/shapeBorderColorA" value="255"/>
    <property key="labeling/shapeBorderColorB" value="128"/>
    <property key="labeling/shapeBorderColorG" value="128"/>
    <property key="labeling/shapeBorderColorR" value="128"/>
    <property key="labeling/shapeBorderWidth" value="0"/>
    <property key="labeling/shapeBorderWidthMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeBorderWidthUnits" value="1"/>
    <property key="labeling/shapeDraw" value="false"/>
    <property key="labeling/shapeFillColorA" value="255"/>
    <property key="labeling/shapeFillColorB" value="255"/>
    <property key="labeling/shapeFillColorG" value="255"/>
    <property key="labeling/shapeFillColorR" value="255"/>
    <property key="labeling/shapeJoinStyle" value="64"/>
    <property key="labeling/shapeOffsetMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeOffsetUnits" value="1"/>
    <property key="labeling/shapeOffsetX" value="0"/>
    <property key="labeling/shapeOffsetY" value="0"/>
    <property key="labeling/shapeRadiiMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeRadiiUnits" value="1"/>
    <property key="labeling/shapeRadiiX" value="0"/>
    <property key="labeling/shapeRadiiY" value="0"/>
    <property key="labeling/shapeRotation" value="0"/>
    <property key="labeling/shapeRotationType" value="0"/>
    <property key="labeling/shapeSVGFile" value=""/>
    <property key="labeling/shapeSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeSizeType" value="0"/>
    <property key="labeling/shapeSizeUnits" value="1"/>
    <property key="labeling/shapeSizeX" value="0"/>
    <property key="labeling/shapeSizeY" value="0"/>
    <property key="labeling/shapeTransparency" value="0"/>
    <property key="labeling/shapeType" value="0"/>
    <property key="labeling/substitutions" value="&lt;substitutions/>"/>
    <property key="labeling/textColorA" value="255"/>
    <property key="labeling/textColorB" value="0"/>
    <property key="labeling/textColorG" value="0"/>
    <property key="labeling/textColorR" value="0"/>
    <property key="labeling/textTransp" value="0"/>
    <property key="labeling/upsidedownLabels" value="0"/>
    <property key="labeling/useSubstitutions" value="false"/>
    <property key="labeling/wrapChar" value=""/>
    <property key="labeling/xOffset" value="0"/>
    <property key="labeling/yOffset" value="0"/>
    <property key="labeling/zIndex" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerTransparency>0</layerTransparency>
  <displayfield>name</displayfield>
  <label>0</label>
  <labelattributes>
    <label fieldname="" text="Étiquette"/>
    <family fieldname="" name="MS Shell Dlg 2"/>
    <size fieldname="" units="pt" value="12"/>
    <bold fieldname="" on="0"/>
    <italic fieldname="" on="0"/>
    <underline fieldname="" on="0"/>
    <strikeout fieldname="" on="0"/>
    <color fieldname="" red="0" blue="0" green="0"/>
    <x fieldname=""/>
    <y fieldname=""/>
    <offset x="0" y="0" units="pt" yfieldname="" xfieldname=""/>
    <angle fieldname="" value="0" auto="0"/>
    <alignment fieldname="" value="center"/>
    <buffercolor fieldname="" red="255" blue="255" green="255"/>
    <buffersize fieldname="" units="pt" value="1"/>
    <bufferenabled fieldname="" on=""/>
    <multilineenabled fieldname="" on=""/>
    <selectedonly on=""/>
  </labelattributes>
  <SingleCategoryDiagramRenderer diagramType="Pie" sizeLegend="0" attributeLegend="1">
    <DiagramCategory penColor="#000000" labelPlacementMethod="XHeight" penWidth="0" diagramOrientation="Up" sizeScale="0,0,0,0,0,0" minimumSize="0" barWidth="5" penAlpha="255" maxScaleDenominator="1e+08" backgroundColor="#ffffff" transparency="0" width="15" scaleDependency="Area" backgroundAlpha="255" angleOffset="1440" scaleBasedVisibility="0" enabled="0" height="15" lineSizeScale="0,0,0,0,0,0" sizeType="MM" lineSizeType="MM" minScaleDenominator="100000">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" color="#000000" label=""/>
    </DiagramCategory>
    <symbol alpha="1" clip_to_extent="1" type="marker" name="sizeSymbol">
      <layer pass="0" class="SimpleMarker" locked="0">
        <prop k="angle" v="0"/>
        <prop k="color" v="255,0,0,255"/>
        <prop k="horizontal_anchor_point" v="1"/>
        <prop k="joinstyle" v="bevel"/>
        <prop k="name" v="circle"/>
        <prop k="offset" v="0,0"/>
        <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
        <prop k="offset_unit" v="MM"/>
        <prop k="outline_color" v="0,0,0,255"/>
        <prop k="outline_style" v="solid"/>
        <prop k="outline_width" v="0"/>
        <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
        <prop k="outline_width_unit" v="MM"/>
        <prop k="scale_method" v="diameter"/>
        <prop k="size" v="2"/>
        <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
        <prop k="size_unit" v="MM"/>
        <prop k="vertical_anchor_point" v="1"/>
      </layer>
    </symbol>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings yPosColumn="-1" showColumn="0" linePlacementFlags="10" placement="0" dist="0" xPosColumn="-1" priority="0" obstacle="0" zIndex="0" showAll="1"/>
  <annotationform>../QGIS_projet</annotationform>
  <aliases>
    <alias field="id" index="0" name="ID"/>
    <alias field="name" index="1" name="Nom"/>
    <alias field="identification" index="2" name="N° de l'ouvrage"/>
    <alias field="fk_installation" index="3" name="Lien avec ouvrage principal"/>
    <alias field="fk_status" index="4" name="Statut*"/>
    <alias field="fk_distributor" index="5" name="Propriété"/>
    <alias field="fk_remote" index="6" name=""/>
    <alias field="fk_watertype" index="7" name="Type d'eau"/>
    <alias field="schema_force_visible" index="8" name=""/>
    <alias field="altitude" index="9" name="Altitude"/>
    <alias field="remark" index="10" name="Remarque"/>
    <alias field="year" index="11" name="Année de construction"/>
    <alias field="year_end" index="12" name="Année d'archivage"/>
    <alias field="open_water_surface" index="13" name=""/>
    <alias field="label_1_visible" index="14" name=""/>
    <alias field="label_1_x" index="15" name=""/>
    <alias field="label_1_y" index="16" name=""/>
    <alias field="label_1_rotation" index="17" name=""/>
    <alias field="label_1_text" index="18" name=""/>
    <alias field="label_2_visible" index="19" name=""/>
    <alias field="label_2_x" index="20" name=""/>
    <alias field="label_2_y" index="21" name=""/>
    <alias field="label_2_rotation" index="22" name=""/>
    <alias field="label_2_text" index="23" name=""/>
    <alias field="networkseparation" index="24" name="Séparation de réseau"/>
    <alias field="fk_node" index="25" name="ID noeud"/>
    <alias field="fk_district" index="26" name="Commune"/>
    <alias field="fk_pressurezone" index="27" name="Zone de pression"/>
    <alias field="fk_printmap" index="28" name=""/>
    <alias field="_district" index="29" name="Commune (auto)"/>
    <alias field="_printmaps" index="30" name=""/>
    <alias field="geometry" index="31" name=""/>
    <alias field="geometry_alt1" index="32" name=""/>
    <alias field="geometry_alt2" index="33" name=""/>
    <alias field="_geometry_alt1_used" index="34" name=""/>
    <alias field="_geometry_alt2_used" index="35" name=""/>
    <alias field="fk_locationtype" index="36" name="Situation"/>
    <alias field="fk_folder" index="37" name="N° de chantier"/>
    <alias field="fk_precision" index="38" name="Précision planimétrique *"/>
    <alias field="fk_precisionalti" index="39" name="Précision altimétrique *"/>
    <alias field="fk_object_reference" index="40" name="Niveau"/>
    <alias field="usr_cale_sisol" index="41" name="Calé SISOL"/>
    <alias field="usr_no_printmap" index="42" name="N° de plan"/>
    <alias field="fk_chamber_type" index="43" name="Fonction principale*"/>
    <alias field="fk_equipment_type" index="44" name="Equipement"/>
    <alias field="adduction" index="45" name="Adduction (Famille)*"/>
    <alias field="fk_adduction" index="46" name="Nom de l'adduction"/>
    <alias field="fk_network" index="47" name="Réseau"/>
    <alias field="depth" index="48" name="Profondeur chambre [m]"/>
    <alias field="no_hydro" index="49" name="N° Rhydrogéologique"/>
    <alias field="date_modif" index="50" name="Dernière modification"/>
    <alias field="user_session" index="51" name="Auteur de la dernière modification"/>
    <alias field="fk_doc_goeland" index="52" name="N° document goéland"/>
    <alias field="fk_start_setting" index="53" name="Configuration départ"/>
    <alias field="sampling" index="54" name="Prélèvement possible"/>
    <alias field="fk_source_system" index="55" name="Système captant"/>
    <alias field="nbr_inlet" index="56" name="Nbre d'arrivée"/>
    <alias field="type_inlet" index="57" name="Type d'arrivée"/>
    <alias field="length_tunnel" index="58" name="Longueur galerie [m]"/>
    <alias field="terrain_height" index="59" name="Hauteur du terrain [m]"/>
    <alias field="geometry_polygon" index="60" name=""/>
    <alias field="fk_aperture" index="61" name="Type d'ouverture"/>
    <alias field="fk_key" index="62" name="Type de clé"/>
    <alias field="fk_access" index="63" name="Accès dans l'ouvrage"/>
    <alias field="dim_length" index="64" name="Dimension  ouverture [cm] DN/ largeur"/>
    <alias field="dim_width" index="65" name="Longueur / Hauteur [cm]"/>
    <alias field="access_dry" index="66" name="Accès sur une partie sèche"/>
    <alias field="fk_pipe" index="67" name="ID conduite"/>
    <alias field="create_date" index="68" name=""/>
    <alias field="last_date" index="69" name=""/>
    <alias field="last_user" index="70" name=""/>
    <alias field="deleted" index="71" name=""/>
    <alias field="z" index="72" name="Coord Z"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions default="0">
    <actionsetting showInAttributeTable="1" action="import sys&#xd;&#xa;sys.layerid='usr_installation_chamber20160704161720569'&#xd;&#xa;sys.featureid=[%id%]&#xd;&#xa;execfile(u'//geodata.lausanne.ch/data/QGIS_projet/eauservice/qwat_lausanne/action/action_digitize_emprise.py'.encode(&quot;utf-8&quot;))" icon="" capture="0" type="1" name="Digitaliser les emprises (polygone)" shortTitle=""/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" hidden="1" type="field" name="fk_remote"/>
      <column width="-1" hidden="1" type="field" name="fk_watertype"/>
      <column width="-1" hidden="1" type="field" name="schema_force_visible"/>
      <column width="-1" hidden="1" type="field" name="altitude"/>
      <column width="-1" hidden="1" type="field" name="open_water_surface"/>
      <column width="-1" hidden="1" type="field" name="label_1_visible"/>
      <column width="-1" hidden="1" type="field" name="label_1_x"/>
      <column width="-1" hidden="1" type="field" name="label_1_y"/>
      <column width="-1" hidden="1" type="field" name="label_1_rotation"/>
      <column width="-1" hidden="1" type="field" name="label_1_text"/>
      <column width="-1" hidden="1" type="field" name="label_2_visible"/>
      <column width="-1" hidden="1" type="field" name="label_2_x"/>
      <column width="-1" hidden="1" type="field" name="label_2_y"/>
      <column width="-1" hidden="1" type="field" name="label_2_rotation"/>
      <column width="-1" hidden="1" type="field" name="label_2_text"/>
      <column width="-1" hidden="1" type="field" name="fk_printmap"/>
      <column width="-1" hidden="1" type="field" name="_printmaps"/>
      <column width="-1" hidden="1" type="field" name="geometry_alt1"/>
      <column width="-1" hidden="1" type="field" name="geometry_alt2"/>
      <column width="-1" hidden="1" type="field" name="_geometry_alt1_used"/>
      <column width="-1" hidden="1" type="field" name="_geometry_alt2_used"/>
      <column width="-1" hidden="1" type="field" name="fk_folder"/>
      <column width="-1" hidden="1" type="field" name="geometry_polygon"/>
      <column width="-1" hidden="0" type="field" name="id"/>
      <column width="-1" hidden="0" type="field" name="name"/>
      <column width="-1" hidden="0" type="field" name="identification"/>
      <column width="-1" hidden="0" type="field" name="fk_installation"/>
      <column width="-1" hidden="0" type="field" name="fk_status"/>
      <column width="-1" hidden="0" type="field" name="fk_distributor"/>
      <column width="-1" hidden="0" type="field" name="remark"/>
      <column width="-1" hidden="0" type="field" name="year"/>
      <column width="-1" hidden="0" type="field" name="year_end"/>
      <column width="-1" hidden="0" type="field" name="networkseparation"/>
      <column width="-1" hidden="0" type="field" name="fk_node"/>
      <column width="-1" hidden="0" type="field" name="fk_district"/>
      <column width="-1" hidden="0" type="field" name="fk_pressurezone"/>
      <column width="-1" hidden="0" type="field" name="_district"/>
      <column width="-1" hidden="0" type="field" name="geometry"/>
      <column width="-1" hidden="0" type="field" name="fk_locationtype"/>
      <column width="-1" hidden="0" type="field" name="fk_precision"/>
      <column width="-1" hidden="0" type="field" name="fk_precisionalti"/>
      <column width="-1" hidden="0" type="field" name="fk_object_reference"/>
      <column width="-1" hidden="0" type="field" name="usr_cale_sisol"/>
      <column width="-1" hidden="0" type="field" name="usr_no_printmap"/>
      <column width="-1" hidden="0" type="field" name="fk_chamber_type"/>
      <column width="109" hidden="0" type="field" name="fk_equipment_type"/>
      <column width="-1" hidden="0" type="field" name="adduction"/>
      <column width="-1" hidden="0" type="field" name="fk_adduction"/>
      <column width="-1" hidden="0" type="field" name="fk_network"/>
      <column width="-1" hidden="0" type="field" name="depth"/>
      <column width="-1" hidden="0" type="field" name="no_hydro"/>
      <column width="-1" hidden="0" type="field" name="date_modif"/>
      <column width="-1" hidden="0" type="field" name="user_session"/>
      <column width="-1" hidden="0" type="field" name="fk_doc_goeland"/>
      <column width="-1" hidden="0" type="field" name="fk_start_setting"/>
      <column width="-1" hidden="0" type="field" name="sampling"/>
      <column width="-1" hidden="0" type="field" name="fk_source_system"/>
      <column width="-1" hidden="0" type="field" name="nbr_inlet"/>
      <column width="-1" hidden="0" type="field" name="type_inlet"/>
      <column width="-1" hidden="0" type="field" name="length_tunnel"/>
      <column width="-1" hidden="0" type="field" name="terrain_height"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" hidden="0" type="field" name="fk_aperture"/>
      <column width="-1" hidden="0" type="field" name="fk_key"/>
      <column width="-1" hidden="0" type="field" name="fk_access"/>
      <column width="-1" hidden="0" type="field" name="dim_length"/>
      <column width="-1" hidden="0" type="field" name="dim_width"/>
      <column width="-1" hidden="0" type="field" name="access_dry"/>
      <column width="-1" hidden="0" type="field" name="fk_pipe"/>
      <column width="-1" hidden="0" type="field" name="create_date"/>
      <column width="-1" hidden="0" type="field" name="last_date"/>
      <column width="-1" hidden="0" type="field" name="last_user"/>
      <column width="-1" hidden="0" type="field" name="deleted"/>
      <column width="-1" hidden="0" type="field" name="z"/>
    </columns>
  </attributetableconfig>
  <editform>../QGIS_projet</editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath>../QGIS_projet</editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
Les formulaires QGIS peuvent avoir une fonction Python qui sera appelée à l'ouverture du formulaire.

Utilisez cette fonction pour ajouter plus de fonctionnalités à vos formulaires.

Entrez le nom de la fonction dans le champ
"Fonction d'initialisation Python"
Voici un exemple à suivre:
"""
from PyQt4.QtGui import QWidget

def my_form_open(dialog, layer, feature):
⇥geom = feature.geometry()
⇥control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Général" groupBox="0" columnCount="1">
      <attributeEditorField showLabel="1" index="27" name="fk_pressurezone"/>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Localisation" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="26" name="fk_district"/>
        <attributeEditorField showLabel="1" index="36" name="fk_locationtype"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="45" name="adduction"/>
        <attributeEditorField showLabel="1" index="2" name="identification"/>
        <attributeEditorField showLabel="1" index="43" name="fk_chamber_type"/>
        <attributeEditorField showLabel="1" index="1" name="name"/>
        <attributeEditorField showLabel="1" index="11" name="year"/>
        <attributeEditorField showLabel="1" index="12" name="year_end"/>
        <attributeEditorField showLabel="1" index="4" name="fk_status"/>
        <attributeEditorField showLabel="1" index="0" name="id"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Entretien" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="5" name="fk_distributor"/>
        <attributeEditorField showLabel="1" index="47" name="fk_network"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Accès" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="62" name="fk_key"/>
        <attributeEditorField showLabel="1" index="66" name="access_dry"/>
        <attributeEditorField showLabel="1" index="61" name="fk_aperture"/>
        <attributeEditorField showLabel="1" index="63" name="fk_access"/>
        <attributeEditorField showLabel="1" index="64" name="dim_length"/>
        <attributeEditorField showLabel="1" index="65" name="dim_width"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="2">
        <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Caractéristiques" groupBox="1" columnCount="1">
          <attributeEditorField showLabel="1" index="48" name="depth"/>
          <attributeEditorField showLabel="1" index="24" name="networkseparation"/>
          <attributeEditorField showLabel="1" index="54" name="sampling"/>
        </attributeEditorContainer>
        <attributeEditorContainer showLabel="0" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="1">
          <attributeEditorField showLabel="0" index="44" name="fk_equipment_type"/>
        </attributeEditorContainer>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Géométrie" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="38" name="fk_precision"/>
        <attributeEditorField showLabel="1" index="41" name="usr_cale_sisol"/>
        <attributeEditorField showLabel="1" index="39" name="fk_precisionalti"/>
        <attributeEditorField showLabel="1" index="72" name="z"/>
        <attributeEditorField showLabel="1" index="25" name="fk_node"/>
        <attributeEditorField showLabel="1" index="67" name="fk_pipe"/>
        <attributeEditorField showLabel="1" index="9" name="altitude"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" index="10" name="remark"/>
      <attributeEditorField showLabel="1" index="51" name="user_session"/>
      <attributeEditorField showLabel="1" index="50" name="date_modif"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="1" visibilityExpression=" &quot;adduction&quot;  = 't'" name="Adduction" groupBox="0" columnCount="1">
      <attributeEditorField showLabel="1" index="46" name="fk_adduction"/>
      <attributeEditorField showLabel="1" index="49" name="no_hydro"/>
      <attributeEditorField showLabel="1" index="55" name="fk_source_system"/>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Configuration" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="56" name="nbr_inlet"/>
        <attributeEditorField showLabel="1" index="57" name="type_inlet"/>
        <attributeEditorField showLabel="1" index="59" name="terrain_height"/>
        <attributeEditorField showLabel="1" index="58" name="length_tunnel"/>
        <attributeEditorField showLabel="1" index="53" name="fk_start_setting"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" index="52" name="fk_doc_goeland"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Détails géométriques (polygone)" groupBox="0" columnCount="0">
      <attributeEditorRelation showLinkButton="1" relation="relation_usr_installation_chamber_details_polygon" showLabel="1" showUnlinkButton="1" name="relation_usr_installation_chamber_details_polygon"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Détails géométriques (points)" groupBox="0" columnCount="1">
      <attributeEditorRelation showLinkButton="1" relation="relation_usr_installation_chamber_details_points" showLabel="1" showUnlinkButton="1" name="relation_usr_installation_chamber_details_points"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <widgets>
    <widget name="relation_usr_installation_chamber_details_points">
      <config/>
    </widget>
    <widget name="relation_usr_installation_chamber_details_polygon">
      <config/>
    </widget>
    <widget name="relation_usr_installation_chamber_polygon">
      <config/>
    </widget>
  </widgets>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <defaults>
    <default field="id" expression=""/>
    <default field="name" expression=""/>
    <default field="identification" expression=""/>
    <default field="fk_installation" expression=""/>
    <default field="fk_status" expression="103"/>
    <default field="fk_distributor" expression=""/>
    <default field="fk_remote" expression=""/>
    <default field="fk_watertype" expression=""/>
    <default field="schema_force_visible" expression=""/>
    <default field="altitude" expression=""/>
    <default field="remark" expression="''"/>
    <default field="year" expression="if (&quot;year&quot; is NULL, year(now()),NULL)"/>
    <default field="year_end" expression=" if( &quot;fk_status&quot; = 13002, year(now()), NULL)"/>
    <default field="open_water_surface" expression=""/>
    <default field="label_1_visible" expression=""/>
    <default field="label_1_x" expression=""/>
    <default field="label_1_y" expression=""/>
    <default field="label_1_rotation" expression=""/>
    <default field="label_1_text" expression=""/>
    <default field="label_2_visible" expression=""/>
    <default field="label_2_x" expression=""/>
    <default field="label_2_y" expression=""/>
    <default field="label_2_rotation" expression=""/>
    <default field="label_2_text" expression=""/>
    <default field="networkseparation" expression="'f'"/>
    <default field="fk_node" expression=""/>
    <default field="fk_district" expression=""/>
    <default field="fk_pressurezone" expression=""/>
    <default field="fk_printmap" expression=""/>
    <default field="_district" expression=""/>
    <default field="_printmaps" expression=""/>
    <default field="geometry" expression="''"/>
    <default field="geometry_alt1" expression="''"/>
    <default field="geometry_alt2" expression="''"/>
    <default field="_geometry_alt1_used" expression=""/>
    <default field="_geometry_alt2_used" expression=""/>
    <default field="fk_locationtype" expression=""/>
    <default field="fk_folder" expression=""/>
    <default field="fk_precision" expression="1104"/>
    <default field="fk_precisionalti" expression="CASE WHEN  z($geometry) > 0  THEN 11021&#xd;&#xa;ELSE 102 END"/>
    <default field="fk_object_reference" expression=""/>
    <default field="usr_cale_sisol" expression="'t'"/>
    <default field="usr_no_printmap" expression=""/>
    <default field="fk_chamber_type" expression=""/>
    <default field="fk_equipment_type" expression=""/>
    <default field="adduction" expression="'f'"/>
    <default field="fk_adduction" expression=""/>
    <default field="fk_network" expression=""/>
    <default field="depth" expression=""/>
    <default field="no_hydro" expression=""/>
    <default field="date_modif" expression=""/>
    <default field="user_session" expression=""/>
    <default field="fk_doc_goeland" expression=""/>
    <default field="fk_start_setting" expression=""/>
    <default field="sampling" expression="'f'"/>
    <default field="fk_source_system" expression=""/>
    <default field="nbr_inlet" expression=""/>
    <default field="type_inlet" expression=""/>
    <default field="length_tunnel" expression=""/>
    <default field="terrain_height" expression=""/>
    <default field="geometry_polygon" expression=""/>
    <default field="fk_aperture" expression=""/>
    <default field="fk_key" expression=""/>
    <default field="fk_access" expression=""/>
    <default field="dim_length" expression=""/>
    <default field="dim_width" expression=""/>
    <default field="access_dry" expression="'f'"/>
    <default field="fk_pipe" expression=""/>
    <default field="create_date" expression=""/>
    <default field="last_date" expression=""/>
    <default field="last_user" expression=""/>
    <default field="deleted" expression=""/>
    <default field="z" expression=""/>
  </defaults>
  <previewExpression>COALESCE( "name"  || ' (' ||  "id"  || ')', '&lt;NULL>' )</previewExpression>
  <layerGeometryType>0</layerGeometryType>
</qgis>
