<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.13" simplifyAlgorithm="0" minimumScale="0" maximumScale="10001" simplifyDrawingHints="0" minLabelScale="0" maxLabelScale="1e+08" simplifyDrawingTol="1" readOnly="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="1" simplifyLocal="1" scaleBasedLabelVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="id">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_parent">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_function">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" &quot;fk_status&quot; = 1301 AND  &quot;fk_function&quot; != 103 OR  &quot;fk_status&quot; != 1301 " Layer="vl_pipe_function20130304110005186" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_installmethod">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;fk_installmethod&quot; IN (4202,4208) AND  &quot;usr_fk_type_tube&quot; is not null ) OR (&quot;usr_fk_type_tube&quot; is null AND &quot;fk_installmethod&quot; NOT IN (4202,4208) )" Layer="vl_pipe_installmethod20130304110005209" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire, par défaut &quot;En fouille&quot; / Si la conduite est &quot;tubée&quot; ou &quot;isolée et tubée&quot;, l'info du tubage doit être renseignée" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="fk_material">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_distributor">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_precision">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;usr_cale_sisol&quot;  =  't'  AND  &quot;fk_precision&quot;  IN (1102, 1104)) OR (&quot;usr_cale_sisol&quot;  =  'f' AND &quot;fk_precision&quot;  IN (1101))" Layer="vl_precision20130304110011372" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire, si calé SISOL, précis ou reporté, sinon imprécis" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_bedding">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_protection">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_status">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' OR &quot;id&quot; = 13001" UseCompleter="0" fieldEditable="1" Key="id" constraint="( &quot;fk_status&quot; = 13002 AND year_end is not null ) OR (&quot;fk_status&quot; != 13002 AND year_end is null )" Layer="vl_status20130304110011436" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_watertype">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="year">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="(((&quot;year&quot; > 1860 AND  &quot;year&quot;  &lt;=  year( now() ))  OR ( &quot;year&quot; =0)) AND  &quot;fk_status&quot; IN (103, 1301))   OR ((&quot;year&quot; is null OR &quot;year&quot; is not null) AND  &quot;fk_status&quot; NOT IN (103, 1301) )" UseHtml="0" labelOnTop="0" constraintDescription="Champ obligatoire, année doit être entre 1860 et l'année actuel ou 0 si inconnu" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="tunnel_or_bridge">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="pressure_nominal">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="folder">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="remark">
      <widgetv2config IsMultiline="1" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="1" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="_valve_count">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="_valve_closed">
      <widgetv2config fieldEditable="0" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="schema_force_visible">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_1_visible">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_1_text">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_2_visible">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="label_2_text">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="fk_node_a">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="fk_node_b">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_district">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="id" constraint=" &quot;fk_district&quot; NOT IN (396,397,399)" Layer="district20130304110004764" Value="name" labelOnTop="0" constraintDescription="Choisir une commune active" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_pressurezone">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;usr_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="&quot;fk_pressurezone&quot; NOT IN (103,107,122,130,134,135,136,140,141)" Layer="pressurezone20130417133612105" Value="name" labelOnTop="0" constraintDescription="Choisir une zone de pression active" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_printmap">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="_length2d">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="_length3d">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_diff_elevation">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
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
    <edittype widgetv2type="CheckBox" name="_geometry_alt1_used">
      <widgetv2config fieldEditable="0" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_geometry_alt2_used">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="geometry">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="geometry_alt1">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="geometry_alt2">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_folder">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="year_end">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="( &quot;fk_status&quot;  = 13002 AND &quot;year_end&quot; > 1860 AND  &quot;year_end&quot; &lt;=   year(now()) AND &quot;year_end&quot;  >=  coalesce(&quot;year&quot;,0) OR &quot;year_end&quot; = 0 )  OR (&quot;fk_status&quot;  != 13002 AND  &quot;year_end&quot; is null)" UseHtml="0" labelOnTop="0" constraintDescription="L'année d'archive doit être égal ou supérieur à l'année de pose ou égal à 0 si inconnu" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="year_rehabilitation">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint=" ( &quot;year_rehabilitation&quot; >=1860 AND  &quot;year_rehabilitation&quot; &lt;=  year(  now() ) AND  &quot;usr_fk_type_rehabilitation&quot;  is not null ) OR (  &quot;year_rehabilitation&quot;  is null AND  &quot;usr_fk_type_rehabilitation&quot;  is null ) OR (&quot;usr_fk_type_rehabilitation&quot;  is not null  AND &quot;year_rehabilitation&quot; = 0)" UseHtml="0" labelOnTop="0" constraintDescription="Si la conduite est réhabilitée, une année doit être mentionnée" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_cale_sisol">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint=" (&quot;usr_cale_sisol&quot;  = 't' AND  &quot;fk_precision&quot;  IN (1102, 1104)) OR (&quot;usr_cale_sisol&quot;  = 'f' AND &quot;fk_precision&quot;  IN (102,1101))" CheckedState="t" labelOnTop="0" constraintDescription="Champ obligatoire, si calé SISOL, l'objet est précis ou reporté, sinon imprécis" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_pipe_connection">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" &quot;usr_fk_pipe_connection&quot; != 103" Layer="usr_pipe_connection20160510153009765" Value="value_fr" labelOnTop="0" constraintDescription="Le raccord doit être renseigné et ne peut être nul" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_cathodic_protection">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;fk_function&quot; NOT IN (4101,4105) AND  &quot;usr_fk_cathodic_protection&quot;  is null  OR &quot;usr_fk_cathodic_protection&quot; = 46001)  &#xd;&#xa; OR (&quot;fk_function&quot; IN (4101,4105) AND  ( &quot;usr_fk_cathodic_protection&quot;  is not null OR  &quot;usr_fk_cathodic_protection&quot; is null) )" Layer="usr_pipe_catho_protection20160510153009637" Value="value_fr" labelOnTop="0" constraintDescription="attribut à renseigner uniquement pour les conduites de distribution et de transport" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_type_rehabilitation">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" ( &quot;year_rehabilitation&quot; >=1860 AND  &quot;year_rehabilitation&quot; &lt;=  year(  now() ) AND  &quot;usr_fk_type_rehabilitation&quot;  is not null ) OR (  &quot;year_rehabilitation&quot;  is null AND  &quot;usr_fk_type_rehabilitation&quot;  is null ) OR (&quot;usr_fk_type_rehabilitation&quot;  is not null  AND &quot;year_rehabilitation&quot; = 0)" Layer="usr_pipe_rehab20160510153010083" Value="value_fr" labelOnTop="0" constraintDescription="Si la conduite est réhabilitée, une année doit être mentionnée" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_aec">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_backwater">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="( &quot;usr_fk_backwater&quot; is not null AND &quot;fk_function&quot;  IN (4101,4105) AND   &quot;fk_status&quot; = 1301 AND &quot;year&quot; >= 2017 ) OR &#xd;&#xa;( (&quot;usr_fk_backwater&quot; is not null OR &quot;usr_fk_backwater&quot; is null) AND &quot;fk_function&quot;  IN (4101,4105) AND (&quot;year&quot; &lt;2017 OR &quot;year&quot; = 0)) OR&#xd;&#xa;(&quot;usr_fk_backwater&quot; is null AND &quot;fk_function&quot;  NOT IN (4101,4105)) OR &#xd;&#xa;((&quot;usr_fk_backwater&quot; is not null OR &quot;usr_fk_backwater&quot; is null) AND &quot;fk_function&quot;  IN (4101,4105) AND &quot;fk_status&quot; != 1301)" Layer="usr_pipe_backwater20160510153009583" Value="value_fr" labelOnTop="0" constraintDescription="obligatoire pour les conduites de distribution et de transport en service et datant de 2017 et plus." AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_affgo_archivage">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="( &quot;fk_status&quot; = 13002 AND  &quot;usr_affgo_archivage&quot; is not null ) OR (&quot;fk_status&quot; = 13002 AND  &quot;usr_affgo_archivage&quot; is null AND &quot;fk_function&quot; NOT IN (4101,4102,4105,41003)) OR (&quot;fk_status&quot; != 13002 AND &quot;usr_affgo_archivage&quot; is null )" UseHtml="0" labelOnTop="0" constraintDescription="Si la conduite est archivé, le champ est obligatoire" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_note_arp">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (  &quot;usr_year_arp&quot;  >=1860 AND  &quot;usr_year_arp&quot;  &lt;=  year(  now() ) AND  &quot;usr_fk_note_arp&quot;  is not null  AND &quot;usr_fk_note_arp&quot;  &lt;> 48002) OR (  &quot;usr_year_arp&quot;   is null AND  (&quot;usr_fk_note_arp&quot;  is null  OR &quot;usr_fk_note_arp&quot;  = 48002)) OR ( &quot;usr_fk_note_arp&quot;  is not null  AND &quot;usr_year_arp&quot; = 0 AND &quot;usr_fk_note_arp&quot;  &lt;> 48002)" Layer="usr_pipe_note_arp20160510153009989" Value="value_fr" labelOnTop="0" constraintDescription="Si une note ARP est définie, une date doite être mentionnée (0 si l'année est inconnue)" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_year_arp">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint=" (  &quot;usr_year_arp&quot;  >=1860 AND  &quot;usr_year_arp&quot;  &lt;=  year(  now() ) AND  &quot;usr_fk_note_arp&quot;  is not null  AND &quot;usr_fk_note_arp&quot;  &lt;> 48002) OR&#xd;&#xa; (  &quot;usr_year_arp&quot;   is null AND  (&quot;usr_fk_note_arp&quot;  is null  OR &quot;usr_fk_note_arp&quot;  = 48002)) OR&#xd;&#xa; ( &quot;usr_fk_note_arp&quot;  is not null  AND &quot;usr_year_arp&quot; = 0 AND &quot;usr_fk_note_arp&quot;  &lt;> 48002)" UseHtml="0" labelOnTop="0" constraintDescription="Si une note ARP est définie, une date doite être mentionnée (0 si l'année est inconnue)" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_type_tube">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;fk_installmethod&quot; IN (4202,4208) AND  &quot;usr_fk_type_tube&quot; is not null ) OR (&quot;usr_fk_type_tube&quot; is null AND &quot;fk_installmethod&quot; NOT IN (4202,4208) )" Layer="usr_pipe_tube20160510153010166" Value="value_fr" labelOnTop="0" constraintDescription="Si la conduite est &quot;tubée&quot; ou &quot;isolée et tubée&quot;, l'info du tubage doit être renseignée" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_no_servitude">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_undersized">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;fk_function&quot; NOT IN (4101,4105) AND &quot;usr_fk_undersized&quot; is null )  OR (&quot;fk_function&quot; IN (4101,4105) AND  (&quot;usr_fk_undersized&quot; is not null OR &quot;usr_fk_undersized&quot; is null) )" Layer="usr_pipe_undersized20160510153010238" Value="value_fr" labelOnTop="0" constraintDescription="attribut renseigné uniquement pour les conduites de distribution et de transport" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_precisionalti">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (nb_vertex_z( $geometry ) > 0 AND  &quot;fk_precisionalti&quot; = 11021 ) OR (nb_vertex_z( $geometry ) = 0 AND  &quot;fk_precisionalti&quot; = 102 )" Layer="vl_precisionalti20131211161429510" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire, Précis si au moins un vertex de la conduite possède une alitude / Imprécis si aucune altitude existe (=0)" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="RelationReference" name="usr_fk_street_address">
      <widgetv2config OrderByValue="1" fieldEditable="1" AllowAddFeatures="0" ShowForm="0" Relation="relation_pipe_street" ReadOnly="0" constraint="" MapIdentification="0" labelOnTop="0" constraintDescription="" notNull="0" AllowNULL="1">
        <FilterFields ChainFilters="0">
          <field name="ville"/>
        </FilterFields>
      </widgetv2config>
    </edittype>
    <edittype widgetv2type="UniqueValues" name="usr_no_printmap">
      <widgetv2config fieldEditable="1" constraint="( &quot;usr_no_printmap&quot; is not null  AND &quot;fk_function&quot; IN (4101, 4105) AND  &quot;fk_status&quot; = 1301) OR &#xd;&#xa;((&quot;usr_no_printmap&quot; is not null  OR &quot;usr_no_printmap&quot; is null ) AND &quot;fk_function&quot; NOT IN (4101, 4105) AND  &quot;fk_status&quot; = 1301 ) OR &#xd;&#xa;((&quot;usr_no_printmap&quot; is not null  OR &quot;usr_no_printmap&quot; is null ) AND  &quot;fk_status&quot; != 1301 ) " labelOnTop="0" constraintDescription="Champ obligatoire pour les conduites de distribution et de transport" notNull="0" Editable="1"/>
    </edittype>
    <edittype widgetv2type="UniqueValues" name="usr_no_folder">
      <widgetv2config fieldEditable="1" constraint="( &quot;year&quot; >= 2017 AND  &quot;usr_no_folder&quot; is not null  AND  &quot;usr_no_folder&quot; != 'Inconnu' AND  &quot;fk_status&quot; = 1301 AND &quot;fk_function&quot; IN (4101,4102, 4105, 41003) ) &#xd;&#xa;OR ( (&quot;usr_no_folder&quot; is not null OR &quot;usr_no_folder&quot; is null) AND coalesce(&quot;year&quot;,0) &lt; 2017 ) &#xd;&#xa;OR ( &quot;year&quot; >= 2017 AND (&quot;usr_no_folder&quot; is not null OR &quot;usr_no_folder&quot; is null) AND  &quot;fk_status&quot; != 1301)&#xd;&#xa;OR ( &quot;year&quot; >= 2017 AND (&quot;usr_no_folder&quot; is not null OR &quot;usr_no_folder&quot; is null) AND  &quot;fk_status&quot; = 1301 AND &quot;fk_function&quot; NOT IN (4101,4102, 4105, 41003) ) " labelOnTop="0" constraintDescription="obligatoire, si récent et mise en service et si la conduite est de type : distribution, transport, hydrant, adduction" notNull="0" Editable="1"/>
    </edittype>
    <edittype widgetv2type="RelationReference" name="usr_fk_pipe_appellation">
      <widgetv2config OrderByValue="0" fieldEditable="1" AllowAddFeatures="0" ShowForm="1" Relation="relation_pipe_vw_usr_pipe_appellation" ReadOnly="0" constraint="(( &quot;year&quot; = 0  AND &quot;usr_fk_pipe_appellation&quot;  >103  )&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34084,34085,34086,34087,34088,34089,34090,34091,34092,34093,34094,34095,34096,34097,34098) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=0 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 0)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34244,34235,34236,34237,34238) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1988 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2012)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34039,34040,34041,34042,34043,34044) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=2006 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2020)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34163,34164,34165,34166) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1996 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2002)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34052,34053,34054,34055,34056) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1986 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2009)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34190,34191,34192,34193,34194,34195,34196,34197,34198,34199,34200) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1980 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2015)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34243,34140,34141,34142,34143,34144,34145,34146,34147,34148,34149,34150,34151,34152,34153,34154,34155,34156,34157,34158,34159) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1870 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 1969)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34119,34120,34121,34122,34123,34124,34125,34126) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=2004 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2008)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34224,34225,34246,34247,34248,34249,34250,34251,34252,34226,34227,34228,34229,34230,34231,34232,34233,34234) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1972 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 1999)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34109,34110,34111,34112,34113,34114,34115,34116,34117,34118) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1996 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2020)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34074,34075,34076,34077,34078,34079,34080,34081,34082,34083) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1896 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2005)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34064,34065,34066,34067,34068,34069,34070,34071,34072,34073) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1900 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 1992)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34245,34127,34128,34129,34130,34131,34132,34133,34134,34135,34136,34137,34138,34139) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1970 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2020)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34201,34202,34203,34204,34205,34206,34207,34208,34209,34210,34211,34212,34213,34214,34215,34216,34217,34218,34219,34220,34221,34222,34223) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=2000 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2020)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34045,34046,34047,34048,34049,34050,34051) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1980 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2020)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34239,34028,34029,34030,34031) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1900 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 1946)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34001,34002,34003,34004,34005,34006,34007,34008,34009,34010,34011,34012,34013,34014,34015,34016,34017,34018,34019,34020,34021,34022,34023,34024,34025,34026,34027) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1875 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2020)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34241,34032,34033,34034,34035,34036,34037,34038) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1971 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2006)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34057,34058,34059,34060,34061,34062,34063) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1987 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2007)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34099,34100,34101,34102,34103,34104,34105,34106,34107,34108) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1983 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 1995)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34167,34168,34169,34170,34171,34172,34173,34174,34175,34176,34177,34178,34179,34180,34181,34182,34183,34184,34185,34186,34187,34188,34189) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1870 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 2020)&#xd;&#xa; OR (&quot;usr_fk_pipe_appellation&quot; IN (34160,34161,34162) AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) >=1900 AND coalesce(if(&quot;year&quot; = 0,null,&quot;year&quot;),1860) &lt;= 1960)&#xd;&#xa; OR &quot;usr_fk_pipe_appellation&quot; = 103 AND  &quot;fk_status&quot; !=1301)&#xd;&#xa;" MapIdentification="0" labelOnTop="0" constraintDescription="Champ obligatoire si la conduite est en service" notNull="1" AllowNULL="0">
        <FilterFields ChainFilters="1">
          <field name="market"/>
          <field name="description_fr"/>
          <field name="diameter"/>
        </FilterFields>
      </widgetv2config>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_location">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="last_date">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="last_user">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="create_date">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="deleted">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="usr_fk_commun">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="appellation_diameter">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="appellation_diameter_nominal">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="appellation_short_fr">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="Nbre sommets avec altitude">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ExternalResource" name="image_zpression">
      <widgetv2config RelativeStorage="2" fieldEditable="0" DocumentViewer="1" FileWidgetButton="0" DocumentViewerWidth="0" constraint="" FileWidget="0" DefaultRoot="\\lausanne.ch\data\VDL\Apps\TOPOBASE\eauservice\Pictures\" DocumentViewerHeight="0" StorageMode="0" labelOnTop="0" constraintDescription="" notNull="0" FileWidgetFilter=""/>
    </edittype>
    <edittype widgetv2type="ExternalResource" name="lien_aff_conduite">
      <widgetv2config fieldEditable="0" DocumentViewer="0" FileWidgetButton="0" UseLink="1" constraint="" FileWidget="1" StorageMode="0" labelOnTop="0" constraintDescription="" notNull="0" FileWidgetFilter=""/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="Qualité coordonnées Z des vertex">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ExternalResource" name="aec">
      <widgetv2config RelativeStorage="2" fieldEditable="0" DocumentViewer="1" FileWidgetButton="1" DocumentViewerWidth="0" constraint="" FileWidget="0" DefaultRoot="\\geodata.lausanne.ch\data\QGIS_projet\eauservice\qwat_lausanne\picture\" DocumentViewerHeight="0" StorageMode="0" labelOnTop="0" constraintDescription="" notNull="0" FileWidgetFilter=""/>
    </edittype>
    <edittype widgetv2type="ExternalResource" name="Lien affaire du chantier">
      <widgetv2config fieldEditable="0" DocumentViewer="0" FileWidgetButton="0" UseLink="1" constraint="" FileWidget="1" StorageMode="1" labelOnTop="0" constraintDescription="" notNull="0" FileWidgetFilter=""/>
    </edittype>
  </edittypes>
  <renderer-v2 forceraster="0" symbollevels="0" type="RuleRenderer" enableorderby="0">
    <rules key="{dbde1c2b-a27d-484e-8dd5-d13dcd527b89}">
      <rule filter="&quot;fk_status&quot;  = 103" key="{798f9c45-52ee-4edc-bdd8-56c235a9d74b}" label="Nouveau relevé">
        <rule filter="&quot;fk_precision&quot; IN (1102,1104)" key="{35047947-2284-4586-9c4d-e1d3e8cc709b}" symbol="0" label="Précis, reporté"/>
        <rule filter="&quot;fk_precision&quot; IN (102,103,1101)" key="{21d12748-ccc7-41f6-83fa-2b415288769e}" symbol="1" label="Imprécis"/>
      </rule>
      <rule filter="&quot;fk_status&quot; = 1301 " key="{6e157dd5-e7ef-4aa7-a25c-4c22d3710689}" label="En service">
        <rule filter="&quot;fk_precision&quot; IN (1102,1104)" key="{762fb801-5cc2-4ffb-974c-da606cf99ec4}" label="Précis, reporté">
          <rule scalemaxdenom="2501" description="Conduite privée après compteur et conduite privée non définie" filter=" &quot;fk_function&quot;  IN ( 41001 , 41004 )" key="{057ba12c-aea9-418e-aa01-7d66baee6a80}" symbol="2" label="Après compteur"/>
          <rule scalemaxdenom="2500" filter=" &quot;fk_function&quot;  =  4108" key="{e360af0b-81f6-4898-925f-b2a4a60d568f}" symbol="3" label="Branchement privé"/>
          <rule description="Conduite de branchements communs" filter=" &quot;fk_function&quot;  = 4106" key="{5c24dc24-d55f-4e81-b74b-96d36da91539}" symbol="4" label="Branchements communs"/>
          <rule scalemaxdenom="2501" description="Conduite d'hydrante" filter=" &quot;fk_function&quot;  =  4102 " key="{445c557b-fc91-4ca3-a656-ac7f6e0ecfe9}" symbol="5" label="Hydrante"/>
          <rule description="Conduite de distribution" filter=" &quot;fk_function&quot;  =  4105 " key="{7f94270b-53b4-4137-b6da-2ceb52b165db}" symbol="6" label="Distribution"/>
          <rule description="Conduite de transport" filter=" &quot;fk_function&quot;  =  4101 " key="{47aa0f9b-5144-429e-943c-a310b8b68448}" symbol="7" label="Transport"/>
          <rule description="Conduite de vidange" filter=" &quot;fk_function&quot;  =  4103 " key="{89d4af2c-5a8d-43bb-b0d4-9b1e0ec02b72}" symbol="8" label="Vidange"/>
          <rule scalemaxdenom="2501" description="Conduite interne station" filter=" &quot;fk_function&quot;  =  41002" key="{dce456b1-82ac-4393-bb45-e871fefbf632}" symbol="9" label="Interne station"/>
          <rule filter=" &quot;fk_function&quot;   =  41005 " key="{b486823f-05d0-417d-a6e3-ab443cc7377f}" symbol="10" label="Pousse-tube"/>
          <rule description="Conduite d'aduction" filter=" &quot;fk_function&quot;   =  41003 " key="{0f408f9d-f968-4bad-aff1-265947c837aa}" symbol="11" label="Adduction"/>
          <rule scalemaxdenom="2501" description="Drain captant" filter=" &quot;fk_function&quot;   = 4110 " key="{e3e90664-0d34-4720-bb96-81a80f09c016}" symbol="12" label="Drain captant"/>
          <rule description="Conduite by pass" filter=" &quot;fk_function&quot;  =  4107 " key="{3db71df4-a5c8-49c4-aa7e-f061731897ba}" symbol="13" label="By pass"/>
          <rule scalemaxdenom="2501" description="Conduite tubée" filter="  &quot;fk_installmethod&quot; = 4202 " key="{06b44578-cfa9-4723-9b79-fee4842a90e7}" symbol="14" label="Conduite tubée"/>
          <rule scalemaxdenom="2501" description="Conduite  isolée" filter="  &quot;fk_installmethod&quot; = 4205" key="{6971d2d5-82f8-473d-88cd-d18e49bf4ecd}" symbol="15" label="Conduite isolée"/>
          <rule scalemaxdenom="2501" description="Conduite tubée et isolée" filter="  &quot;fk_installmethod&quot; = 4208" key="{57fe5880-e35c-43e7-8c3e-3b59ce746890}" symbol="16" label="Conduite tubée et isolée"/>
          <rule scalemaxdenom="2501" description="Conduite bétonnée" filter="  &quot;fk_installmethod&quot; = 4206 " key="{b7c6fdae-4d6f-4cfc-8595-74b711a61a11}" symbol="17" label="Conduite bétonnée"/>
          <rule scalemaxdenom="2501" description="Conduite gainée" filter=" &quot;usr_fk_type_rehabilitation&quot; is not null" key="{d8e0f936-e061-419e-b2bc-8a7a7c56cf45}" symbol="18" label="Conduite gainée"/>
        </rule>
        <rule filter="&quot;fk_precision&quot; IN (102,103,1101)" key="{a3f479c5-be2e-4100-bfc7-26fea2cdf5e3}" label="Imprécis">
          <rule scalemaxdenom="2501" description="Conduite privée après compteur et conduite privée non définie" filter=" &quot;fk_function&quot;  IN ( 41001 , 41004 )" key="{ba51e2d0-8af6-49da-ae07-8497fc55c4aa}" symbol="19" label="Après compteur"/>
          <rule scalemaxdenom="2501" filter=" &quot;fk_function&quot;  =  4108" key="{8146a692-792f-4725-96d7-0d9911127369}" symbol="20" label="Branchement privé"/>
          <rule description="Conduite de branchements communs" filter=" &quot;fk_function&quot;  = 4106" key="{d752cfeb-ef40-45aa-86c5-c5c3515204b3}" symbol="21" label="Branchements communs"/>
          <rule scalemaxdenom="2501" description="Conduite d'hydrante" filter=" &quot;fk_function&quot;  =  4102 " key="{d9a38176-b0be-4a0e-aaab-03e827fddb6c}" symbol="22" label="Hydrante"/>
          <rule description="Conduite de distribution" filter=" &quot;fk_function&quot;  =  4105 " key="{13cdf9b5-db0f-4928-9f25-053ac4e2c493}" symbol="23" label="Distribution"/>
          <rule description="Conduite de transport" filter=" &quot;fk_function&quot;  =  4101 " key="{babd75b9-0eb0-4bf2-80ed-64190f3edc03}" symbol="24" label="Transport"/>
          <rule description="Conduite de vidange" filter=" &quot;fk_function&quot;  =  4103 " key="{fab3d502-6185-4027-9be1-37a57fd475bf}" symbol="25" label="Vidange"/>
          <rule scalemaxdenom="2501" description="Conduite interne station" filter=" &quot;fk_function&quot;  =  41002" key="{40e7cd9a-1492-455d-a43f-32f363e64e4f}" symbol="26" label="Interne station"/>
          <rule filter=" &quot;fk_function&quot;   =  41005 " key="{f3c6d6ad-ece3-450f-8f86-a884080fccbf}" symbol="27" label="Pousse-tube"/>
          <rule description="Conduite d'aduction" filter=" &quot;fk_function&quot;   =  41003 " key="{7aa313f3-b15f-49fc-b159-393f9364d821}" symbol="28" label="Adduction"/>
          <rule scalemaxdenom="2501" description="Drain captant" filter=" &quot;fk_function&quot;   = 4110 " key="{870bd38a-7ff1-4d94-a834-7662f4829876}" symbol="29" label="Drain captant"/>
          <rule description="Conduite by pass" filter=" &quot;fk_function&quot;  =  4107 " key="{c185217a-c893-415e-9326-d168c52fe26e}" symbol="30" label="By pass"/>
          <rule scalemaxdenom="2501" description="Conduite gainée" filter=" &quot;usr_fk_type_rehabilitation&quot; is not null" key="{ee0d3ec1-e88b-4c54-bf96-316bb8fd8b75}" symbol="31" label="Conduite gainée"/>
          <rule scalemaxdenom="2501" description="Conduite tubée" filter="  &quot;fk_installmethod&quot; = 4202 " key="{6ce7307d-98fb-4133-8cc4-cb490c324b0a}" symbol="32" label="Conduite tubée"/>
          <rule scalemaxdenom="2501" description="Conduite  isolée" filter="  &quot;fk_installmethod&quot; = 4205" key="{06a16873-2568-4c48-84b9-822930b38bef}" symbol="33" label="Conduite isolée"/>
          <rule scalemaxdenom="2501" description="Conduite tubée et isolée" filter="  &quot;fk_installmethod&quot; = 4208" key="{901df3b9-0057-42ed-9ce4-06aacff938da}" symbol="34" label="Conduite tubée et isolée"/>
          <rule scalemaxdenom="2501" description="Conduite bétonnée" filter="  &quot;fk_installmethod&quot; = 4206 " key="{c12f2968-4423-4122-af00-649b948152ca}" symbol="35" label="Conduite bétonnée"/>
        </rule>
      </rule>
      <rule filter=" &quot;fk_status&quot; not in (103,1301,13002) OR  &quot;fk_status&quot; is null" key="{b5f3fb5e-1db0-4703-a5dd-183b48811a34}" symbol="36" label="Défaut"/>
    </rules>
    <symbols>
      <symbol alpha="1" clip_to_extent="1" type="line" name="0">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="49,217,49,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.25"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.03&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.02&#xd;&#xa;WHEN $scale >132 THEN 0.016&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="1">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="49,217,49,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.25"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.03&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.02&#xd;&#xa;WHEN $scale >132 THEN 0.016&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="10">
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="255,0,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.06"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="0"/>
          <prop k="width_dd_expression" v=""/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="0,191,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.025"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="0"/>
          <prop k="width_dd_expression" v=""/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="11">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,165,165,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.75"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.03&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.014&#xd;&#xa;WHEN $scale >132 THEN 0.01&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="12">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="127,63,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.75"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.03&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.014&#xd;&#xa;WHEN $scale >132 THEN 0.01&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="13">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="0,191,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.02"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.02"/>
          <prop k="offset_dd_active" v="0"/>
          <prop k="offset_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.04&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.028&#xd;&#xa;WHEN $scale >132 THEN 0.022&#xd;&#xa;END"/>
          <prop k="offset_dd_field" v=""/>
          <prop k="offset_dd_useexpr" v="1"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="0,0,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.02"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="0"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.03&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.014&#xd;&#xa;WHEN $scale >132 THEN 0.01&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="14">
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.016"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.016"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="15">
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="50,50,50,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.02"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.02"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.01"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.01"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="50,50,50,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.02"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="16">
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="137,137,137,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.015"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.03"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="255,191,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.015"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.015"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="255,191,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.015"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.015"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="137,137,137,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.015"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.03"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="17">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="65,65,65,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.02"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="65,65,65,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.02"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="18">
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="255,191,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.025"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="255,191,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.025"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="19">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,255,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.02"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="2">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="1;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,255,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.02"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="20">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,100,255,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.75"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.05&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.04&#xd;&#xa;WHEN $scale >132 THEN 0.025&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="21">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="50,150,200,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.06&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.04&#xd;&#xa;WHEN $scale >132 THEN 0.032&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="22">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="191,11,59,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.06&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.04&#xd;&#xa;WHEN $scale >132 THEN 0.032&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="23">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,191,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.5"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.07&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.05&#xd;&#xa;WHEN $scale >132 AND $scale &lt;=199 THEN 0.04&#xd;&#xa;WHEN $scale >199 THEN 0.032&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="24">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="50,200,175,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.5"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.07&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.05&#xd;&#xa;WHEN $scale >132 AND $scale &lt;=199 THEN 0.04&#xd;&#xa;WHEN $scale >199 THEN 0.032&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="25">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="63,0,127,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.02"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="26">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="1;0.5"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="217,240,62,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.5"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.07&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.05&#xd;&#xa;WHEN $scale >132 AND $scale &lt;=199 THEN 0.04&#xd;&#xa;WHEN $scale >199 THEN 0.032&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="27">
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="255,0,255,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.06"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="0"/>
          <prop k="width_dd_expression" v=""/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="0,191,255,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.025"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="0"/>
          <prop k="width_dd_expression" v=""/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="28">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="1;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,165,165,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.75"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.03&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.014&#xd;&#xa;WHEN $scale >132 THEN 0.01&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="29">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="1;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="127,63,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.75"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.03&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.014&#xd;&#xa;WHEN $scale >132 THEN 0.01&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="3">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,100,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.75"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.05&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.04&#xd;&#xa;WHEN $scale >132 THEN 0.025&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="30">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="0,191,255,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.02"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.02"/>
          <prop k="offset_dd_active" v="0"/>
          <prop k="offset_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.04&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.028&#xd;&#xa;WHEN $scale >132 THEN 0.022&#xd;&#xa;END"/>
          <prop k="offset_dd_field" v=""/>
          <prop k="offset_dd_useexpr" v="1"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="0,0,255,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.02"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="0"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.03&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.014&#xd;&#xa;WHEN $scale >132 THEN 0.01&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="31">
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="255,191,0,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.025"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="255,191,0,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.025"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="32">
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.016"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.016"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="33">
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="50,50,50,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.02"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.02"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.01"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.01"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="50,50,50,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.02"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="34">
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="137,137,137,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.015"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.03"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="255,191,0,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.015"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.015"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="255,191,0,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.015"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.015"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="137,137,137,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.015"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.03"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="35">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="65,65,65,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0.02"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MapUnit"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="65,65,65,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.01"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="-0.02"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="36">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="round"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="245,241,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.06"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
        <layer pass="0" class="SimpleLine" locked="1">
          <prop k="capstyle" v="round"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.02"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="4">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="50,150,200,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.06&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.04&#xd;&#xa;WHEN $scale >132 THEN 0.032&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="5">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="191,11,59,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.06&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.04&#xd;&#xa;WHEN $scale >132 THEN 0.032&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="6">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,191,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.5"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.07&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.05&#xd;&#xa;WHEN $scale >132 AND $scale &lt;=199 THEN 0.04&#xd;&#xa;WHEN $scale >199 THEN 0.032&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="7">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="50,200,175,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.5"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.07&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.05&#xd;&#xa;WHEN $scale >132 AND $scale &lt;=199 THEN 0.04&#xd;&#xa;WHEN $scale >199 THEN 0.032&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="8">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="63,0,127,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.02"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="line" name="9">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="flat"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="217,240,62,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.5"/>
          <prop k="line_width_unit" v="MapUnit"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_dd_active" v="1"/>
          <prop k="width_dd_expression" v="CASE&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.07&#xd;&#xa;WHEN  $scale  > 33 AND $scale &lt;=132 THEN 0.05&#xd;&#xa;WHEN $scale >132 AND $scale &lt;=199 THEN 0.04&#xd;&#xa;WHEN $scale >199 THEN 0.032&#xd;&#xa;END"/>
          <prop k="width_dd_field" v=""/>
          <prop k="width_dd_useexpr" v="1"/>
          <prop k="width_map_unit_scale" v="0.05,0,0,0,0,0"/>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple"/>
  <customproperties>
    <property key="ItemBrowserPreferedAction" value="Conduites parent"/>
    <property key="LinkIt_destinationField" value="fk_parent"/>
    <property key="LinkIt_name" value="Conduites parent"/>
    <property key="LinkIt_sourceLayer" value="conduites_copy20130709141244955"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="itemBrowserCurrentItem" value="3"/>
    <property key="itemBrowserSelection" value="[]"/>
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
    <property key="labeling/bufferSize" value="0.4"/>
    <property key="labeling/bufferSizeInMapUnits" value="false"/>
    <property key="labeling/bufferSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/bufferSizeMapUnitMinScale" value="0"/>
    <property key="labeling/bufferSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/bufferTransp" value="0"/>
    <property key="labeling/centroidInside" value="false"/>
    <property key="labeling/centroidWhole" value="false"/>
    <property key="labeling/dataDefined/Show" value="0~~0~~~~label_1_visible"/>
    <property key="labeling/decimals" value="0"/>
    <property key="labeling/displayAll" value="false"/>
    <property key="labeling/dist" value="1"/>
    <property key="labeling/distInMapUnits" value="false"/>
    <property key="labeling/distMapUnitMaxScale" value="0"/>
    <property key="labeling/distMapUnitMinScale" value="0"/>
    <property key="labeling/distMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/drawLabels" value="true"/>
    <property key="labeling/enabled" value="true"/>
    <property key="labeling/fieldName" value="coalesce(  if( &quot;appellation_short_fr&quot;= 'Inconnu', '',&quot;appellation_short_fr&quot;) ,'')   ||'  ' ||  coalesce(  if( &quot;appellation_diameter&quot; = 'Inconnu', '',&quot;appellation_diameter&quot;)  ,'') || '   ' ||  coalesce( if(&quot;year&quot;=0,'',&quot;year&quot;) ,'')"/>
    <property key="labeling/fitInPolygonOnly" value="false"/>
    <property key="labeling/fontBold" value="false"/>
    <property key="labeling/fontCapitals" value="0"/>
    <property key="labeling/fontFamily" value="MS Shell Dlg 2"/>
    <property key="labeling/fontItalic" value="false"/>
    <property key="labeling/fontLetterSpacing" value="0"/>
    <property key="labeling/fontLimitPixelSize" value="false"/>
    <property key="labeling/fontMaxPixelSize" value="10000"/>
    <property key="labeling/fontMinPixelSize" value="3"/>
    <property key="labeling/fontSize" value="7"/>
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
    <property key="labeling/labelPerPart" value="true"/>
    <property key="labeling/leftDirectionSymbol" value="&lt;"/>
    <property key="labeling/limitNumLabels" value="false"/>
    <property key="labeling/maxCurvedCharAngleIn" value="20"/>
    <property key="labeling/maxCurvedCharAngleOut" value="-20"/>
    <property key="labeling/maxNumLabels" value="2000"/>
    <property key="labeling/mergeLines" value="false"/>
    <property key="labeling/minFeatureSize" value="0"/>
    <property key="labeling/multilineAlign" value="1"/>
    <property key="labeling/multilineHeight" value="0.9"/>
    <property key="labeling/namedStyle" value="Normal"/>
    <property key="labeling/obstacle" value="true"/>
    <property key="labeling/obstacleFactor" value="2"/>
    <property key="labeling/obstacleType" value="0"/>
    <property key="labeling/offsetType" value="0"/>
    <property key="labeling/placeDirectionSymbol" value="0"/>
    <property key="labeling/placement" value="3"/>
    <property key="labeling/placementFlags" value="10"/>
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
    <property key="labeling/repeatDistanceUnit" value="2"/>
    <property key="labeling/reverseDirectionSymbol" value="false"/>
    <property key="labeling/rightDirectionSymbol" value=">"/>
    <property key="labeling/scaleMax" value="2501"/>
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
    <property key="labeling/textColorB" value="255"/>
    <property key="labeling/textColorG" value="0"/>
    <property key="labeling/textColorR" value="0"/>
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
    <DiagramCategory penColor="#000000" labelPlacementMethod="XHeight" penWidth="0" diagramOrientation="Up" sizeScale="0,0,0,0,0,0" minimumSize="0" barWidth="5" penAlpha="255" maxScaleDenominator="1e+08" backgroundColor="#ffffff" transparency="0" width="30" scaleDependency="Area" backgroundAlpha="255" angleOffset="1440" scaleBasedVisibility="1" enabled="0" height="30" lineSizeScale="0,0,0,0,0,0" sizeType="MM" lineSizeType="MM" minScaleDenominator="100000">
      <fontProperties description="Cantarell,11,-1,5,50,0,0,0,0,0" style=""/>
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
  <DiagramLayerSettings yPosColumn="-1" showColumn="0" linePlacementFlags="1" placement="0" dist="0" xPosColumn="-1" priority="0" obstacle="0" zIndex="0" showAll="0"/>
  <annotationform>../../../qgis_v2</annotationform>
  <aliases>
    <alias field="id" index="0" name="ID"/>
    <alias field="fk_parent" index="1" name=""/>
    <alias field="fk_function" index="2" name="Fonction *"/>
    <alias field="fk_installmethod" index="3" name="Environnement conduite *"/>
    <alias field="fk_material" index="4" name="Matériau"/>
    <alias field="fk_distributor" index="5" name="Entretien à la charge de"/>
    <alias field="fk_precision" index="6" name="Précision planimétrique *"/>
    <alias field="fk_bedding" index="7" name="Lit de pose"/>
    <alias field="fk_protection" index="8" name="Protection"/>
    <alias field="fk_status" index="9" name="Statut *"/>
    <alias field="fk_watertype" index="10" name="Type d'eau *"/>
    <alias field="year" index="11" name="Année de pose"/>
    <alias field="tunnel_or_bridge" index="12" name=""/>
    <alias field="pressure_nominal" index="13" name="Pression nominal"/>
    <alias field="folder" index="14" name=""/>
    <alias field="remark" index="15" name="Remarque"/>
    <alias field="_valve_count" index="16" name="Nbre de vanne"/>
    <alias field="_valve_closed" index="17" name="Vannes fermées"/>
    <alias field="schema_force_visible" index="18" name="Affichage 2500"/>
    <alias field="label_1_visible" index="19" name=""/>
    <alias field="label_1_text" index="20" name=""/>
    <alias field="label_2_visible" index="21" name=""/>
    <alias field="label_2_text" index="22" name=""/>
    <alias field="fk_node_a" index="23" name="Noeud A *"/>
    <alias field="fk_node_b" index="24" name="Noeud B *"/>
    <alias field="fk_district" index="25" name="Commune"/>
    <alias field="fk_pressurezone" index="26" name="Zone de pression"/>
    <alias field="fk_printmap" index="27" name="N° de plan"/>
    <alias field="_length2d" index="28" name="Longueur 2D"/>
    <alias field="_length3d" index="29" name="Longueur 3D"/>
    <alias field="_diff_elevation" index="30" name=""/>
    <alias field="_district" index="31" name="Commune (auto)"/>
    <alias field="_pressurezone" index="32" name="Zone de pression (auto)"/>
    <alias field="_printmaps" index="33" name="Folios"/>
    <alias field="_geometry_alt1_used" index="34" name="Géo-schématique"/>
    <alias field="_geometry_alt2_used" index="35" name=""/>
    <alias field="geometry" index="36" name=""/>
    <alias field="geometry_alt1" index="37" name=""/>
    <alias field="geometry_alt2" index="38" name=""/>
    <alias field="fk_folder" index="39" name="N° de chantier"/>
    <alias field="year_end" index="40" name="Année d'archive"/>
    <alias field="year_rehabilitation" index="41" name="Année de réhabilitation"/>
    <alias field="usr_cale_sisol" index="42" name="Calé SISOL"/>
    <alias field="usr_fk_pipe_connection" index="43" name="Genre de raccordement"/>
    <alias field="usr_fk_cathodic_protection" index="44" name="Protection cathodique"/>
    <alias field="usr_fk_type_rehabilitation" index="45" name="Type de réhabilitation"/>
    <alias field="usr_aec" index="46" name="AEC"/>
    <alias field="usr_fk_backwater" index="47" name="Antenne"/>
    <alias field="usr_affgo_archivage" index="48" name="IdAff archivage (goeland)"/>
    <alias field="usr_fk_note_arp" index="49" name="Note ARP"/>
    <alias field="usr_year_arp" index="50" name="Année modélisation ARP"/>
    <alias field="usr_fk_type_tube" index="51" name="Info tubage"/>
    <alias field="usr_no_servitude" index="52" name="N° de servitude"/>
    <alias field="usr_fk_undersized" index="53" name="Sous-dimensionné"/>
    <alias field="fk_precisionalti" index="54" name="Précision altimétrique *"/>
    <alias field="usr_fk_street_address" index="55" name="Rue"/>
    <alias field="usr_no_printmap" index="56" name="N° du plan"/>
    <alias field="usr_no_folder" index="57" name="N° du chantier"/>
    <alias field="usr_fk_pipe_appellation" index="58" name="Appellation / Diamètre"/>
    <alias field="usr_location" index="59" name="Lieu dit"/>
    <alias field="last_date" index="60" name=""/>
    <alias field="last_user" index="61" name=""/>
    <alias field="create_date" index="62" name=""/>
    <alias field="deleted" index="63" name=""/>
    <alias field="usr_fk_commun" index="64" name="Branchement commun"/>
    <alias field="appellation_diameter" index="65" name="Diamètre"/>
    <alias field="appellation_diameter_nominal" index="66" name="Diamètre nominal"/>
    <alias field="appellation_short_fr" index="67" name=""/>
    <alias field="Nbre sommets avec altitude" index="68" name=""/>
    <alias field="image_zpression" index="69" name="->"/>
    <alias field="lien_aff_conduite" index="70" name="Lien vers l'affaire goéland"/>
    <alias field="Qualité coordonnées Z des vertex" index="71" name=""/>
    <alias field="aec" index="72" name="AEC"/>
    <alias field="Lien affaire du chantier" index="73" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions default="4">
    <actionsetting showInAttributeTable="1" action="import sys&#xd;&#xa;sys.var=[[%id%]]&#xd;&#xa;execfile(u'//geodata.lausanne.ch/data/QGIS_projet/eauservice/qwat_lausanne/action/action_qgis_archive_conduite.py'.encode(&quot;utf-8&quot;))" icon="" capture="0" type="1" name="Archiver une conduite" shortTitle=""/>
    <actionsetting showInAttributeTable="0" action="import sys&#xd;&#xa;sys.var=[[%id%]]&#xd;&#xa;execfile(u'//geodata.lausanne.ch/data/QGIS_projet/eauservice/qwat_lausanne/action/action_qgis_mise_service_conduite.py'.encode(&quot;utf-8&quot;))" icon="" capture="0" type="1" name="Mise en service" shortTitle="Mise en service"/>
    <actionsetting showInAttributeTable="1" action="import sys&#xd;&#xa;sys.var=[[%id%]]&#xd;&#xa;execfile(u'//geodata.lausanne.ch/data/QGIS_projet/eauservice/qwat_lausanne/action/maj_pts_sisol.py'.encode(&quot;utf-8&quot;))" icon="" capture="0" type="1" name="Mise à jour des pts SISOL" shortTitle=""/>
    <actionsetting showInAttributeTable="0" action="https://golux.lausanne.ch/goeland/affaire2/affaire_data.php?idaffaire=[%usr_affgo_archivage%]" icon="" capture="0" type="5" name="Ouvrir l'affaire d'archivage" shortTitle=""/>
    <actionsetting showInAttributeTable="0" action="execfile(u'//geodata.lausanne.ch/data/QGIS_projet/eauservice/qwat_lausanne/action/action_multieditlayer.py'.encode(&quot;utf-8&quot;))" icon="" capture="0" type="1" name="Mettre en édition les couches principales" shortTitle="Passer en mode edition"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" hidden="1" type="field" name="fk_parent"/>
      <column width="-1" hidden="1" type="field" name="fk_bedding"/>
      <column width="-1" hidden="1" type="field" name="fk_protection"/>
      <column width="-1" hidden="1" type="field" name="fk_watertype"/>
      <column width="-1" hidden="1" type="field" name="tunnel_or_bridge"/>
      <column width="-1" hidden="1" type="field" name="pressure_nominal"/>
      <column width="-1" hidden="1" type="field" name="folder"/>
      <column width="-1" hidden="1" type="field" name="label_1_visible"/>
      <column width="-1" hidden="1" type="field" name="label_2_visible"/>
      <column width="-1" hidden="1" type="field" name="fk_printmap"/>
      <column width="-1" hidden="1" type="field" name="_diff_elevation"/>
      <column width="-1" hidden="1" type="field" name="_district"/>
      <column width="-1" hidden="1" type="field" name="_pressurezone"/>
      <column width="-1" hidden="1" type="field" name="_printmaps"/>
      <column width="-1" hidden="1" type="field" name="_geometry_alt2_used"/>
      <column width="-1" hidden="1" type="field" name="geometry"/>
      <column width="-1" hidden="1" type="field" name="geometry_alt1"/>
      <column width="-1" hidden="1" type="field" name="geometry_alt2"/>
      <column width="-1" hidden="1" type="field" name="fk_folder"/>
      <column width="-1" hidden="0" type="field" name="id"/>
      <column width="-1" hidden="0" type="field" name="fk_function"/>
      <column width="-1" hidden="0" type="field" name="fk_installmethod"/>
      <column width="-1" hidden="0" type="field" name="fk_material"/>
      <column width="-1" hidden="0" type="field" name="fk_distributor"/>
      <column width="-1" hidden="0" type="field" name="fk_precision"/>
      <column width="-1" hidden="0" type="field" name="fk_status"/>
      <column width="-1" hidden="0" type="field" name="year"/>
      <column width="-1" hidden="0" type="field" name="remark"/>
      <column width="-1" hidden="0" type="field" name="_valve_count"/>
      <column width="-1" hidden="0" type="field" name="_valve_closed"/>
      <column width="-1" hidden="0" type="field" name="schema_force_visible"/>
      <column width="-1" hidden="0" type="field" name="label_1_text"/>
      <column width="-1" hidden="0" type="field" name="label_2_text"/>
      <column width="-1" hidden="0" type="field" name="fk_node_a"/>
      <column width="-1" hidden="0" type="field" name="fk_node_b"/>
      <column width="-1" hidden="0" type="field" name="fk_district"/>
      <column width="-1" hidden="0" type="field" name="fk_pressurezone"/>
      <column width="-1" hidden="0" type="field" name="_length2d"/>
      <column width="-1" hidden="0" type="field" name="_length3d"/>
      <column width="-1" hidden="0" type="field" name="_geometry_alt1_used"/>
      <column width="-1" hidden="0" type="field" name="year_end"/>
      <column width="-1" hidden="0" type="field" name="year_rehabilitation"/>
      <column width="-1" hidden="0" type="field" name="usr_cale_sisol"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_pipe_connection"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_cathodic_protection"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_type_rehabilitation"/>
      <column width="-1" hidden="0" type="field" name="usr_aec"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_backwater"/>
      <column width="-1" hidden="0" type="field" name="usr_affgo_archivage"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_note_arp"/>
      <column width="-1" hidden="0" type="field" name="usr_year_arp"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_type_tube"/>
      <column width="-1" hidden="0" type="field" name="usr_no_servitude"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_undersized"/>
      <column width="-1" hidden="0" type="field" name="fk_precisionalti"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_street_address"/>
      <column width="-1" hidden="0" type="field" name="usr_no_printmap"/>
      <column width="-1" hidden="0" type="field" name="usr_no_folder"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_pipe_appellation"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" hidden="0" type="field" name="appellation_diameter"/>
      <column width="-1" hidden="0" type="field" name="appellation_diameter_nominal"/>
      <column width="-1" hidden="0" type="field" name="appellation_short_fr"/>
      <column width="-1" hidden="0" type="field" name="Nbre sommets avec altitude"/>
      <column width="-1" hidden="0" type="field" name="image_zpression"/>
      <column width="-1" hidden="0" type="field" name="lien_aff_conduite"/>
      <column width="-1" hidden="0" type="field" name="Qualité coordonnées Z des vertex"/>
      <column width="-1" hidden="0" type="field" name="aec"/>
      <column width="-1" hidden="0" type="field" name="usr_location"/>
      <column width="-1" hidden="0" type="field" name="last_date"/>
      <column width="-1" hidden="0" type="field" name="last_user"/>
      <column width="-1" hidden="0" type="field" name="create_date"/>
      <column width="-1" hidden="0" type="field" name="deleted"/>
      <column width="-1" hidden="0" type="field" name="Lien affaire du chantier"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_commun"/>
    </columns>
  </attributetableconfig>
  <editform>../../../qgis_v2/ui_forms/pipe.ui</editform>
  <editforminit>my_form_open</editforminit>
  <editforminitcodesource>1</editforminitcodesource>
  <editforminitfilepath>//geodata.lausanne.ch/data/QGIS_projet/eauservice/qwat_lausanne/function/init_conduite.py</editforminitfilepath>
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
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Saisie" groupBox="0" columnCount="1">
      <attributeEditorContainer showLabel="0" visibilityExpressionEnabled="0" visibilityExpression="" name="image" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="0" index="69" name="image_zpression"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" index="26" name="fk_pressurezone"/>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Localisation" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="25" name="fk_district"/>
        <attributeEditorField showLabel="1" index="0" name="id"/>
        <attributeEditorField showLabel="1" index="55" name="usr_fk_street_address"/>
        <attributeEditorField showLabel="1" index="56" name="usr_no_printmap"/>
        <attributeEditorField showLabel="1" index="59" name="usr_location"/>
        <attributeEditorField showLabel="1" index="57" name="usr_no_folder"/>
        <attributeEditorField showLabel="1" index="52" name="usr_no_servitude"/>
        <attributeEditorField showLabel="1" index="73" name="Lien affaire du chantier"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="11" name="year"/>
        <attributeEditorField showLabel="1" index="40" name="year_end"/>
        <attributeEditorField showLabel="1" index="2" name="fk_function"/>
        <attributeEditorField showLabel="1" index="48" name="usr_affgo_archivage"/>
        <attributeEditorField showLabel="1" index="9" name="fk_status"/>
        <attributeEditorField showLabel="1" index="70" name="lien_aff_conduite"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" index="58" name="usr_fk_pipe_appellation"/>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Géométrie" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="6" name="fk_precision"/>
        <attributeEditorField showLabel="1" index="42" name="usr_cale_sisol"/>
        <attributeEditorField showLabel="1" index="54" name="fk_precisionalti"/>
        <attributeEditorField showLabel="1" index="68" name="Nbre sommets avec altitude"/>
        <attributeEditorField showLabel="1" index="18" name="schema_force_visible"/>
        <attributeEditorField showLabel="1" index="34" name="_geometry_alt1_used"/>
        <attributeEditorField showLabel="1" index="28" name="_length2d"/>
        <attributeEditorField showLabel="1" index="23" name="fk_node_a"/>
        <attributeEditorField showLabel="1" index="29" name="_length3d"/>
        <attributeEditorField showLabel="1" index="24" name="fk_node_b"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Détails" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="53" name="usr_fk_undersized"/>
        <attributeEditorField showLabel="1" index="46" name="usr_aec"/>
        <attributeEditorField showLabel="1" index="47" name="usr_fk_backwater"/>
        <attributeEditorField showLabel="1" index="44" name="usr_fk_cathodic_protection"/>
        <attributeEditorField showLabel="1" index="3" name="fk_installmethod"/>
        <attributeEditorField showLabel="1" index="45" name="usr_fk_type_rehabilitation"/>
        <attributeEditorField showLabel="1" index="51" name="usr_fk_type_tube"/>
        <attributeEditorField showLabel="1" index="41" name="year_rehabilitation"/>
        <attributeEditorField showLabel="1" index="43" name="usr_fk_pipe_connection"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" index="15" name="remark"/>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Hydraulique" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="49" name="usr_fk_note_arp"/>
        <attributeEditorField showLabel="1" index="50" name="usr_year_arp"/>
        <attributeEditorField showLabel="1" index="16" name="_valve_count"/>
        <attributeEditorField showLabel="1" index="17" name="_valve_closed"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
  </attributeEditorForm>
  <widgets>
    <widget name="appel_diam_diameter">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="appel_diam_diameter_external">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="appel_diam_diameter_internal">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="appel_fk_coating_ext">
      <config>
        <option key="AllowMulti" value="0"/>
        <option key="AllowNull" value="0"/>
        <option key="FilterExpression" value=""/>
        <option key="Key" value="id"/>
        <option key="Layer" value="usr_pipe_coating20160510153009703"/>
        <option key="OrderByValue" value="0"/>
        <option key="UseCompleter" value="1"/>
        <option key="Value" value="value_fr"/>
      </config>
    </widget>
    <widget name="appel_fk_coating_int">
      <config>
        <option key="AllowMulti" value="0"/>
        <option key="AllowNull" value="0"/>
        <option key="FilterExpression" value=" &quot;vl_active&quot;  =  't' "/>
        <option key="Key" value="id"/>
        <option key="Layer" value="usr_pipe_coating20160510153009703"/>
        <option key="OrderByValue" value="0"/>
        <option key="UseCompleter" value="1"/>
        <option key="Value" value="value_fr"/>
      </config>
    </widget>
    <widget name="appel_id_appellation_tb">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="appel_mat_value_fr">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="appel_revint_value_fr">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="appellation_diam_diameter">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="appellation_id">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="appellation_old">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="appellation_year">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="appellation_year_end">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_function_major">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_function_schema_visible">
      <config/>
    </widget>
    <widget name="pipe_function_value_en">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_function_value_fr">
      <config/>
    </widget>
    <widget name="pipe_function_value_ro">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_material__displayname_en">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_material__displayname_fr">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_material__displayname_ro">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_material_diameter">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_material_diameter_nominal">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_material_short_en">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_material_short_fr">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_material_short_ro">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_material_value_en">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_material_value_fr">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_material_value_ro">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_protection_value_en">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_protection_value_fr">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_protection_value_ro">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pressurezone_colorcode">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pressurezone_name">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="relation_pipe_leak">
      <config/>
    </widget>
    <widget name="relation_pipe_meter">
      <config/>
    </widget>
    <widget name="relation_pipe_parent">
      <config/>
    </widget>
    <widget name="relation_pipe_subscriber">
      <config/>
    </widget>
    <widget name="relation_valve_pipe">
      <config/>
    </widget>
    <widget name="status_active">
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
    <widget name="vertex_total">
      <config/>
    </widget>
    <widget name="vertex_z">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
  </widgets>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles>
      <fieldstyle fieldname="id"/>
      <fieldstyle fieldname="year"/>
    </fieldstyles>
  </conditionalstyles>
  <defaults>
    <default field="id" expression=""/>
    <default field="fk_parent" expression=""/>
    <default field="fk_function" expression=""/>
    <default field="fk_installmethod" expression="4201"/>
    <default field="fk_material" expression=""/>
    <default field="fk_distributor" expression=""/>
    <default field="fk_precision" expression="1102"/>
    <default field="fk_bedding" expression=""/>
    <default field="fk_protection" expression=""/>
    <default field="fk_status" expression="103"/>
    <default field="fk_watertype" expression=""/>
    <default field="year" expression="if (&quot;year&quot; is NULL, year(now()),NULL)"/>
    <default field="tunnel_or_bridge" expression=""/>
    <default field="pressure_nominal" expression=""/>
    <default field="folder" expression=""/>
    <default field="remark" expression="''"/>
    <default field="_valve_count" expression=""/>
    <default field="_valve_closed" expression=""/>
    <default field="schema_force_visible" expression="'f'"/>
    <default field="label_1_visible" expression=""/>
    <default field="label_1_text" expression=""/>
    <default field="label_2_visible" expression=""/>
    <default field="label_2_text" expression=""/>
    <default field="fk_node_a" expression=""/>
    <default field="fk_node_b" expression=""/>
    <default field="fk_district" expression=""/>
    <default field="fk_pressurezone" expression=""/>
    <default field="fk_printmap" expression=""/>
    <default field="_length2d" expression=""/>
    <default field="_length3d" expression=""/>
    <default field="_diff_elevation" expression=""/>
    <default field="_district" expression=""/>
    <default field="_pressurezone" expression=""/>
    <default field="_printmaps" expression=""/>
    <default field="_geometry_alt1_used" expression="'f'"/>
    <default field="_geometry_alt2_used" expression=""/>
    <default field="geometry" expression=""/>
    <default field="geometry_alt1" expression=""/>
    <default field="geometry_alt2" expression=""/>
    <default field="fk_folder" expression=""/>
    <default field="year_end" expression=" if( &quot;fk_status&quot; = 13002, year(now()), NULL)"/>
    <default field="year_rehabilitation" expression=""/>
    <default field="usr_cale_sisol" expression="'t'"/>
    <default field="usr_fk_pipe_connection" expression="102"/>
    <default field="usr_fk_cathodic_protection" expression=""/>
    <default field="usr_fk_type_rehabilitation" expression=""/>
    <default field="usr_aec" expression="'f'"/>
    <default field="usr_fk_backwater" expression=""/>
    <default field="usr_affgo_archivage" expression=""/>
    <default field="usr_fk_note_arp" expression=""/>
    <default field="usr_year_arp" expression=""/>
    <default field="usr_fk_type_tube" expression=""/>
    <default field="usr_no_servitude" expression=""/>
    <default field="usr_fk_undersized" expression=""/>
    <default field="fk_precisionalti" expression="if(nb_vertex_z($geometry) > 0 , 11021,102)"/>
    <default field="usr_fk_street_address" expression="-1"/>
    <default field="usr_no_printmap" expression=""/>
    <default field="usr_no_folder" expression=""/>
    <default field="usr_fk_pipe_appellation" expression="103"/>
    <default field="usr_location" expression=""/>
    <default field="last_date" expression=""/>
    <default field="last_user" expression=""/>
    <default field="create_date" expression=""/>
    <default field="deleted" expression=""/>
    <default field="usr_fk_commun" expression=""/>
    <default field="appellation_diameter" expression=""/>
    <default field="appellation_diameter_nominal" expression=""/>
    <default field="appellation_short_fr" expression=""/>
    <default field="Nbre sommets avec altitude" expression="nb_vertex_z($geometry) "/>
    <default field="image_zpression" expression=""/>
    <default field="lien_aff_conduite" expression=""/>
    <default field="Qualité coordonnées Z des vertex" expression=""/>
    <default field="aec" expression=""/>
    <default field="Lien affaire du chantier" expression=""/>
  </defaults>
  <previewExpression>COALESCE( "id", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>1</layerGeometryType>
</qgis>
