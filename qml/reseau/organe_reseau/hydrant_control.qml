<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.13" simplifyAlgorithm="0" minimumScale="0" maximumScale="2501" simplifyDrawingHints="0" minLabelScale="1" maxLabelScale="1e+08" simplifyDrawingTol="1" readOnly="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="1" simplifyLocal="1" scaleBasedLabelVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="id">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="identification">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint=" (&quot;identification&quot; is not null AND  &quot;fk_status&quot; = 1301) OR  ((&quot;identification&quot; is not null OR &quot;identification&quot; is null )  AND  &quot;fk_status&quot; != 1301)" UseHtml="0" labelOnTop="0" constraintDescription="Champ obligatoire pour les hydrants en service" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_distributor">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_status">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression="  &quot;vl_active&quot; =  't'  OR  &quot;id&quot;  = 1306" UseCompleter="0" fieldEditable="1" Key="id" constraint="( &quot;fk_status&quot; = 13002 AND year_end is not null ) OR (&quot;fk_status&quot; != 13002 AND year_end is null )" Layer="vl_status20130304110011436" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_provider">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_precision">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;usr_cale_sisol&quot;  =  't'  AND  &quot;fk_precision&quot;  IN (1102, 1104)) OR (&quot;usr_cale_sisol&quot;  =  'f' AND &quot;fk_precision&quot;  IN (1101))" Layer="vl_precision20130304110011372" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire, si calé SISOL, précis ou reporté, sinon imprécis" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_precisionalti">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (z(  $geometry ) > 300 AND  &quot;fk_precisionalti&quot;  IN (1121,11021)) OR ((z(  $geometry ) is null OR z(  $geometry ) = 0)  AND &quot;fk_precisionalti&quot;  IN (102))" Layer="vl_precisionalti20131211161429510" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire, si l'altitude est null ou égal à 0  la précision altimétrique est inconnu. Sinon la précision doit être renseignée comme précis ou imprécis." AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="year">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="(((&quot;year&quot; > 1860 AND  &quot;year&quot;  &lt;=  year( now() ))  OR ( &quot;year&quot; =0)) AND  &quot;fk_status&quot; IN (103, 1301))   OR ((&quot;year&quot; is null OR &quot;year&quot; is not null) AND  &quot;fk_status&quot; NOT IN (103, 1301) )" UseHtml="0" labelOnTop="0" constraintDescription="Champ obligatoire, année doit être entre 1860 et l'année actuel ou 0 si inconnu pour les objets en service" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="model">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="underground">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="Champ obligatoire" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="altitude">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="marked">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="remark">
      <widgetv2config IsMultiline="1" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pressure_static">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pressure_dynamic">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="flow">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="observation_date">
      <widgetv2config fieldEditable="1" calendar_popup="1" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="observation_source">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="fk_node">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_district">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="id" constraint=" &quot;fk_district&quot; NOT IN (396,397,399) OR  &quot;fk_district&quot;  is null" Layer="district20130304110004764" Value="name" labelOnTop="0" constraintDescription="Utilisez uniquement les communes actives" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_pressurezone">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;usr_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="&quot;fk_pressurezone&quot; NOT IN (103,107,122,130,134,135,136,140,141) OR &quot;fk_pressurezone&quot;  is null" Layer="pressurezone20130417133612105" Value="name" labelOnTop="0" constraintDescription="Utilisez uniquqment les zones de pression actives" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_printmap">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_district">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_pressurezone">
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
    <edittype widgetv2type="CheckBox" name="_geometry_alt1_used">
      <widgetv2config fieldEditable="0" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_geometry_alt2_used">
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
    <edittype widgetv2type="TextEdit" name="year_end">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="( &quot;fk_status&quot;  = 13002 AND &quot;year_end&quot; > 1860 AND  &quot;year_end&quot; &lt;=   year(now()) AND &quot;year_end&quot;  >=  coalesce(&quot;year&quot;,0) OR &quot;year_end&quot; = 0 )  OR (&quot;fk_status&quot;  != 13002 AND  &quot;year_end&quot; is null)" UseHtml="0" labelOnTop="0" constraintDescription="L'année d'archive doit être égal ou supérieur à l'année de pose ou égal à 0 si inconnu" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_folder">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_model_inf">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  = 't'" UseCompleter="0" fieldEditable="1" Key="id" constraint=" ( &quot;year&quot; >= 2017 AND  &quot;fk_model_inf&quot; is not null  AND  &quot;fk_model_inf&quot; != 103 AND  &quot;fk_status&quot; = 1301 ) &#xd;&#xa;OR ( (&quot;fk_model_inf&quot; is not null OR &quot;fk_model_inf&quot; is null) AND coalesce(&quot;year&quot;,0) &lt; 2017 ) &#xd;&#xa;OR ( &quot;year&quot; >= 2017 AND (&quot;fk_model_inf&quot; is not null OR &quot;fk_model_inf&quot; is null) AND  &quot;fk_status&quot; != 1301)&#xd;&#xa;" Layer="hydrant_model_inf20160510154159804" Value="model_and_provider" labelOnTop="0" constraintDescription="Champ obligatoire, si l'hydrant est en service" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_model_sup">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  = 't'" UseCompleter="0" fieldEditable="1" Key="id" constraint=" ( &quot;year&quot; >= 2017 AND  &quot;fk_model_sup&quot; is not null  AND  &quot;fk_model_sup&quot; != 103 AND  &quot;fk_status&quot; = 1301 ) &#xd;&#xa;OR ( (&quot;fk_model_sup&quot; is not null OR &quot;fk_model_sup&quot; is null) AND coalesce(&quot;year&quot;,0) &lt; 2017 ) &#xd;&#xa;OR ( &quot;year&quot; >= 2017 AND (&quot;fk_model_sup&quot; is not null OR &quot;fk_model_sup&quot; is null) AND  &quot;fk_status&quot; != 1301)&#xd;&#xa;" Layer="hydrant_model_sup20160510154159857" Value="model_and_provider" labelOnTop="0" constraintDescription="Champ obligatoire, si l'hydrant est en service et récent" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_object_reference">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="RelationReference" name="usr_fk_street_address">
      <widgetv2config OrderByValue="1" fieldEditable="1" AllowAddFeatures="0" ShowForm="0" Relation="relation_hydrant_street" ReadOnly="0" constraint="" MapIdentification="0" labelOnTop="0" constraintDescription="" notNull="1" AllowNULL="0">
        <FilterFields ChainFilters="0">
          <field name="ville"/>
        </FilterFields>
      </widgetv2config>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_location">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_cale_sisol">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint=" (&quot;usr_cale_sisol&quot;  = 't' AND  &quot;fk_precision&quot;  IN (1102, 1104)) OR (&quot;usr_cale_sisol&quot;  = 'f' AND &quot;fk_precision&quot;  IN (102,1101))" CheckedState="t" labelOnTop="0" constraintDescription="Champ obligatoire, si calé SISOL, l'objet est précis ou reporté, sinon imprécis" notNull="1"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_lorno">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_aec">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_output">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="( &quot;fk_status&quot; = 1301 AND &quot;fk_output&quot; is not null) OR  (&quot;fk_status&quot; != 1301 AND ( &quot;fk_output&quot; is null OR &quot;fk_output&quot; is not null ))" Layer="hydrant_output20160510154159890" Value="value_fr" labelOnTop="0" constraintDescription="Obligatoire si objet en service" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_hydrant_socket">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="( &quot;fk_status&quot; = 1301 AND  &quot;usr_fk_hydrant_socket&quot;  is not null) OR  (&quot;fk_status&quot; != 1301 AND (  &quot;usr_fk_hydrant_socket&quot;  is null OR  &quot;usr_fk_hydrant_socket&quot;  is not null ))" Layer="usr_hydrant_socket20160525153424880" Value="value_fr" labelOnTop="0" constraintDescription="Obligatoire, si objet en service" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_hydrant_connection">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_hydrant_connection20160525153425189" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_hydrant_height">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_hydrant_height20160525153425072" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_length_extend">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_hydrant_length20160525153425015" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_type_valve_hydrant">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_hydrant_valve20160525153424761" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_diam_valve_hydrant">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_hydrant_valve_diam20160525153424684" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_diam_elbow">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_hydrant_diam_elbow20160525153425131" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_excavation_depth">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_dist_valve">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="usr_fk_provider_sup">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="UniqueValues" name="usr_no_folder">
      <widgetv2config fieldEditable="1" constraint="( &quot;year&quot; >= 2017 AND  &quot;usr_no_folder&quot; is not null  AND  &quot;usr_no_folder&quot; != 'Inconnu' AND  &quot;fk_status&quot; = 1301 ) &#xd;&#xa;OR ( (&quot;usr_no_folder&quot; is not null OR &quot;usr_no_folder&quot; is null) AND coalesce(&quot;year&quot;,0) &lt; 2017 ) &#xd;&#xa;OR ( &quot;year&quot; >= 2017 AND (&quot;usr_no_folder&quot; is not null OR &quot;usr_no_folder&quot; is null) AND  &quot;fk_status&quot; != 1301)" labelOnTop="0" constraintDescription="Obligatoire si récent et mise en service" notNull="0" Editable="1"/>
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
    <edittype widgetv2type="ValueRelation" name="model_sup_fk_provider">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="0" Key="id" constraint="" Layer="hydrant_provider20130304110004893" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="model_inf_fk_provider">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="0" Key="id" constraint="" Layer="hydrant_provider20130304110004893" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_surveypoint">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="z">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint=" (z(  $geometry ) > 300 AND  &quot;fk_precisionalti&quot;  IN (1121,11021)) OR ((z(  $geometry ) is null OR z(  $geometry ) = 0)  AND &quot;fk_precisionalti&quot;  IN (102,103))" UseHtml="0" labelOnTop="0" constraintDescription="L'altitude de l'objet doit être renseigné en éditant sa géométrie (coordonnées) , sinon l'alitude est de 0." notNull="0"/>
    </edittype>
    <edittype widgetv2type="ExternalResource" name="image_hydrant">
      <widgetv2config RelativeStorage="2" fieldEditable="0" DocumentViewer="1" FileWidgetButton="0" DocumentViewerWidth="100" constraint="" FileWidget="0" DefaultRoot="\\lausanne.ch\data\Vdl\Apps\Topobase\eauservice\Pictures\" DocumentViewerHeight="100" StorageMode="0" labelOnTop="0" constraintDescription="" notNull="0" FileWidgetFilter=""/>
    </edittype>
    <edittype widgetv2type="ExternalResource" name="image_zpression">
      <widgetv2config RelativeStorage="2" fieldEditable="0" DocumentViewer="1" FileWidgetButton="0" DocumentViewerWidth="0" constraint="" FileWidget="0" DefaultRoot="\\lausanne.ch\data\VDL\Apps\TOPOBASE\eauservice\Pictures\" DocumentViewerHeight="0" StorageMode="0" labelOnTop="0" constraintDescription="" notNull="0" FileWidgetFilter=""/>
    </edittype>
    <edittype widgetv2type="ExternalResource" name="aec">
      <widgetv2config RelativeStorage="2" fieldEditable="0" DocumentViewer="1" FileWidgetButton="1" DocumentViewerWidth="0" constraint="" FileWidget="0" DefaultRoot="\\geodata.lausanne.ch\data\QGIS_projet\eauservice\qwat_lausanne\picture\" DocumentViewerHeight="0" StorageMode="0" labelOnTop="0" constraintDescription="" notNull="0" FileWidgetFilter=""/>
    </edittype>
    <edittype widgetv2type="ExternalResource" name="lorno">
      <widgetv2config RelativeStorage="2" fieldEditable="0" DocumentViewer="1" FileWidgetButton="1" DocumentViewerWidth="0" constraint="" FileWidget="0" DefaultRoot="\\geodata.lausanne.ch\data\QGIS_projet\eauservice\qwat_lausanne\picture\" DocumentViewerHeight="0" StorageMode="0" labelOnTop="0" constraintDescription="" notNull="0" FileWidgetFilter=""/>
    </edittype>
    <edittype widgetv2type="ExternalResource" name="Lien affaire chantier">
      <widgetv2config fieldEditable="0" DocumentViewer="0" FileWidgetButton="0" UseLink="1" constraint="" FileWidget="1" StorageMode="0" labelOnTop="0" constraintDescription="" notNull="0" FileWidgetFilter=""/>
    </edittype>
  </edittypes>
  <renderer-v2 forceraster="0" symbollevels="0" type="RuleRenderer" enableorderby="0">
    <rules key="{a5000262-d638-4ac9-acc4-112618ea614b}">
      <rule key="{4a975e8b-6e8e-4414-841e-611ba1e1a30a}" label="Modèle saisie">
        <rule filter=" &quot;fk_status&quot;   =  1301 and &quot;underground&quot; = 'f'" key="{4fc408db-c4af-4896-8fa7-3b7a1e76969a}" symbol="0" label="Borne hydrante"/>
        <rule filter=" &quot;fk_status&quot;   =  1301 and &quot;underground&quot; ='t'" key="{ce7f80bb-3e32-4496-a6ae-3d49dd392a64}" symbol="1" label="Hydrante souterraine"/>
        <rule filter=" &quot;fk_status&quot;   is null OR  &quot;fk_status&quot; NOT IN (1301,13002)" key="{54cc838b-1401-48e0-845a-4000739a4c82}" symbol="2" label="Borne hydrante (défaut)"/>
      </rule>
      <rule key="{1f0d6898-1638-4cff-b110-3bc69f5c9595}" label="Contrôle attributs">
        <rule filter="&quot;fk_status&quot; != 13002  AND  &quot;underground&quot;  is null" key="{cb3334db-d22a-4621-a53e-23e9dc2fae2d}" symbol="3" label="Genre d'hydrant (code erreur : 400) - à éliminer"/>
        <rule filter="&quot;fk_status&quot; != 13002  AND (&quot;fk_pressurezone&quot; is null OR &quot;fk_pressurezone&quot;  NOT IN (101,102,103,104,105,106,108,109,110,111,112,113,114,115,116,117,118,119,120,121,123,124,125,126,127,128,129,130,131,132,133,137,138,139,151,152,153,154,155,156,157,158,159,160,161,163,165,166,167,168))" key="{b74172e0-70d1-4b87-9720-57385d0e93cf}" symbol="4" label="Zone de pression non renseignée (code erreur : 401)"/>
        <rule key="{dbce4223-9a15-4aa5-9194-70474997a7bc}" label="Précision et calé SISOL (code erreur : 403 et 406)">
          <rule filter="&quot;fk_status&quot; != 13002 AND &quot;fk_precision&quot; NOT IN (1102,1104,1101)" key="{2e1b8292-d373-49df-942c-dda609afdffc}" symbol="5" label="Le champ précision ne doit pas être null ou inconnu (code erreur : 403)"/>
          <rule filter="&quot;fk_status&quot; != 13002 AND ((&quot;usr_cale_sisol&quot; = 't' AND &quot;fk_precision&quot; NOT IN (1102,1104)) OR (&quot;usr_cale_sisol&quot; = 'f' AND &quot;fk_precision&quot; IN (1102,1104)))" key="{b1d48cc3-0cf9-40e9-a9e0-4276847a9b8a}" symbol="6" label="Calé SISOL mais imprécis (code erreur : 406)"/>
        </rule>
        <rule key="{0160f767-db4d-4053-8ca8-3db7ac4e74b7}" label="Contrôle altitude et précision altimétrique">
          <rule filter="  &quot;fk_status&quot; != 13002 AND  ((&quot;z&quot; >0 AND  &quot;fk_precisionalti&quot; NOT IN (1121 , 11021)) OR ((&quot;z&quot; = 0 OR  &quot;z&quot; is null) AND &quot;fk_precisionalti&quot; != 102))" key="{c8803dd7-ca40-436b-bee0-9e516495fb00}" symbol="7" label="Contrôle précision altimétrique (code erreur 404)"/>
          <rule filter="  &quot;fk_status&quot; != 13002 AND  (&quot;z&quot;  !=0 AND &quot;z&quot;  &lt; 300 OR &quot;z&quot; > 1500)" key="{76fdc14b-9cfd-46c5-8c5d-1b24bc8c1f83}" symbol="8" label="Contrôle altitude incohérente &lt; 300 et > 1500  (code erreur : 425)"/>
          <rule filter="  &quot;fk_status&quot; != 13002 AND  &quot;z&quot;  = 0 AND  &quot;year&quot; > 2012 AND  &quot;fk_precision&quot; = 1102" key="{20fbbfa5-ed17-48bd-b7ec-f4078abe5d03}" symbol="9" label="Contrôle altitude (code erreur : 101)"/>
          <rule filter="  &quot;fk_status&quot; != 13002 AND &quot;z&quot;  = 0 AND  &quot;year&quot; > 2012" key="{ef417b8e-0d0d-4bef-8b2b-745852a22fbd}" symbol="10" label="Contrôle altitude (code erreur : 102)"/>
        </rule>
        <rule filter="&quot;fk_status&quot; IS NULL OR &quot;fk_status&quot;  NOT IN (103,1301,13002,13003)" key="{9eaf6ee1-be5b-47a2-ba39-254b4631e519}" symbol="11" label="Statut inconnu (code erreur : 407)"/>
        <rule filter="(&quot;year&quot; is null AND &quot;fk_status&quot; != 13002) OR (&quot;year&quot; != 0 AND &quot;year&quot; &lt; 1870 ) OR (&quot;year&quot; > year( now()) )" key="{083d970e-a6f3-4482-8c71-3e5d1254f0d6}" symbol="12" label="Contrôle année de pose (code erreur : 426)"/>
        <rule key="{d5198761-3ffa-44f2-bbf1-44a0f1bc58ca}" label="Contrôle année d'archive (code erreur : 427)">
          <rule filter="&quot;year_end&quot; &lt; &quot;year&quot; AND &quot;year_end&quot; > 0" key="{3f055cc4-5fd6-4c94-81fb-b05df0b9d9ed}" symbol="13" label="année archive plus petite que l'année de pose"/>
          <rule filter="&quot;year_end&quot; > 0 AND &quot;fk_status&quot; != 13002" key="{47e1f8c0-e3e2-40e1-ac91-c88bba43c7a6}" symbol="14" label="statut non archivé mais année d'archivage"/>
          <rule filter="&quot;year_end&quot; is null AND &quot;fk_status&quot; = 13002" key="{2a8c9f81-dbc7-4fbd-a535-fc719540e997}" symbol="15" label="statut archivé mais pas d''année d''archivage"/>
        </rule>
        <rule key="{5cff79c6-c2e4-48ef-8ab5-a3a3d258375a}" label="Contrôle modèle d'hydrant ( code erreur 415-416)">
          <rule filter="&quot;fk_status&quot; != 13002 AND  (&quot;fk_model_inf&quot;  NOT IN (102,73001,73002,73003,73004,73009,73010) OR &quot;fk_model_inf&quot;  is null )" key="{04cfffc0-7de5-4140-a97d-c3c9dc4c516f}" symbol="16" label="Modèle inférieur (code erreur - 415)"/>
          <rule filter="&quot;fk_status&quot; != 13002 AND  (&quot;fk_model_sup&quot;  NOT IN (102,7205,7207,7209,7210,7219,72001,72006,72007,72008,72010) OR &quot;fk_model_sup&quot;  is null )" key="{ba1d929e-0665-4a3a-9367-fb28ebe8e96b}" symbol="17" label="Modèle supérieur (code erreur - 416)"/>
        </rule>
      </rule>
    </rules>
    <symbols>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="227,26,28,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="227,26,28,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.143&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.1&#xd;&#xa;WHEN  $scale > 132 THEN 0.07&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
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
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.07&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.05&#xd;&#xa;WHEN  $scale > 132 THEN 0.035&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="1">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="227,26,28,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.75"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.143&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.1&#xd;&#xa;WHEN  $scale > 132 THEN 0.07&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="227,26,28,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.07&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.05&#xd;&#xa;WHEN  $scale > 132 THEN 0.035&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="10">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="11">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="12">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="13">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="14">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="15">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="16">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="2">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.6"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.07"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,0"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.05"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="3">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1.2"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="4">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="5">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="6">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="7">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="8">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="9">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="240,180,180,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="8"/>
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
    </symbols>
  </renderer-v2>
  <labeling type="simple"/>
  <customproperties>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="itemBrowserConnected" value="no"/>
    <property key="labeling" value="pal"/>
    <property key="labeling/addDirectionSymbol" value="false"/>
    <property key="labeling/angleOffset" value="0"/>
    <property key="labeling/blendMode" value="0"/>
    <property key="labeling/bufferBlendMode" value="0"/>
    <property key="labeling/bufferColorA" value="255"/>
    <property key="labeling/bufferColorB" value="255"/>
    <property key="labeling/bufferColorG" value="255"/>
    <property key="labeling/bufferColorR" value="255"/>
    <property key="labeling/bufferDraw" value="true"/>
    <property key="labeling/bufferJoinStyle" value="64"/>
    <property key="labeling/bufferNoFill" value="false"/>
    <property key="labeling/bufferSize" value="0.6"/>
    <property key="labeling/bufferSizeInMapUnits" value="false"/>
    <property key="labeling/bufferSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/bufferSizeMapUnitMinScale" value="0"/>
    <property key="labeling/bufferSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/bufferTransp" value="0"/>
    <property key="labeling/centroidInside" value="false"/>
    <property key="labeling/centroidWhole" value="false"/>
    <property key="labeling/dataDefined/PositionX" value="0~~0~~~~label_1_x"/>
    <property key="labeling/dataDefined/PositionY" value="0~~0~~~~label_1_y"/>
    <property key="labeling/dataDefined/Rotation" value="0~~0~~~~label_1_rotation"/>
    <property key="labeling/decimals" value="0"/>
    <property key="labeling/displayAll" value="true"/>
    <property key="labeling/dist" value="1.8"/>
    <property key="labeling/distInMapUnits" value="false"/>
    <property key="labeling/distMapUnitMaxScale" value="0"/>
    <property key="labeling/distMapUnitMinScale" value="0"/>
    <property key="labeling/distMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/drawLabels" value="true"/>
    <property key="labeling/enabled" value="true"/>
    <property key="labeling/fieldName" value="CASE WHEN  &quot;underground&quot; = 't' THEN 'HS ' ELSE 'BH ' END || &quot;identification&quot; "/>
    <property key="labeling/fitInPolygonOnly" value="false"/>
    <property key="labeling/fontBold" value="false"/>
    <property key="labeling/fontCapitals" value="0"/>
    <property key="labeling/fontFamily" value="Arial"/>
    <property key="labeling/fontItalic" value="false"/>
    <property key="labeling/fontLetterSpacing" value="0"/>
    <property key="labeling/fontLimitPixelSize" value="false"/>
    <property key="labeling/fontMaxPixelSize" value="10000"/>
    <property key="labeling/fontMinPixelSize" value="3"/>
    <property key="labeling/fontSize" value="9"/>
    <property key="labeling/fontSizeInMapUnits" value="false"/>
    <property key="labeling/fontSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/fontSizeMapUnitMinScale" value="0"/>
    <property key="labeling/fontSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/fontStrikeout" value="false"/>
    <property key="labeling/fontUnderline" value="false"/>
    <property key="labeling/fontWeight" value="50"/>
    <property key="labeling/fontWordSpacing" value="0"/>
    <property key="labeling/formatNumbers" value="false"/>
    <property key="labeling/isExpression" value="true"/>
    <property key="labeling/labelOffsetInMapUnits" value="true"/>
    <property key="labeling/labelOffsetMapUnitMaxScale" value="0"/>
    <property key="labeling/labelOffsetMapUnitMinScale" value="0"/>
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
    <property key="labeling/placementFlags" value="0"/>
    <property key="labeling/plussign" value="false"/>
    <property key="labeling/predefinedPositionOrder" value="TR,TL,BR,BL,R,L,TSR,BSR"/>
    <property key="labeling/preserveRotation" value="true"/>
    <property key="labeling/previewBkgrdColor" value="#ffffff"/>
    <property key="labeling/priority" value="5"/>
    <property key="labeling/quadOffset" value="4"/>
    <property key="labeling/repeatDistance" value="0"/>
    <property key="labeling/repeatDistanceMapUnitMaxScale" value="0"/>
    <property key="labeling/repeatDistanceMapUnitMinScale" value="0"/>
    <property key="labeling/repeatDistanceMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/repeatDistanceUnit" value="1"/>
    <property key="labeling/reverseDirectionSymbol" value="false"/>
    <property key="labeling/rightDirectionSymbol" value=">"/>
    <property key="labeling/scaleMax" value="1001"/>
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
    <property key="labeling/shadowOffsetMapUnitMaxScale" value="0"/>
    <property key="labeling/shadowOffsetMapUnitMinScale" value="0"/>
    <property key="labeling/shadowOffsetMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shadowOffsetUnits" value="1"/>
    <property key="labeling/shadowRadius" value="1.5"/>
    <property key="labeling/shadowRadiusAlphaOnly" value="false"/>
    <property key="labeling/shadowRadiusMapUnitMaxScale" value="0"/>
    <property key="labeling/shadowRadiusMapUnitMinScale" value="0"/>
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
    <property key="labeling/shapeBorderWidthMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeBorderWidthMapUnitMinScale" value="0"/>
    <property key="labeling/shapeBorderWidthMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeBorderWidthUnits" value="1"/>
    <property key="labeling/shapeDraw" value="false"/>
    <property key="labeling/shapeFillColorA" value="255"/>
    <property key="labeling/shapeFillColorB" value="255"/>
    <property key="labeling/shapeFillColorG" value="255"/>
    <property key="labeling/shapeFillColorR" value="255"/>
    <property key="labeling/shapeJoinStyle" value="64"/>
    <property key="labeling/shapeOffsetMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeOffsetMapUnitMinScale" value="0"/>
    <property key="labeling/shapeOffsetMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeOffsetUnits" value="1"/>
    <property key="labeling/shapeOffsetX" value="0"/>
    <property key="labeling/shapeOffsetY" value="0"/>
    <property key="labeling/shapeRadiiMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeRadiiMapUnitMinScale" value="0"/>
    <property key="labeling/shapeRadiiMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeRadiiUnits" value="1"/>
    <property key="labeling/shapeRadiiX" value="0"/>
    <property key="labeling/shapeRadiiY" value="0"/>
    <property key="labeling/shapeRotation" value="0"/>
    <property key="labeling/shapeRotationType" value="0"/>
    <property key="labeling/shapeSVGFile" value=""/>
    <property key="labeling/shapeSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeSizeMapUnitMinScale" value="0"/>
    <property key="labeling/shapeSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeSizeType" value="0"/>
    <property key="labeling/shapeSizeUnits" value="1"/>
    <property key="labeling/shapeSizeX" value="0"/>
    <property key="labeling/shapeSizeY" value="0"/>
    <property key="labeling/shapeTransparency" value="0"/>
    <property key="labeling/shapeType" value="0"/>
    <property key="labeling/substitutions" value="&lt;substitutions/>"/>
    <property key="labeling/textColorA" value="255"/>
    <property key="labeling/textColorB" value="28"/>
    <property key="labeling/textColorG" value="26"/>
    <property key="labeling/textColorR" value="227"/>
    <property key="labeling/textTransp" value="0"/>
    <property key="labeling/upsidedownLabels" value="0"/>
    <property key="labeling/useSubstitutions" value="false"/>
    <property key="labeling/wrapChar" value=""/>
    <property key="labeling/xOffset" value="0"/>
    <property key="labeling/xQuadOffset" value="0"/>
    <property key="labeling/yOffset" value="0"/>
    <property key="labeling/yQuadOffset" value="0"/>
    <property key="labeling/zIndex" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerTransparency>0</layerTransparency>
  <displayfield>id</displayfield>
  <label>0</label>
  <labelattributes>
    <label fieldname="" text="Label"/>
    <family fieldname="" name="Ubuntu"/>
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
    <DiagramCategory penColor="#000000" labelPlacementMethod="XHeight" penWidth="0" diagramOrientation="Up" sizeScale="0,0,0,0,0,0" minimumSize="0" barWidth="5" penAlpha="255" maxScaleDenominator="10001" backgroundColor="#ffffff" transparency="0" width="15" scaleDependency="Area" backgroundAlpha="255" angleOffset="1440" scaleBasedVisibility="1" enabled="0" height="15" lineSizeScale="0,0,0,0,0,0" sizeType="MM" lineSizeType="MM" minScaleDenominator="1">
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
  <annotationform>../qgis_v2</annotationform>
  <aliases>
    <alias field="id" index="0" name="ID"/>
    <alias field="identification" index="1" name="N° *"/>
    <alias field="fk_distributor" index="2" name="Entretien à charge de"/>
    <alias field="fk_status" index="3" name="Statut *"/>
    <alias field="fk_provider" index="4" name="Fournisseur fût"/>
    <alias field="fk_precision" index="5" name="Précision planimétrique *"/>
    <alias field="fk_precisionalti" index="6" name="Précision altimétrique *"/>
    <alias field="year" index="7" name="Année de pose"/>
    <alias field="model" index="8" name="Modèle"/>
    <alias field="underground" index="9" name="Hydrant souterrain"/>
    <alias field="altitude" index="10" name="Altitude"/>
    <alias field="marked" index="11" name="Marqué"/>
    <alias field="remark" index="12" name="Remarque"/>
    <alias field="pressure_static" index="13" name="Pression à débit nul [bar]"/>
    <alias field="pressure_dynamic" index="14" name="Pression [bar]"/>
    <alias field="flow" index="15" name="Débit mesuré [l/min]"/>
    <alias field="observation_date" index="16" name="Date de mesure"/>
    <alias field="observation_source" index="17" name=""/>
    <alias field="fk_node" index="18" name="ID noeud"/>
    <alias field="fk_district" index="19" name="Commune"/>
    <alias field="fk_pressurezone" index="20" name="Zone de pression"/>
    <alias field="fk_printmap" index="21" name="N° de plan"/>
    <alias field="_district" index="22" name="Commune (auto)"/>
    <alias field="_pressurezone" index="23" name="Zone de pression (auto)"/>
    <alias field="_printmaps" index="24" name=""/>
    <alias field="geometry" index="25" name=""/>
    <alias field="geometry_alt1" index="26" name=""/>
    <alias field="geometry_alt2" index="27" name=""/>
    <alias field="_geometry_alt1_used" index="28" name="Géo-schématique"/>
    <alias field="_geometry_alt2_used" index="29" name=""/>
    <alias field="label_1_visible" index="30" name=""/>
    <alias field="label_1_x" index="31" name=""/>
    <alias field="label_1_y" index="32" name=""/>
    <alias field="label_1_rotation" index="33" name=""/>
    <alias field="label_1_text" index="34" name=""/>
    <alias field="label_2_visible" index="35" name=""/>
    <alias field="label_2_x" index="36" name=""/>
    <alias field="label_2_y" index="37" name=""/>
    <alias field="label_2_rotation" index="38" name=""/>
    <alias field="label_2_text" index="39" name=""/>
    <alias field="year_end" index="40" name="Année de fin"/>
    <alias field="fk_folder" index="41" name="N° de chantier (zone)"/>
    <alias field="fk_model_inf" index="42" name="Modèle (partie inférieure) *"/>
    <alias field="fk_model_sup" index="43" name="Modèle (partie supérieur) *"/>
    <alias field="fk_object_reference" index="44" name="Niveau"/>
    <alias field="usr_fk_street_address" index="45" name="Adresse"/>
    <alias field="usr_location" index="46" name="Description de l'emplacement"/>
    <alias field="usr_cale_sisol" index="47" name="Calé SISOL"/>
    <alias field="usr_lorno" index="48" name="Equipé LORNO"/>
    <alias field="usr_aec" index="49" name="AEC"/>
    <alias field="fk_output" index="50" name="Sorties *"/>
    <alias field="usr_fk_hydrant_socket" index="51" name="Prise *"/>
    <alias field="usr_fk_hydrant_connection" index="52" name="Assemblage"/>
    <alias field="usr_fk_hydrant_height" index="53" name="Hauteur fût"/>
    <alias field="usr_fk_length_extend" index="54" name="L. prolonge"/>
    <alias field="usr_fk_type_valve_hydrant" index="55" name="Type de soupape"/>
    <alias field="usr_fk_diam_valve_hydrant" index="56" name="Diamètre de soupape"/>
    <alias field="usr_fk_diam_elbow" index="57" name="Diamètre du coude"/>
    <alias field="usr_excavation_depth" index="58" name="Profondeur fouille"/>
    <alias field="usr_dist_valve" index="59" name="Distance vanne"/>
    <alias field="usr_fk_provider_sup" index="60" name="Fournisseur"/>
    <alias field="usr_no_folder" index="61" name="N° de chantier"/>
    <alias field="fk_pipe" index="62" name="ID conduite"/>
    <alias field="create_date" index="63" name=""/>
    <alias field="last_date" index="64" name=""/>
    <alias field="last_user" index="65" name=""/>
    <alias field="deleted" index="66" name=""/>
    <alias field="model_sup_fk_provider" index="67" name="Fournisseur modèle sup."/>
    <alias field="model_inf_fk_provider" index="68" name="Fournisseur fût"/>
    <alias field="fk_surveypoint" index="69" name=""/>
    <alias field="z" index="70" name="Coord Z"/>
    <alias field="image_hydrant" index="71" name="Illustration"/>
    <alias field="image_zpression" index="72" name="->"/>
    <alias field="aec" index="73" name="AEC"/>
    <alias field="lorno" index="74" name="Lorno"/>
    <alias field="Lien affaire chantier" index="75" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions default="0">
    <actionsetting showInAttributeTable="1" action="import sys&#xd;&#xa;sys.var=[[%id%]]&#xd;&#xa;execfile(u'//geodata.lausanne.ch/data/QGIS_projet/eauservice/qwat_lausanne/action/action_qgis_archive_pt_reseau_prod.py'.encode(&quot;utf-8&quot;))" icon="" capture="0" type="1" name="Archiver l'hydrant" shortTitle=""/>
    <actionsetting showInAttributeTable="1" action="import sys&#xd;&#xa;sys.var=[[%id%]]&#xd;&#xa;execfile(u'//geodata.lausanne.ch/data/QGIS_projet/eauservice/qwat_lausanne/action/action_qgis_reprise_alt.py'.encode(&quot;utf-8&quot;))" icon="" capture="0" type="1" name="Reprise des infos de la mesure (altitude)" shortTitle=""/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="&quot;observation_date&quot;" sortOrder="1">
    <columns>
      <column width="-1" hidden="1" type="field" name="marked"/>
      <column width="-1" hidden="1" type="field" name="observation_source"/>
      <column width="-1" hidden="1" type="field" name="geometry_alt1"/>
      <column width="-1" hidden="1" type="field" name="geometry_alt2"/>
      <column width="-1" hidden="1" type="field" name="_geometry_alt2_used"/>
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
      <column width="-1" hidden="0" type="field" name="id"/>
      <column width="-1" hidden="0" type="field" name="identification"/>
      <column width="-1" hidden="0" type="field" name="fk_distributor"/>
      <column width="-1" hidden="0" type="field" name="fk_status"/>
      <column width="-1" hidden="0" type="field" name="fk_provider"/>
      <column width="-1" hidden="0" type="field" name="fk_precision"/>
      <column width="-1" hidden="0" type="field" name="fk_precisionalti"/>
      <column width="-1" hidden="0" type="field" name="year"/>
      <column width="-1" hidden="0" type="field" name="model"/>
      <column width="-1" hidden="0" type="field" name="underground"/>
      <column width="-1" hidden="0" type="field" name="altitude"/>
      <column width="-1" hidden="0" type="field" name="remark"/>
      <column width="-1" hidden="0" type="field" name="pressure_static"/>
      <column width="-1" hidden="0" type="field" name="pressure_dynamic"/>
      <column width="-1" hidden="0" type="field" name="flow"/>
      <column width="187" hidden="0" type="field" name="observation_date"/>
      <column width="-1" hidden="0" type="field" name="fk_node"/>
      <column width="-1" hidden="0" type="field" name="fk_district"/>
      <column width="-1" hidden="0" type="field" name="fk_pressurezone"/>
      <column width="-1" hidden="0" type="field" name="fk_printmap"/>
      <column width="-1" hidden="0" type="field" name="_district"/>
      <column width="-1" hidden="0" type="field" name="_pressurezone"/>
      <column width="-1" hidden="0" type="field" name="_printmaps"/>
      <column width="-1" hidden="0" type="field" name="_geometry_alt1_used"/>
      <column width="-1" hidden="0" type="field" name="year_end"/>
      <column width="-1" hidden="0" type="field" name="fk_folder"/>
      <column width="-1" hidden="0" type="field" name="fk_model_inf"/>
      <column width="-1" hidden="0" type="field" name="fk_model_sup"/>
      <column width="-1" hidden="0" type="field" name="fk_object_reference"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_street_address"/>
      <column width="-1" hidden="0" type="field" name="usr_location"/>
      <column width="-1" hidden="0" type="field" name="usr_cale_sisol"/>
      <column width="-1" hidden="0" type="field" name="usr_lorno"/>
      <column width="-1" hidden="0" type="field" name="usr_aec"/>
      <column width="-1" hidden="0" type="field" name="fk_output"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_hydrant_socket"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_hydrant_connection"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_hydrant_height"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_length_extend"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_type_valve_hydrant"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_diam_valve_hydrant"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_diam_elbow"/>
      <column width="-1" hidden="0" type="field" name="usr_excavation_depth"/>
      <column width="-1" hidden="0" type="field" name="usr_dist_valve"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_provider_sup"/>
      <column width="-1" hidden="0" type="field" name="usr_no_folder"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" hidden="0" type="field" name="geometry"/>
      <column width="-1" hidden="0" type="field" name="fk_surveypoint"/>
      <column width="-1" hidden="0" type="field" name="z"/>
      <column width="-1" hidden="0" type="field" name="image_hydrant"/>
      <column width="-1" hidden="0" type="field" name="image_zpression"/>
      <column width="-1" hidden="0" type="field" name="aec"/>
      <column width="-1" hidden="0" type="field" name="lorno"/>
      <column width="-1" hidden="0" type="field" name="fk_pipe"/>
      <column width="-1" hidden="0" type="field" name="create_date"/>
      <column width="-1" hidden="0" type="field" name="last_date"/>
      <column width="-1" hidden="0" type="field" name="last_user"/>
      <column width="-1" hidden="0" type="field" name="deleted"/>
      <column width="-1" hidden="0" type="field" name="Lien affaire chantier"/>
      <column width="-1" hidden="0" type="field" name="model_sup_fk_provider"/>
      <column width="-1" hidden="0" type="field" name="model_inf_fk_provider"/>
    </columns>
  </attributetableconfig>
  <editform>../qgis_v2/ui_forms/hydrant.ui</editform>
  <editforminit>my_form_open</editforminit>
  <editforminitcodesource>1</editforminitcodesource>
  <editforminitfilepath>//geodata.lausanne.ch/data/QGIS_projet/eauservice/qwat_lausanne/function/init_hydrant.py</editforminitfilepath>
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
      <attributeEditorContainer showLabel="0" visibilityExpressionEnabled="0" visibilityExpression="" name="image" groupBox="1" columnCount="1">
        <attributeEditorField showLabel="0" index="72" name="image_zpression"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" index="20" name="fk_pressurezone"/>
      <attributeEditorField showLabel="1" index="19" name="fk_district"/>
      <attributeEditorField showLabel="1" index="45" name="usr_fk_street_address"/>
      <attributeEditorField showLabel="1" index="46" name="usr_location"/>
      <attributeEditorContainer showLabel="0" visibilityExpressionEnabled="0" visibilityExpression="" name="Localisation" groupBox="1" columnCount="2">
        <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="1">
          <attributeEditorField showLabel="1" index="1" name="identification"/>
          <attributeEditorField showLabel="1" index="0" name="id"/>
          <attributeEditorField showLabel="1" index="9" name="underground"/>
          <attributeEditorField showLabel="1" index="61" name="usr_no_folder"/>
          <attributeEditorField showLabel="1" index="75" name="Lien affaire chantier"/>
        </attributeEditorContainer>
        <attributeEditorField showLabel="0" index="71" name="image_hydrant"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="7" name="year"/>
        <attributeEditorField showLabel="1" index="40" name="year_end"/>
        <attributeEditorField showLabel="1" index="3" name="fk_status"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Géométrie" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="5" name="fk_precision"/>
        <attributeEditorField showLabel="1" index="47" name="usr_cale_sisol"/>
        <attributeEditorField showLabel="1" index="6" name="fk_precisionalti"/>
        <attributeEditorField showLabel="1" index="70" name="z"/>
        <attributeEditorField showLabel="1" index="18" name="fk_node"/>
        <attributeEditorField showLabel="1" index="62" name="fk_pipe"/>
        <attributeEditorField showLabel="1" index="28" name="_geometry_alt1_used"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Partie supérieure" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="43" name="fk_model_sup"/>
        <attributeEditorField showLabel="1" index="67" name="model_sup_fk_provider"/>
        <attributeEditorField showLabel="1" index="50" name="fk_output"/>
        <attributeEditorField showLabel="1" index="51" name="usr_fk_hydrant_socket"/>
        <attributeEditorField showLabel="1" index="52" name="usr_fk_hydrant_connection"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Partie inférieure" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="42" name="fk_model_inf"/>
        <attributeEditorField showLabel="1" index="68" name="model_inf_fk_provider"/>
        <attributeEditorField showLabel="1" index="53" name="usr_fk_hydrant_height"/>
        <attributeEditorField showLabel="1" index="54" name="usr_fk_length_extend"/>
        <attributeEditorField showLabel="1" index="55" name="usr_fk_type_valve_hydrant"/>
        <attributeEditorField showLabel="1" index="56" name="usr_fk_diam_valve_hydrant"/>
        <attributeEditorField showLabel="1" index="57" name="usr_fk_diam_elbow"/>
        <attributeEditorField showLabel="1" index="58" name="usr_excavation_depth"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Pression" groupBox="1" columnCount="2">
        <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="1">
          <attributeEditorField showLabel="1" index="16" name="observation_date"/>
          <attributeEditorField showLabel="1" index="15" name="flow"/>
          <attributeEditorField showLabel="1" index="14" name="pressure_dynamic"/>
        </attributeEditorContainer>
        <attributeEditorField showLabel="1" index="13" name="pressure_static"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Détail" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="48" name="usr_lorno"/>
        <attributeEditorField showLabel="1" index="49" name="usr_aec"/>
        <attributeEditorField showLabel="1" index="59" name="usr_dist_valve"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" index="12" name="remark"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Entretien" groupBox="0" columnCount="1">
      <attributeEditorRelation showLinkButton="1" relation="relation_hydrant_fiche_entretien" showLabel="1" showUnlinkButton="1" name="relation_hydrant_fiche_entretien"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <widgets>
    <widget name="model_inf_provider_value_fr">
      <config/>
    </widget>
    <widget name="model_sup_provider_value_fr">
      <config/>
    </widget>
    <widget name="pipe_fk_district">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_fk_pressurezone">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="relation_hydrant_fiche_entretien">
      <config/>
    </widget>
    <widget name="relation_hydrant_mesures">
      <config/>
    </widget>
    <widget name="status_active">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="status_code_sire">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="status_description_en">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="status_description_fr">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="status_description_ro">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="status_short_en">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="status_short_fr">
      <config/>
    </widget>
    <widget name="status_short_ro">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="status_value_en">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="status_value_fr">
      <config/>
    </widget>
    <widget name="status_value_ro">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="status_vl_active">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
  </widgets>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <defaults>
    <default field="id" expression=""/>
    <default field="identification" expression=""/>
    <default field="fk_distributor" expression=""/>
    <default field="fk_status" expression="103"/>
    <default field="fk_provider" expression=""/>
    <default field="fk_precision" expression="1104"/>
    <default field="fk_precisionalti" expression="CASE WHEN  z($geometry) > 0  THEN 11021&#xa;ELSE 102 END"/>
    <default field="year" expression="if (&quot;year&quot; is NULL, year(now()),NULL)"/>
    <default field="model" expression=""/>
    <default field="underground" expression="'f'"/>
    <default field="altitude" expression=""/>
    <default field="marked" expression=""/>
    <default field="remark" expression=""/>
    <default field="pressure_static" expression=""/>
    <default field="pressure_dynamic" expression=""/>
    <default field="flow" expression=""/>
    <default field="observation_date" expression=""/>
    <default field="observation_source" expression=""/>
    <default field="fk_node" expression=""/>
    <default field="fk_district" expression=""/>
    <default field="fk_pressurezone" expression=""/>
    <default field="fk_printmap" expression=""/>
    <default field="_district" expression=""/>
    <default field="_pressurezone" expression=""/>
    <default field="_printmaps" expression=""/>
    <default field="geometry" expression="''"/>
    <default field="geometry_alt1" expression="''"/>
    <default field="geometry_alt2" expression="''"/>
    <default field="_geometry_alt1_used" expression="'f'"/>
    <default field="_geometry_alt2_used" expression=""/>
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
    <default field="year_end" expression=" if( &quot;fk_status&quot; = 13002, year(now()), NULL)"/>
    <default field="fk_folder" expression=""/>
    <default field="fk_model_inf" expression=""/>
    <default field="fk_model_sup" expression=""/>
    <default field="fk_object_reference" expression=""/>
    <default field="usr_fk_street_address" expression="-1"/>
    <default field="usr_location" expression=""/>
    <default field="usr_cale_sisol" expression="'t'"/>
    <default field="usr_lorno" expression="'f'"/>
    <default field="usr_aec" expression="'f'"/>
    <default field="fk_output" expression=""/>
    <default field="usr_fk_hydrant_socket" expression=""/>
    <default field="usr_fk_hydrant_connection" expression="102"/>
    <default field="usr_fk_hydrant_height" expression=""/>
    <default field="usr_fk_length_extend" expression=""/>
    <default field="usr_fk_type_valve_hydrant" expression=""/>
    <default field="usr_fk_diam_valve_hydrant" expression=""/>
    <default field="usr_fk_diam_elbow" expression=""/>
    <default field="usr_excavation_depth" expression=""/>
    <default field="usr_dist_valve" expression=""/>
    <default field="usr_fk_provider_sup" expression=""/>
    <default field="usr_no_folder" expression=""/>
    <default field="fk_pipe" expression=""/>
    <default field="create_date" expression=""/>
    <default field="last_date" expression=""/>
    <default field="last_user" expression=""/>
    <default field="deleted" expression=""/>
    <default field="model_sup_fk_provider" expression=""/>
    <default field="model_inf_fk_provider" expression=""/>
    <default field="fk_surveypoint" expression=""/>
    <default field="z" expression=" z( $geometry )"/>
    <default field="image_hydrant" expression=""/>
    <default field="image_zpression" expression=""/>
    <default field="aec" expression=""/>
    <default field="lorno" expression=""/>
    <default field="Lien affaire chantier" expression=""/>
  </defaults>
  <previewExpression>COALESCE( "id", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>0</layerGeometryType>
</qgis>
