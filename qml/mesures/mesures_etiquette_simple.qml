<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.13" simplifyAlgorithm="0" minimumScale="0" maximumScale="1501" simplifyDrawingHints="0" minLabelScale="0" maxLabelScale="1e+08" simplifyDrawingTol="1" readOnly="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="1" simplifyLocal="1" scaleBasedLabelVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="id">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_survey_type">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="survey_type20160510154159985" Value="value_fr" labelOnTop="0" constraintDescription="Obligatoire" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_worker">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="UniqueValues" name="code">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="Obligatoire" notNull="1" Editable="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="description">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="date">
      <widgetv2config fieldEditable="1" calendar_popup="1" allow_null="1" display_format="dd.MM.yyyy" field_format="yyyy-MM-dd" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_folder">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="altitude">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_session_name">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="1" fieldEditable="0" Key="usr_session_name" constraint="" Layer="surveypoint20160902155615289" Value="usr_session_name" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_no_pt">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_no_station_ref">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_annot_1">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_annot_2">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_measure_ref">
      <widgetv2config IsMultiline="1" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_table">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;id&quot; IN (5,13,14,26,33,35,69)" UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="doctables20150619091818004" Value="name_fr" labelOnTop="0" constraintDescription="Obligatoire" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_object_reference">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="object_reference20160510154159940" Value="value_fr" labelOnTop="0" constraintDescription="Obligatoire" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_fk_network_element">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_fiab_plani">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_fiab_alti">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_precision">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_precisionalti">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_valid">
      <widgetv2config fieldEditable="0" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="usr_valid_date">
      <widgetv2config fieldEditable="0" calendar_popup="1" allow_null="1" display_format="dd.MM.yyyy" field_format="yyyy-MM-dd" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_import_user">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="create_date">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="last_date">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="last_user">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="deleted">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="doctables_name_fr">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="Niveau_value_fr">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="fkey_surveypoint">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="Coord Z [m]">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
  </edittypes>
  <renderer-v2 forceraster="0" symbollevels="0" type="RuleRenderer" enableorderby="0">
    <rules key="{3f6973bd-4e94-4558-84ce-24673fa9a8c9}">
      <rule filter=" &quot;usr_fk_table&quot; != 5 AND &quot;usr_valid&quot; = 'f'" key="{94d00a04-6e8d-4c09-b8c6-ac5afd048283}" symbol="0" label="Mesures (à traiter)"/>
      <rule filter=" &quot;usr_fk_table&quot; =  5 " key="{7ae1a350-e079-454f-9c56-0ac88c960b46}" label="Points de constructions">
        <rule filter=" &quot;code&quot; IN ('4212','4220','4221','4222','4223','4224','4225','4227','4228','4229')" key="{72f0cd18-4642-4aac-9ab9-29f995bd48d8}" symbol="1" label="Points de constructions"/>
        <rule filter=" &quot;code&quot; IN ( '4286','4287')" key="{7208cf2d-759c-47dd-8658-bd75487d3fc9}" symbol="2" label="Points de constructions = BH"/>
        <rule filter=" &quot;code&quot; IN ('4260', '4261')" key="{ed396d05-d84d-478f-875a-7ee022335e35}" symbol="3" label="Points de constructions = Introduction bâtiment"/>
        <rule filter=" &quot;code&quot; ='4250'" key="{052095ca-f8ae-410a-b0ab-33c7b6315e0f}" symbol="4" label="Points de constructions = Vanne existante"/>
        <rule filter=" &quot;code&quot; = '4343'" key="{2e7e9423-eaac-428f-80d1-251ad34df46c}" symbol="5" label="Point de construction = Couvercle d'ouvrage"/>
        <rule filter=" &quot;code&quot; = '4300'" key="{9cba849d-505a-488b-87de-75077bbfbf5e}" symbol="6" label="Point de construction = Corps de chambre d'ouvrage"/>
      </rule>
    </rules>
    <symbols>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,0,0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="52,254,12,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.4"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3.4"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="139,30,166,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="cross2"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.6"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="1">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,165,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,165,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.6"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.03&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.024&#xd;&#xa;WHEN  $scale >133 THEN 0.018&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 1.5&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 1&#xd;&#xa;WHEN $scale >132 THEN 0.7&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="2">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,165,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,165,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.6"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.112&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.08&#xd;&#xa;WHEN  $scale > 132 THEN 0.056&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 1.5&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 1&#xd;&#xa;WHEN $scale >132 THEN 0.7&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.056&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.04&#xd;&#xa;WHEN  $scale > 132 THEN 0.028&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="3">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,165,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.33"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.1&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.08&#xd;&#xa;WHEN  $scale >133 THEN 0.06&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 1.5&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 1&#xd;&#xa;WHEN $scale >132 THEN 0.7&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="4">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,162,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="161,152,168,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.4"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.11&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.08&#xd;&#xa;WHEN $scale >132 THEN 0.055&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 1.5&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 1&#xd;&#xa;WHEN $scale >132 THEN 0.7&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="5">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,162,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.125&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.1&#xd;&#xa;WHEN  $scale >133 THEN 0.075&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,162,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.1375&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.110&#xd;&#xa;WHEN  $scale >133 THEN 0.0825&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="6">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,162,0,255"/>
          <prop k="outline_style" v="dash"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.25&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.210&#xd;&#xa;WHEN  $scale >133 THEN 0.16&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
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
    <property key="labeling/dist" value="2"/>
    <property key="labeling/distInMapUnits" value="false"/>
    <property key="labeling/distMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/drawLabels" value="true"/>
    <property key="labeling/enabled" value="true"/>
    <property key="labeling/fieldName" value="coalesce(  &quot;usr_no_pt&quot; , '')"/>
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
    <property key="labeling/labelOffsetInMapUnits" value="false"/>
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
    <property key="labeling/quadOffset" value="2"/>
    <property key="labeling/repeatDistance" value="0"/>
    <property key="labeling/repeatDistanceMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/repeatDistanceUnit" value="1"/>
    <property key="labeling/reverseDirectionSymbol" value="false"/>
    <property key="labeling/rightDirectionSymbol" value=">"/>
    <property key="labeling/scaleMax" value="301"/>
    <property key="labeling/scaleMin" value="1"/>
    <property key="labeling/scaleVisibility" value="true"/>
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
    <property key="labeling/shapeBorderWidth" value="0.3"/>
    <property key="labeling/shapeBorderWidthMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeBorderWidthUnits" value="1"/>
    <property key="labeling/shapeDraw" value="true"/>
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
    <property key="labeling/shapeSizeX" value="0.6"/>
    <property key="labeling/shapeSizeY" value="0.6"/>
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
    <property key="labeling/xOffset" value="2.5"/>
    <property key="labeling/yOffset" value="-2"/>
    <property key="labeling/zIndex" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerTransparency>0</layerTransparency>
  <displayfield>&lt;body>
&lt;b>N° point :&lt;/b>[% coalesce(  "usr_no_pt" , '')%]&lt;br>
&lt;b>N° station :&lt;/b>[% coalesce(   "usr_no_station_ref"  ,'')%]&lt;br>
&lt;b>Altitude :&lt;/b>[% coalesce(   z(  $geometry )  , '')%]&lt;br>
&lt;b>Niveau :&lt;/b>[%  coalesce( "fk_object_reference"  , '') %]&lt;br>
&lt;b>Date de saisie :&lt;/b>[% coalesce(    "date"   , '')%]&lt;br>
&lt;b>Type d''objet :&lt;/b>[% coalesce(    "description"   , '')%]&lt;br>
&lt;b>N° job :&lt;/b>[% coalesce(  "usr_session_name" ,'')%]&lt;br>
&lt;/body></displayfield>
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
  <SingleCategoryDiagramRenderer diagramType="Histogram" sizeLegend="0" attributeLegend="1">
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
  <DiagramLayerSettings yPosColumn="-1" showColumn="-1" linePlacementFlags="10" placement="0" dist="0" xPosColumn="-1" priority="0" obstacle="0" zIndex="0" showAll="1"/>
  <annotationform>U:/QGIS_projet/qgis_qwat_lausanne</annotationform>
  <aliases>
    <alias field="id" index="0" name="ID"/>
    <alias field="fk_survey_type" index="1" name="Type de mesure"/>
    <alias field="fk_worker" index="2" name="Opérateur"/>
    <alias field="code" index="3" name="IDCAD"/>
    <alias field="description" index="4" name="Remarque"/>
    <alias field="date" index="5" name="Date de saisie"/>
    <alias field="fk_folder" index="6" name="N° de plan"/>
    <alias field="altitude" index="7" name="Altitude levée"/>
    <alias field="usr_session_name" index="8" name="N° du job"/>
    <alias field="usr_no_pt" index="9" name="N° du point"/>
    <alias field="usr_no_station_ref" index="10" name="N° de la station"/>
    <alias field="usr_annot_1" index="11" name="Annotation 1"/>
    <alias field="usr_annot_2" index="12" name="Annotation 2"/>
    <alias field="usr_measure_ref" index="13" name="Référence fichier GSI"/>
    <alias field="usr_fk_table" index="14" name="N° table destination"/>
    <alias field="fk_object_reference" index="15" name="Niveau"/>
    <alias field="usr_fk_network_element" index="16" name="Lien vers objet réseau"/>
    <alias field="usr_fiab_plani" index="17" name="Fiabilité planimétrique"/>
    <alias field="usr_fiab_alti" index="18" name="Fiabilité altimétrique"/>
    <alias field="usr_precision" index="19" name="Précision planimétrique"/>
    <alias field="usr_precisionalti" index="20" name="Précision altimétrique"/>
    <alias field="usr_valid" index="21" name="Etat du traitement"/>
    <alias field="usr_valid_date" index="22" name="Date de traitement"/>
    <alias field="usr_import_user" index="23" name="Nom de l'opérateur"/>
    <alias field="create_date" index="24" name=""/>
    <alias field="last_date" index="25" name=""/>
    <alias field="last_user" index="26" name=""/>
    <alias field="deleted" index="27" name=""/>
    <alias field="doctables_name_fr" index="28" name=""/>
    <alias field="Niveau_value_fr" index="29" name=""/>
    <alias field="fkey_surveypoint" index="30" name="ID objet réseau"/>
    <alias field="Coord Z [m]" index="31" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions default="-1"/>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="&quot;usr_session_name&quot;" sortOrder="1">
    <columns>
      <column width="-1" hidden="1" type="field" name="fk_worker"/>
      <column width="-1" hidden="1" type="field" name="fk_folder"/>
      <column width="-1" hidden="0" type="field" name="id"/>
      <column width="-1" hidden="0" type="field" name="fk_survey_type"/>
      <column width="-1" hidden="0" type="field" name="code"/>
      <column width="203" hidden="0" type="field" name="description"/>
      <column width="-1" hidden="0" type="field" name="date"/>
      <column width="-1" hidden="0" type="field" name="altitude"/>
      <column width="-1" hidden="0" type="field" name="usr_session_name"/>
      <column width="-1" hidden="0" type="field" name="usr_no_pt"/>
      <column width="-1" hidden="0" type="field" name="usr_no_station_ref"/>
      <column width="-1" hidden="0" type="field" name="usr_annot_1"/>
      <column width="-1" hidden="0" type="field" name="usr_annot_2"/>
      <column width="308" hidden="0" type="field" name="usr_measure_ref"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_table"/>
      <column width="-1" hidden="0" type="field" name="fk_object_reference"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_network_element"/>
      <column width="-1" hidden="0" type="field" name="usr_fiab_plani"/>
      <column width="-1" hidden="0" type="field" name="usr_fiab_alti"/>
      <column width="-1" hidden="0" type="field" name="usr_precision"/>
      <column width="-1" hidden="0" type="field" name="usr_precisionalti"/>
      <column width="-1" hidden="0" type="field" name="usr_valid"/>
      <column width="-1" hidden="0" type="field" name="usr_valid_date"/>
      <column width="-1" hidden="0" type="field" name="usr_import_user"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" hidden="0" type="field" name="fkey_surveypoint"/>
      <column width="-1" hidden="0" type="field" name="Coord Z [m]"/>
      <column width="-1" hidden="0" type="field" name="doctables_name_fr"/>
      <column width="-1" hidden="0" type="field" name="Niveau_value_fr"/>
      <column width="-1" hidden="0" type="field" name="create_date"/>
      <column width="-1" hidden="0" type="field" name="last_date"/>
      <column width="-1" hidden="0" type="field" name="last_user"/>
      <column width="-1" hidden="0" type="field" name="deleted"/>
    </columns>
  </attributetableconfig>
  <editform>U:/QGIS_projet/qgis_qwat_lausanne</editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath>U:/QGIS_projet/qgis_qwat_lausanne</editforminitfilepath>
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
    <attributeEditorContainer showLabel="0" visibilityExpressionEnabled="0" visibilityExpression="" name="Général" groupBox="1" columnCount="2">
      <attributeEditorField showLabel="1" index="0" name="id"/>
      <attributeEditorField showLabel="1" index="21" name="usr_valid"/>
      <attributeEditorField showLabel="1" index="14" name="usr_fk_table"/>
      <attributeEditorField showLabel="1" index="22" name="usr_valid_date"/>
      <attributeEditorField showLabel="1" index="30" name="fkey_surveypoint"/>
      <attributeEditorField showLabel="1" index="23" name="usr_import_user"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Détails de la mesure" groupBox="1" columnCount="2">
      <attributeEditorField showLabel="1" index="8" name="usr_session_name"/>
      <attributeEditorField showLabel="1" index="5" name="date"/>
      <attributeEditorField showLabel="1" index="9" name="usr_no_pt"/>
      <attributeEditorField showLabel="1" index="3" name="code"/>
      <attributeEditorField showLabel="1" index="10" name="usr_no_station_ref"/>
      <attributeEditorField showLabel="1" index="1" name="fk_survey_type"/>
      <attributeEditorField showLabel="1" index="31" name="Coord Z [m]"/>
      <attributeEditorField showLabel="1" index="15" name="fk_object_reference"/>
      <attributeEditorField showLabel="1" index="11" name="usr_annot_1"/>
      <attributeEditorField showLabel="1" index="12" name="usr_annot_2"/>
      <attributeEditorField showLabel="1" index="17" name="usr_fiab_plani"/>
      <attributeEditorField showLabel="1" index="18" name="usr_fiab_alti"/>
      <attributeEditorField showLabel="1" index="19" name="usr_precision"/>
      <attributeEditorField showLabel="1" index="20" name="usr_precisionalti"/>
    </attributeEditorContainer>
    <attributeEditorField showLabel="1" index="13" name="usr_measure_ref"/>
    <attributeEditorField showLabel="1" index="16" name="usr_fk_network_element"/>
  </attributeEditorForm>
  <widgets/>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <defaults>
    <default field="id" expression=""/>
    <default field="fk_survey_type" expression="9904"/>
    <default field="fk_worker" expression=""/>
    <default field="code" expression="4220"/>
    <default field="description" expression=""/>
    <default field="date" expression=" format_date(  now(), 'yyyy-MM-dd')"/>
    <default field="fk_folder" expression=""/>
    <default field="altitude" expression=""/>
    <default field="usr_session_name" expression=""/>
    <default field="usr_no_pt" expression=""/>
    <default field="usr_no_station_ref" expression=""/>
    <default field="usr_annot_1" expression=""/>
    <default field="usr_annot_2" expression=""/>
    <default field="usr_measure_ref" expression=""/>
    <default field="usr_fk_table" expression="5"/>
    <default field="fk_object_reference" expression="9003"/>
    <default field="usr_fk_network_element" expression=""/>
    <default field="usr_fiab_plani" expression=""/>
    <default field="usr_fiab_alti" expression=""/>
    <default field="usr_precision" expression=""/>
    <default field="usr_precisionalti" expression=""/>
    <default field="usr_valid" expression="'f'"/>
    <default field="usr_valid_date" expression=""/>
    <default field="usr_import_user" expression=""/>
    <default field="create_date" expression=""/>
    <default field="last_date" expression=""/>
    <default field="last_user" expression=""/>
    <default field="deleted" expression=""/>
    <default field="doctables_name_fr" expression=""/>
    <default field="Niveau_value_fr" expression=""/>
    <default field="fkey_surveypoint" expression=""/>
    <default field="Coord Z [m]" expression=""/>
  </defaults>
  <previewExpression>COALESCE( "doctables_name_fr", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>0</layerGeometryType>
</qgis>
