<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.13" simplifyAlgorithm="0" minimumScale="0" maximumScale="501" simplifyDrawingHints="0" minLabelScale="0" maxLabelScale="1e+08" simplifyDrawingTol="3.6" readOnly="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="1" simplifyLocal="0" scaleBasedLabelVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="id">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_type">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't'" UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;fk_type&quot;  NOT IN (92003,92010))" Layer="vl_part_type20140429114640509" Value="value_fr" labelOnTop="0" constraintDescription="Renseigné la valeur de l'angle du coude" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="identification">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_distributor">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_status">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="( &quot;fk_status&quot; = 13002 AND year_end is not null ) OR (&quot;fk_status&quot; != 13002 AND year_end is null )" Layer="vl_status20130304110011436" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_precision">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;usr_cale_sisol&quot;  =  't'  AND  &quot;fk_precision&quot;  IN (1102, 1104)) OR (&quot;usr_cale_sisol&quot;  =  'f' AND &quot;fk_precision&quot;  IN (1101))" Layer="vl_precision20130304110011372" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire, si calé SISOL, précis ou reporté, sinon imprécis" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_precisionalti">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (z(  $geometry ) > 300 AND  &quot;fk_precisionalti&quot;  IN (1121,11021)) OR ((z(  $geometry ) is null OR z(  $geometry ) = 0)  AND &quot;fk_precisionalti&quot;  IN (102))" Layer="vl_precisionalti20131211161429510" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire, si l'altitude est null ou égal à 0  la précision altimétrique est inconnu. Sinon la précision doit être renseignée comme précis ou imprécis." AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="year">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="(((&quot;year&quot; > 1860 AND  &quot;year&quot;  &lt;=  year( now() ))  OR ( &quot;year&quot; =0)) AND  &quot;fk_status&quot; IN (103, 1301))   OR ((&quot;year&quot; is null OR &quot;year&quot; is not null) AND  &quot;fk_status&quot; NOT IN (103, 1301) )" UseHtml="0" labelOnTop="0" constraintDescription="Champ obligatoire, l'année doit être comprise entre 1860 et l'année actuel ou 0 si inconnu" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="altitude">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="orientation">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint=" &quot;orientation&quot; is null OR  &quot;orientation&quot; >= 0 AND  &quot;orientation&quot; &lt;= 360" UseHtml="0" labelOnTop="0" constraintDescription="Définir l'orientation du symbole entre 0 et 360 degrés" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="remark">
      <widgetv2config IsMultiline="1" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="fk_node">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_district">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_pressurezone">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_printmap">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="fk_pipe">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_district">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_pressurezone">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_printmaps">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
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
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_geometry_alt2_used">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
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
    <edittype widgetv2type="Hidden" name="fk_folder">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="year_end">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="( &quot;fk_status&quot;  = 13002 AND &quot;year_end&quot; > 1860 AND  &quot;year_end&quot; &lt;=   year(now()) AND &quot;year_end&quot;  >=  coalesce(&quot;year&quot;,0) OR &quot;year_end&quot; = 0 )  OR (&quot;fk_status&quot;  != 13002 AND  &quot;year_end&quot; is null)" UseHtml="0" labelOnTop="0" constraintDescription="L'année d'archive doit être égal ou supérieur à l'année de pose ou égal à 0 si inconnu" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_object_reference">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_cale_sisol">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint=" (&quot;usr_cale_sisol&quot;  = 't' AND  &quot;fk_precision&quot;  IN (1102, 1104)) OR (&quot;usr_cale_sisol&quot;  = 'f' AND &quot;fk_precision&quot;  IN (102,1101))" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="1"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_part_depth">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="UniqueValues" name="usr_elbow_angle">
      <widgetv2config fieldEditable="1" constraint=" (&quot;usr_elbow_angle&quot; IN (0,5,11,15,22,30,45,60,90) AND  &quot;fk_type&quot; = 9204) OR (&quot;usr_elbow_angle&quot;  is null AND &quot;fk_type&quot; != 9204) OR (&quot;fk_status&quot; IN (103,13002) AND &quot;usr_elbow_angle&quot;  is null AND &quot;fk_type&quot; = 9204)" labelOnTop="0" constraintDescription="Champ obligatoire si on a un coude, angle en degrés" notNull="0" Editable="1"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_elbow_vertical">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_reduction_diam">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint=" (&quot;fk_type&quot; = 9206 AND  &quot;usr_reduction_diam&quot; is not null AND  (strpos( &quot;usr_reduction_diam&quot; , '/') IN (3,4)  AND  length( substr( &quot;usr_reduction_diam&quot; ,  strpos( &quot;usr_reduction_diam&quot; , '/')+1,10)) IN (2,3)))&#xd;&#xa; OR  (&quot;fk_type&quot; != 9206 AND  &quot;usr_reduction_diam&quot; is null ) OR (&quot;fk_status&quot; IN (103,13002) AND &quot;usr_reduction_diam&quot;  is null AND &quot;fk_type&quot; = 9206)" UseHtml="0" labelOnTop="0" constraintDescription="Dans le cas d'une réduction , définir le diamètre" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="usr_year_removal_socket">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
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
    <edittype widgetv2type="CheckBox" name="usr_removal_socket">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="( &quot;usr_removal_socket&quot; is not null AND  &quot;fk_type&quot; = 92006) OR ((&quot;usr_removal_socket&quot; = 'f'  OR &quot;usr_removal_socket&quot; is null ) AND &quot;fk_type&quot; != 92006)" CheckedState="t" labelOnTop="0" constraintDescription="A renseigner si on définit une obturation." notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="node__type">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="node__orientation">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="node__schema_visible">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="node__status_active">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="node__under_object">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="type_short_fr">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="z">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint=" (z(  $geometry ) > 300 AND  &quot;fk_precisionalti&quot;  IN (1121,11021)) OR ((z(  $geometry ) is null OR z(  $geometry ) = 0)  AND &quot;fk_precisionalti&quot;  IN (102,103))" UseHtml="0" labelOnTop="0" constraintDescription="L'altitude de l'objet doit être renseigné en éditant sa géométrie (coordonnées) , sinon l'alitude est de 0." notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_surveypoint">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
  </edittypes>
  <renderer-v2 forceraster="0" symbollevels="0" type="RuleRenderer" enableorderby="0">
    <rules key="{12d77b92-c206-49ca-a45d-0a35a3a592c3}">
      <rule key="{c052f5e2-e90e-4b5e-897e-17a6cbc36cc0}" label="Modèle saisie">
        <rule filter=" &quot;fk_status&quot;  =  1301 " key="{5b54f740-146d-477f-8d54-da20551c22b4}" label="En service">
          <rule filter="&quot;fk_type&quot; = 92001" key="{65d5c339-11c7-4824-81fc-53703a04c3f8}" symbol="0" label="bride PN10"/>
          <rule filter="&quot;fk_type&quot; = 92002" key="{f338a3a5-170f-47a5-bdb1-454241d028c4}" symbol="1" label="bride PN16"/>
          <rule filter="&quot;fk_type&quot; = 92006" key="{a70d9b87-2eb7-4fdd-a2d9-fbcc195293a3}" symbol="2" label="élément obturation standard"/>
          <rule description="Elément de montage standard" filter="&quot;fk_type&quot; = 101 OR  &quot;fk_type&quot; = 102" key="{afdd953d-d645-4136-b65f-10989038f256}" symbol="3" label="inconnu"/>
          <rule description="Raccord de vanne bride/bout lisse" filter="&quot;fk_type&quot; = 92014" key="{20465dc8-c78e-4b4d-b998-7fe94127c96c}" symbol="4" label="B+C"/>
          <rule description="Tuyau à deux brides" filter="&quot;fk_type&quot; = 92016" key="{30cad404-5541-4679-a368-238955e8e5a8}" symbol="5" label="Bobine"/>
          <rule description="Bride butée" filter="&quot;fk_type&quot; = 92017" key="{b12ae15e-6f05-44d0-85ab-d10f33c9ae49}" symbol="6" label="Butée"/>
          <rule description="Tuyau à deux brides" filter="&quot;fk_type&quot; = 9204" key="{baca7ff1-eb1a-4a06-b84d-35e98e02f751}" symbol="7" label="Coude"/>
          <rule description="Raccord de vanne bride/auto-étanche" filter="&quot;fk_type&quot; = 92015" key="{82d61be6-d655-4b6a-aa6f-c8c140624d47}" symbol="8" label="Godet"/>
          <rule description="Manchon de raccordement" filter="&quot;fk_type&quot; IN ( 92008,92012,92013,92018)" key="{1e1886e1-ab37-4760-913f-388a677294ee}" symbol="9" label="manchon de raccordement"/>
          <rule filter="&quot;fk_type&quot; = 92007" key="{2de10ca4-4628-4151-b2d7-7ffcb0c20e3f}" symbol="10" label="Mise à terre"/>
          <rule filter="&quot;fk_type&quot; = 92009" key="{d81e50c8-ce72-44df-aeb0-d532647a6cde}" symbol="11" label="raccord branchement"/>
          <rule filter=" &quot;fk_type&quot;  = 92005" key="{475e61de-848a-414e-9124-84dfd5a0259c}" symbol="12" label="Changement de matériau et/ou d'année"/>
          <rule filter=" &quot;fk_type&quot;  = 9206" key="{7bc1da67-ada3-4e63-bb86-320ecf098ed8}" symbol="13" label="Réduction"/>
          <rule filter=" &quot;fk_type&quot;  in (92004,92011)" key="{bfea49be-97d6-4bfe-9b3b-764b966db10c}" symbol="14" label="Tubage/bétonnage début-fin"/>
        </rule>
        <rule filter=" &quot;fk_status&quot;  = 103" key="{ad96a10c-8bc0-41d2-ac00-53be2ba96003}" label="Nouveau relevé">
          <rule filter="&quot;fk_type&quot; in (92001,92002,92006,92009)" key="{00a554be-eb51-4218-a219-6e7ebf078067}" symbol="15" label="bride PN10"/>
          <rule description="Elément de montage standard" filter="&quot;fk_type&quot; = 101 OR  &quot;fk_type&quot; = 102" key="{75bbf17b-25e0-4b60-9e8c-c5d7bdfc30ca}" symbol="16" label="inconnu"/>
          <rule description="Tuyau à deux brides" filter=" &quot;fk_type&quot;  in (9204,92014,92015,92016,92017)" key="{8c9f4d8c-1820-4f91-bc05-2e4ae8428642}" symbol="17" label="B+C, Bobine, Butée, Coude, Godet"/>
          <rule description="Manchon de raccordement" filter="&quot;fk_type&quot; IN ( 92008,92012,92013,92018)" key="{cd7e3c01-2795-4619-96f3-6939d48023dd}" symbol="18" label="manchon de raccordement"/>
          <rule filter=" &quot;fk_type&quot;  = 92005" key="{da00adc1-e995-4798-a4db-af1da87003a6}" symbol="19" label="Changement de matériau et/ou d'année"/>
          <rule filter=" &quot;fk_type&quot;  = 9206" key="{541409a3-eb26-45e6-8aec-fc300a761349}" symbol="20" label="Réduction"/>
          <rule filter=" &quot;fk_type&quot;  in (92004,92011)" key="{f29b1982-0064-465c-b4d0-3892c478d014}" symbol="21" label="Tubage/bétonnage début-fin"/>
        </rule>
        <rule filter=" &quot;fk_status&quot;  NOT IN (103,1301,13002) OR  &quot;fk_status&quot; is null" key="{ad95804f-26ac-45fa-95d8-84d3736c3179}" symbol="22" label="Défaut"/>
      </rule>
      <rule key="{cfe399ca-1a73-4845-b8ae-3b5b28367883}" label="Contrôle attributs">
        <rule filter="&quot;fk_status&quot; != 13002  AND &quot;fk_type&quot; NOT IN (101,9204,9206,92001,92002,92003,92004,92005,92006,92007,92008,92009,92010,92011,92012,92013,92014,92015,92016,92017,92018)" key="{2e25fef1-d277-43d5-9b97-b98da40c8128}" symbol="23" label="Genre d'élément de montage (code erreur : 451)"/>
        <rule key="{707d365c-bf9c-4081-8159-426f117386da}" label="Précision et calé SISOL (code erreur : 453 et 457)">
          <rule filter="&quot;fk_status&quot; != 13002 AND &quot;fk_precision&quot; NOT IN (1102,1104,1101)" key="{77bacac1-4a06-4df2-8c27-18a15fccdc38}" symbol="24" label="Le champ précision ne doit pas être null ou inconnu (code erreur : 453)"/>
          <rule filter="&quot;fk_status&quot; != 13002 AND (((&quot;usr_cale_sisol&quot; is true AND &quot;fk_precision&quot; NOT IN (1102,1104)) &#xd;&#xa;OR (&quot;usr_cale_sisol&quot; is false AND &quot;fk_precision&quot; IN (1102,1104)) AND &quot;fk_type&quot;  != 92005) &#xd;&#xa;OR (&quot;fk_type&quot;  = 92005 AND &quot;usr_cale_sisol&quot; = 't'))" key="{8c953846-d14f-4a95-851f-b61bc8a95be3}" symbol="25" label="Calé SISOL mais imprécis (code erreur : 457)"/>
        </rule>
        <rule key="{2a9123dc-6a47-49d3-83e6-61d3d69918a5}" label="Contrôle altitude et précision altimétrique">
          <rule filter=" &quot;fk_status&quot; != 13002 AND ( (&quot;z&quot; >0 AND  &quot;fk_precisionalti&quot; NOT IN (1121 , 11021)) OR ((&quot;z&quot; = 0 OR  &quot;z&quot; is null) AND &quot;fk_precisionalti&quot; != 102))" key="{ffe67d33-4b3a-4456-8d60-117d9f6a4f34}" symbol="26" label="Contrôle précision altimétrique (code erreur 454)"/>
          <rule filter=" &quot;fk_status&quot; != 13002 AND (&quot;z&quot;  !=0 AND &quot;z&quot;  &lt; 300 OR &quot;z&quot; > 1500)" key="{76b45804-1443-41d0-84ce-dd5dba449243}" symbol="27" label="Contrôle altitude incohérente &lt; 300 et > 1500  (code erreur : 456)"/>
          <rule filter="&quot;fk_type&quot; != 92005 AND &quot;fk_status&quot; != 13002 AND &quot;z&quot;  = 0 AND  &quot;year&quot; > 2012 AND  &quot;fk_precision&quot; = 1102" key="{125b12b2-5844-4b71-b69f-c8f1c7ecc500}" symbol="28" label="Contrôle altitude (code erreur : 101)"/>
          <rule filter="&quot;fk_type&quot; != 92005 AND &quot;fk_status&quot; != 13002 AND &quot;z&quot;  = 0 AND  &quot;year&quot; > 2012 AND  &quot;fk_precision&quot;  = 1104" key="{8f06dfae-a840-4bc0-adb1-50291db50f78}" symbol="29" label="Contrôle altitude (code erreur : 102)"/>
        </rule>
        <rule filter="&quot;fk_status&quot; IS NULL OR &quot;fk_status&quot;  NOT IN (103,1301,13002,13003)" key="{528c275d-f687-46bf-af66-e1e225fa0bd5}" symbol="30" label="Statut inconnu (code erreur : 458)"/>
        <rule filter=" (&quot;year&quot; is null AND &quot;fk_status&quot; != 13002) OR (&quot;year&quot; != 0 AND &quot;year&quot; &lt; 1870 ) OR (&quot;year&quot; > year( now()) )" key="{bc59ce1e-8649-421d-968b-a9915d8e82cf}" symbol="31" label="Contrôle année de pose (code erreur : 465)"/>
        <rule key="{e12f37b2-4d98-4281-a9d8-131fe5e482c1}" label="Contrôle année d'archive (code erreur : 466)">
          <rule filter="&quot;year_end&quot; &lt; &quot;year&quot; AND &quot;year_end&quot; > 0" key="{6a6cbd32-100d-4d0c-adbb-3015f201cec8}" symbol="32" label="année archive plus petite que l'année de pose"/>
          <rule filter="&quot;year_end&quot; > 0 AND &quot;fk_status&quot; != 13002" key="{fd1cccda-d8c2-4b2d-9eb1-7a19807bc74a}" symbol="33" label="statut non archivé mais année d'archivage"/>
          <rule filter="&quot;year_end&quot; is null AND &quot;fk_status&quot; = 13002" key="{57ebc831-74a5-479f-8659-ad1b97f33d75}" symbol="34" label="statut archivé mais pas d''année d''archivage"/>
        </rule>
        <rule filter="&quot;fk_status&quot; NOT IN (103,13002)  AND (&quot;fk_type&quot; = 9204 AND ( &quot;usr_elbow_angle&quot;  not in (0,5,11,15,22,30,45,60,90) OR &quot;usr_elbow_angle&quot; is null)) &#xd;&#xa;OR (&quot;fk_type&quot; != 9204 AND &quot;usr_elbow_angle&quot; is not null)" key="{a2cafb14-f4e6-4838-acd5-8650c61e3a3c}" symbol="35" label="Coude et angle (code erreur : 459)"/>
        <rule filter="&quot;fk_status&quot; !=  13002  AND  &quot;usr_part_depth&quot; is not null AND  (&quot;usr_part_depth&quot; &lt; 15 OR &quot;usr_part_depth&quot; > 599)" key="{be67b1bf-121f-48e2-89c6-40da84366286}" symbol="36" label="Profondeur (code erreur : 460)"/>
        <rule filter="&quot;fk_status&quot; NOT IN (103,13002) AND (&quot;fk_type&quot; = 9206 AND  &quot;usr_reduction_diam&quot; is null OR &quot;usr_reduction_diam&quot; is not null AND &quot;fk_type&quot; != 9206 OR &#xd;&#xa;(strpos( &quot;usr_reduction_diam&quot; , '/') &lt; 3 OR  strpos( &quot;usr_reduction_diam&quot; , '/') > 4 OR   length( substr( &quot;usr_reduction_diam&quot; ,  strpos( &quot;usr_reduction_diam&quot; , '/')+1,10)) &lt; 2 OR&#xd;&#xa; length( substr( &quot;usr_reduction_diam&quot; ,  strpos( &quot;usr_reduction_diam&quot; , '/')+1,10))  >3))" key="{b9cd075b-d803-4fe6-a303-b4de7080ddea}" symbol="37" label="Reduction (code erreur : 461)"/>
        <rule filter="&quot;fk_status&quot; != 13002 AND  &quot;usr_elbow_vertical&quot;  = 't' AND  &quot;usr_elbow_angle&quot; is null" key="{3348b759-712b-4e68-a5ed-b92266701907}" symbol="38" label="Coude vertical (code erreur : 463)"/>
        <rule description="Suppresion de prise (code erreur : 464)" filter="&quot;fk_status&quot; NOT IN (13002,103) AND &#xd;&#xa; (&quot;fk_type&quot; = 92006 AND  &quot;usr_removal_socket&quot;  is  null  &#xd;&#xa;OR &quot;fk_type&quot; != 92006  AND  &quot;usr_removal_socket&quot; = 't')" key="{78466247-5576-486b-a79c-d5d0b44c6475}" symbol="39" label="Suppresion de prise (code erreur : 464)"/>
      </rule>
    </rules>
    <symbols>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="0,0,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="line"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.75"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.07&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.1&#xd;&#xa;END"/>
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
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="0,0,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="line"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.75"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.07&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.1&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="10">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="130,198,86,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="saisie/Mise_terre.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.07&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.1&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="11">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="165,0,41,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="line"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="165,0,41,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.75"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.07&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.1&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="12">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="165,0,41,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="line"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="165,0,41,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.07&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.1&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="13">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="16,204,138,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="saisie/Reduction_bleu.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.07&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.1&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="14">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="243,22,33,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="saisie/Debut-fin_tubage-betonnage.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.08&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.114&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="15">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="0,165,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="line"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,165,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.75"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.07&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.1&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="16">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,165,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2.5"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.08&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.06&#xd;&#xa;WHEN  $scale > 132 THEN 0.04&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,165,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,165,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.04&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.03&#xd;&#xa;WHEN  $scale > 132 THEN 0.02&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="17">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,165,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2.5"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.08&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.06&#xd;&#xa;WHEN  $scale > 132 THEN 0.04&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,165,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,165,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.04 &#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.03&#xd;&#xa;WHEN  $scale > 132 THEN 0.02&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="18">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="172,86,155,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="saisie/Manchon_raccordement_vert.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.08&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.114&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="19">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="0,165,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="line"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,165,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.07&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.1&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="2">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="0,0,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="line"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.75"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.07&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.1&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="20">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="16,204,138,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="saisie/Reduction_vert.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.07&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.1&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="21">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="243,22,33,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="saisie/Debut-fin_tubage-betonnage_vert.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.08&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.114&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="22">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="17,247,25,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="1,255,1,0"/>
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
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="251,2,222,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,248,0,0"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="23">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="24">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="180"/>
          <prop k="color" v="255,255,255,255"/>
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="25">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="26">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="27">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="28">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="29">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="3">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,0,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.16"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.08&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.06&#xd;&#xa;WHEN  $scale > 132 THEN 0.04&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="0,0,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,0,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.8"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.04&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.03&#xd;&#xa;WHEN  $scale > 132 THEN 0.02&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="30">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="31">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="32">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="33">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="34">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="35">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="36">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="37">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="38">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="39">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="4">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="165,0,41,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.08&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.06&#xd;&#xa;WHEN  $scale > 132 THEN 0.04&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="165,0,41,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="165,0,41,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.04 &#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.03&#xd;&#xa;WHEN  $scale > 132 THEN 0.02&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="5">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="165,0,41,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.08&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.06&#xd;&#xa;WHEN  $scale > 132 THEN 0.04&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="165,0,41,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="165,0,41,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.04 &#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.03&#xd;&#xa;WHEN  $scale > 132 THEN 0.02&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="6">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="165,0,41,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.08&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.06&#xd;&#xa;WHEN  $scale > 132 THEN 0.04&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="165,0,41,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="165,0,41,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.04 &#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.03&#xd;&#xa;WHEN  $scale > 132 THEN 0.02&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="7">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="251,251,2,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="165,0,41,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.08&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.06&#xd;&#xa;WHEN  $scale > 132 THEN 0.04&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="165,0,41,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="165,0,41,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.04 &#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.03&#xd;&#xa;WHEN  $scale > 132 THEN 0.02&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="8">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="165,0,41,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="3"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.08&#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.06&#xd;&#xa;WHEN  $scale > 132 THEN 0.04&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="165,0,41,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="165,0,41,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN $scale &lt;= 33 THEN 0.04 &#xd;&#xa;WHEN $scale > 33 and  $scale &lt;=132 THEN 0.03&#xd;&#xa;WHEN  $scale > 132 THEN 0.02&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="9">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="angle_dd_active" v="1"/>
          <prop k="angle_dd_expression" v=""/>
          <prop k="angle_dd_field" v="orientation"/>
          <prop k="angle_dd_useexpr" v="0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="saisie/Manchon_raccordement_bleu.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="offset_unit" v="MapUnit"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_width" v="1"/>
          <prop k="outline_width_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MapUnit"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale  >33 THEN 0.08&#xd;&#xa;WHEN  $scale  &lt;=33 THEN 0.114&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{6c6736b6-96f8-40ca-a0ae-850b87ae0b3d}">
      <rule scalemaxdenom="201" description="Angle" filter="&quot;fk_type&quot; = 9204 AND (&quot;usr_elbow_vertical&quot; IS NULL OR &quot;usr_elbow_vertical&quot; =  'f' ) &#xd;&#xa;" key="{1a600d0d-918c-443a-a94d-fff644934758}" scalemindenom="1">
        <settings>
          <text-style fontItalic="0" fontFamily="MS Shell Dlg 2" fontLetterSpacing="0" fontUnderline="0" fontWeight="50" fontStrikeout="0" textTransp="0" previewBkgrdColor="#ffffff" fontCapitals="0" textColor="0,0,0,255" fontSizeInMapUnits="0" isExpression="1" blendMode="0" fontSizeMapUnitScale="0,0,0,0,0,0" fontSize="9" fieldName="usr_elbow_angle || '°' " namedStyle="Normal" fontWordSpacing="0" useSubstitutions="0">
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" multilineAlign="0" rightDirectionSymbol=">" multilineHeight="1" plussign="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" formatNumbers="0" decimals="3" wrapChar="" reverseDirectionSymbol="0"/>
          <text-buffer bufferSize="1" bufferSizeMapUnitScale="0,0,0,0,0,0" bufferColor="251,251,2,255" bufferDraw="1" bufferBlendMode="0" bufferTransp="0" bufferSizeInMapUnits="0" bufferNoFill="0" bufferJoinStyle="64"/>
          <background shapeSizeUnits="1" shapeType="0" shapeSVGFile="" shapeOffsetX="0" shapeOffsetY="0" shapeBlendMode="0" shapeFillColor="255,255,255,255" shapeTransparency="0" shapeSizeMapUnitScale="0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeDraw="0" shapeBorderWidthUnits="1" shapeSizeX="0" shapeSizeY="0" shapeOffsetMapUnitScale="0,0,0,0,0,0" shapeRadiiX="0" shapeRadiiY="0" shapeOffsetUnits="1" shapeRotation="0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255" shapeRotationType="0" shapeBorderWidthMapUnitScale="0,0,0,0,0,0" shapeRadiiMapUnitScale="0,0,0,0,0,0" shapeRadiiUnits="1"/>
          <shadow shadowOffsetMapUnitScale="0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusUnits="1" shadowTransparency="30" shadowColor="0,0,0,255" shadowUnder="0" shadowScale="100" shadowOffsetDist="1" shadowDraw="0" shadowOffsetAngle="135" shadowRadius="1.5" shadowRadiusMapUnitScale="0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOffsetUnits="1"/>
          <placement repeatDistanceUnit="1" placement="0" maxCurvedCharAngleIn="20" repeatDistance="0" distInMapUnits="0" labelOffsetInMapUnits="1" xOffset="0.1" distMapUnitScale="0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" repeatDistanceMapUnitScale="0,0,0,0,0,0" centroidWhole="0" priority="4" yOffset="0.1" offsetType="1" placementFlags="10" centroidInside="0" dist="1.5" angleOffset="0" maxCurvedCharAngleOut="-20" fitInPolygonOnly="0" quadOffset="2" labelOffsetMapUnitScale="0,0,0,0,0,0"/>
          <rendering fontMinPixelSize="3" scaleMax="10000000" fontMaxPixelSize="10000" scaleMin="1" upsidedownLabels="0" limitNumLabels="0" obstacle="1" obstacleFactor="0.4" scaleVisibility="0" fontLimitPixelSize="0" mergeLines="0" obstacleType="0" labelPerPart="0" zIndex="0" maxNumLabels="2000" displayAll="0" minFeatureSize="0"/>
          <data-defined>
            <Size expr="CASE&#xd;&#xa;WHEN  $scale &lt;=33 THEN 9&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=99 THEN 8&#xd;&#xa;WHEN  $scale >99 THEN 6&#xd;&#xa;END" field="" active="true" useExpr="true"/>
            <PositionX expr="" field="label_1_x" active="false" useExpr="false"/>
            <PositionY expr="" field="label_1_y" active="false" useExpr="false"/>
            <Rotation expr="" field="label_1_rotation" active="false" useExpr="false"/>
          </data-defined>
        </settings>
      </rule>
      <rule scalemaxdenom="201" description="Angle V" filter="&quot;fk_type&quot; = 9204 AND &quot;usr_elbow_vertical&quot; =  't' &#xa;" key="{6f4a3b9d-4f93-4b6a-887a-8efbafa25b60}" scalemindenom="1">
        <settings>
          <text-style fontItalic="0" fontFamily="MS Shell Dlg 2" fontLetterSpacing="0" fontUnderline="0" fontWeight="50" fontStrikeout="0" textTransp="0" previewBkgrdColor="#ffffff" fontCapitals="0" textColor="0,0,0,255" fontSizeInMapUnits="0" isExpression="1" blendMode="0" fontSizeMapUnitScale="0,0,0,0,0,0" fontSize="9" fieldName="usr_elbow_angle || '°' ||'V'" namedStyle="Normal" fontWordSpacing="0" useSubstitutions="0">
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" multilineAlign="0" rightDirectionSymbol=">" multilineHeight="1" plussign="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" formatNumbers="0" decimals="3" wrapChar="" reverseDirectionSymbol="0"/>
          <text-buffer bufferSize="1" bufferSizeMapUnitScale="0,0,0,0,0,0" bufferColor="251,251,2,255" bufferDraw="1" bufferBlendMode="0" bufferTransp="0" bufferSizeInMapUnits="0" bufferNoFill="0" bufferJoinStyle="64"/>
          <background shapeSizeUnits="1" shapeType="0" shapeSVGFile="" shapeOffsetX="0" shapeOffsetY="0" shapeBlendMode="0" shapeFillColor="255,255,255,255" shapeTransparency="0" shapeSizeMapUnitScale="0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeDraw="0" shapeBorderWidthUnits="1" shapeSizeX="0" shapeSizeY="0" shapeOffsetMapUnitScale="0,0,0,0,0,0" shapeRadiiX="0" shapeRadiiY="0" shapeOffsetUnits="1" shapeRotation="0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255" shapeRotationType="0" shapeBorderWidthMapUnitScale="0,0,0,0,0,0" shapeRadiiMapUnitScale="0,0,0,0,0,0" shapeRadiiUnits="1"/>
          <shadow shadowOffsetMapUnitScale="0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusUnits="1" shadowTransparency="30" shadowColor="0,0,0,255" shadowUnder="0" shadowScale="100" shadowOffsetDist="1" shadowDraw="0" shadowOffsetAngle="135" shadowRadius="1.5" shadowRadiusMapUnitScale="0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOffsetUnits="1"/>
          <placement repeatDistanceUnit="1" placement="0" maxCurvedCharAngleIn="20" repeatDistance="0" distInMapUnits="0" labelOffsetInMapUnits="1" xOffset="0" distMapUnitScale="0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" repeatDistanceMapUnitScale="0,0,0,0,0,0" centroidWhole="0" priority="3" yOffset="0" offsetType="0" placementFlags="10" centroidInside="0" dist="1.5" angleOffset="0" maxCurvedCharAngleOut="-20" fitInPolygonOnly="0" quadOffset="4" labelOffsetMapUnitScale="0,0,0,0,0,0"/>
          <rendering fontMinPixelSize="3" scaleMax="10000000" fontMaxPixelSize="10000" scaleMin="1" upsidedownLabels="0" limitNumLabels="0" obstacle="1" obstacleFactor="0.5" scaleVisibility="0" fontLimitPixelSize="0" mergeLines="0" obstacleType="0" labelPerPart="0" zIndex="0" maxNumLabels="2000" displayAll="0" minFeatureSize="0"/>
          <data-defined>
            <Size expr="CASE&#xd;&#xa;WHEN  $scale &lt;=33 THEN 9&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=99 THEN 8&#xd;&#xa;WHEN  $scale >99 THEN 6&#xd;&#xa;END" field="" active="true" useExpr="true"/>
          </data-defined>
        </settings>
      </rule>
      <rule scalemaxdenom="201" description="Assemblages" filter="&quot;fk_type&quot; IN (92001,92002,92008,92012,92013,92014,92015,92016,92017,92018)" key="{b2e75a44-1929-494b-8425-e7f012b91693}" scalemindenom="1">
        <settings>
          <text-style fontItalic="0" fontFamily="MS Shell Dlg 2" fontLetterSpacing="0" fontUnderline="0" fontWeight="50" fontStrikeout="0" textTransp="0" previewBkgrdColor="#ffffff" fontCapitals="0" textColor="0,0,0,255" fontSizeInMapUnits="0" isExpression="0" blendMode="0" fontSizeMapUnitScale="0,0,0,0,0,0" fontSize="9" fieldName="type_short_fr" namedStyle="Normal" fontWordSpacing="0" useSubstitutions="0">
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" multilineAlign="0" rightDirectionSymbol=">" multilineHeight="1" plussign="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" formatNumbers="0" decimals="3" wrapChar="" reverseDirectionSymbol="0"/>
          <text-buffer bufferSize="1" bufferSizeMapUnitScale="0,0,0,0,0,0" bufferColor="255,255,255,255" bufferDraw="1" bufferBlendMode="0" bufferTransp="0" bufferSizeInMapUnits="0" bufferNoFill="0" bufferJoinStyle="64"/>
          <background shapeSizeUnits="1" shapeType="0" shapeSVGFile="" shapeOffsetX="0" shapeOffsetY="0" shapeBlendMode="0" shapeFillColor="255,255,255,255" shapeTransparency="0" shapeSizeMapUnitScale="0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeDraw="0" shapeBorderWidthUnits="1" shapeSizeX="0" shapeSizeY="0" shapeOffsetMapUnitScale="0,0,0,0,0,0" shapeRadiiX="0" shapeRadiiY="0" shapeOffsetUnits="1" shapeRotation="0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255" shapeRotationType="0" shapeBorderWidthMapUnitScale="0,0,0,0,0,0" shapeRadiiMapUnitScale="0,0,0,0,0,0" shapeRadiiUnits="1"/>
          <shadow shadowOffsetMapUnitScale="0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusUnits="1" shadowTransparency="30" shadowColor="0,0,0,255" shadowUnder="0" shadowScale="100" shadowOffsetDist="1" shadowDraw="0" shadowOffsetAngle="135" shadowRadius="1.5" shadowRadiusMapUnitScale="0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOffsetUnits="1"/>
          <placement repeatDistanceUnit="1" placement="0" maxCurvedCharAngleIn="20" repeatDistance="0" distInMapUnits="0" labelOffsetInMapUnits="1" xOffset="0" distMapUnitScale="0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" repeatDistanceMapUnitScale="0,0,0,0,0,0" centroidWhole="0" priority="5" yOffset="0" offsetType="0" placementFlags="10" centroidInside="0" dist="1.5" angleOffset="0" maxCurvedCharAngleOut="-20" fitInPolygonOnly="0" quadOffset="4" labelOffsetMapUnitScale="0,0,0,0,0,0"/>
          <rendering fontMinPixelSize="3" scaleMax="10000000" fontMaxPixelSize="10000" scaleMin="1" upsidedownLabels="0" limitNumLabels="0" obstacle="1" obstacleFactor="0.6" scaleVisibility="0" fontLimitPixelSize="0" mergeLines="0" obstacleType="0" labelPerPart="0" zIndex="0" maxNumLabels="2000" displayAll="0" minFeatureSize="0"/>
          <data-defined>
            <Size expr="CASE&#xd;&#xa;WHEN  $scale &lt;=33 THEN 9&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=99 THEN 8&#xd;&#xa;WHEN  $scale >99 THEN 6&#xd;&#xa;END" field="" active="true" useExpr="true"/>
          </data-defined>
        </settings>
      </rule>
      <rule scalemaxdenom="201" description="Réduction Diam/Diam" filter=" &quot;fk_type&quot; =9206" key="{9a23c4c4-12a2-4066-85ec-fb903a19e872}" scalemindenom="1">
        <settings>
          <text-style fontItalic="0" fontFamily="MS Shell Dlg 2" fontLetterSpacing="0" fontUnderline="0" fontWeight="50" fontStrikeout="0" textTransp="0" previewBkgrdColor="#ffffff" fontCapitals="0" textColor="0,0,0,255" fontSizeInMapUnits="0" isExpression="0" blendMode="0" fontSizeMapUnitScale="0,0,0,0,0,0" fontSize="8.25" fieldName="usr_reduction_diam" namedStyle="Normal" fontWordSpacing="0" useSubstitutions="0">
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" multilineAlign="0" rightDirectionSymbol=">" multilineHeight="1" plussign="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" formatNumbers="0" decimals="3" wrapChar="" reverseDirectionSymbol="0"/>
          <text-buffer bufferSize="1" bufferSizeMapUnitScale="0,0,0,0,0,0" bufferColor="255,255,255,255" bufferDraw="0" bufferBlendMode="0" bufferTransp="0" bufferSizeInMapUnits="0" bufferNoFill="0" bufferJoinStyle="64"/>
          <background shapeSizeUnits="1" shapeType="0" shapeSVGFile="" shapeOffsetX="0" shapeOffsetY="0" shapeBlendMode="0" shapeFillColor="255,255,255,255" shapeTransparency="0" shapeSizeMapUnitScale="0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeDraw="0" shapeBorderWidthUnits="1" shapeSizeX="0" shapeSizeY="0" shapeOffsetMapUnitScale="0,0,0,0,0,0" shapeRadiiX="0" shapeRadiiY="0" shapeOffsetUnits="1" shapeRotation="0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255" shapeRotationType="0" shapeBorderWidthMapUnitScale="0,0,0,0,0,0" shapeRadiiMapUnitScale="0,0,0,0,0,0" shapeRadiiUnits="1"/>
          <shadow shadowOffsetMapUnitScale="0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusUnits="1" shadowTransparency="30" shadowColor="0,0,0,255" shadowUnder="0" shadowScale="100" shadowOffsetDist="1" shadowDraw="0" shadowOffsetAngle="135" shadowRadius="1.5" shadowRadiusMapUnitScale="0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOffsetUnits="1"/>
          <placement repeatDistanceUnit="1" placement="0" maxCurvedCharAngleIn="20" repeatDistance="0" distInMapUnits="0" labelOffsetInMapUnits="1" xOffset="0.5" distMapUnitScale="0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" repeatDistanceMapUnitScale="0,0,0,0,0,0" centroidWhole="0" priority="4" yOffset="-0.15" offsetType="0" placementFlags="10" centroidInside="0" dist="1.5" angleOffset="0" maxCurvedCharAngleOut="-20" fitInPolygonOnly="0" quadOffset="4" labelOffsetMapUnitScale="0,0,0,0,0,0"/>
          <rendering fontMinPixelSize="3" scaleMax="10000000" fontMaxPixelSize="10000" scaleMin="1" upsidedownLabels="0" limitNumLabels="0" obstacle="1" obstacleFactor="0.8" scaleVisibility="0" fontLimitPixelSize="0" mergeLines="0" obstacleType="0" labelPerPart="0" zIndex="0" maxNumLabels="2000" displayAll="0" minFeatureSize="0"/>
          <data-defined>
            <Size expr="CASE&#xd;&#xa;WHEN  $scale &lt;=33 THEN 9&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=99 THEN 8&#xd;&#xa;WHEN  $scale >99 THEN 6&#xd;&#xa;END" field="" active="true" useExpr="true"/>
          </data-defined>
        </settings>
      </rule>
      <rule scalemaxdenom="201" description="Profondeur" filter=" &quot;usr_part_depth&quot; > 0" key="{a701cca2-ddef-447f-9132-9ef90e566889}" scalemindenom="1">
        <settings>
          <text-style fontItalic="0" fontFamily="MS Shell Dlg 2" fontLetterSpacing="0" fontUnderline="0" fontWeight="50" fontStrikeout="0" textTransp="0" previewBkgrdColor="#ffffff" fontCapitals="0" textColor="0,0,0,255" fontSizeInMapUnits="0" isExpression="1" blendMode="0" fontSizeMapUnitScale="0,0,0,0,0,0" fontSize="8.25" fieldName="'P '||usr_part_depth" namedStyle="Normal" fontWordSpacing="0" useSubstitutions="0">
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" multilineAlign="3" rightDirectionSymbol=">" multilineHeight="1" plussign="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" formatNumbers="0" decimals="3" wrapChar="" reverseDirectionSymbol="0"/>
          <text-buffer bufferSize="1" bufferSizeMapUnitScale="0,0,0,0,0,0" bufferColor="212,163,39,255" bufferDraw="1" bufferBlendMode="0" bufferTransp="0" bufferSizeInMapUnits="0" bufferNoFill="0" bufferJoinStyle="128"/>
          <background shapeSizeUnits="1" shapeType="0" shapeSVGFile="" shapeOffsetX="0" shapeOffsetY="0" shapeBlendMode="0" shapeFillColor="255,255,255,255" shapeTransparency="0" shapeSizeMapUnitScale="0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeDraw="0" shapeBorderWidthUnits="1" shapeSizeX="0" shapeSizeY="0" shapeOffsetMapUnitScale="0,0,0,0,0,0" shapeRadiiX="0" shapeRadiiY="0" shapeOffsetUnits="1" shapeRotation="0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255" shapeRotationType="0" shapeBorderWidthMapUnitScale="0,0,0,0,0,0" shapeRadiiMapUnitScale="0,0,0,0,0,0" shapeRadiiUnits="1"/>
          <shadow shadowOffsetMapUnitScale="0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusUnits="1" shadowTransparency="30" shadowColor="0,0,0,255" shadowUnder="0" shadowScale="100" shadowOffsetDist="1" shadowDraw="0" shadowOffsetAngle="135" shadowRadius="1.5" shadowRadiusMapUnitScale="0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOffsetUnits="1"/>
          <placement repeatDistanceUnit="1" placement="0" maxCurvedCharAngleIn="25" repeatDistance="0" distInMapUnits="0" labelOffsetInMapUnits="1" xOffset="0" distMapUnitScale="0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" repeatDistanceMapUnitScale="0,0,0,0,0,0" centroidWhole="0" priority="5" yOffset="0" offsetType="0" placementFlags="10" centroidInside="0" dist="2" angleOffset="0" maxCurvedCharAngleOut="-25" fitInPolygonOnly="0" quadOffset="4" labelOffsetMapUnitScale="0,0,0,0,0,0"/>
          <rendering fontMinPixelSize="3" scaleMax="10000000" fontMaxPixelSize="10000" scaleMin="1" upsidedownLabels="0" limitNumLabels="0" obstacle="1" obstacleFactor="1" scaleVisibility="0" fontLimitPixelSize="0" mergeLines="0" obstacleType="0" labelPerPart="0" zIndex="0" maxNumLabels="2000" displayAll="0" minFeatureSize="0"/>
          <data-defined/>
        </settings>
      </rule>
    </rules>
  </labeling>
  <customproperties>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="itemBrowserCurrentItem" value="0"/>
    <property key="itemBrowserSelection" value="[]"/>
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
    <property key="labeling/bufferSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/bufferSizeMapUnitMinScale" value="0"/>
    <property key="labeling/bufferSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/bufferTransp" value="0"/>
    <property key="labeling/centroidInside" value="false"/>
    <property key="labeling/centroidWhole" value="false"/>
    <property key="labeling/decimals" value="3"/>
    <property key="labeling/displayAll" value="false"/>
    <property key="labeling/dist" value="1"/>
    <property key="labeling/distInMapUnits" value="false"/>
    <property key="labeling/distMapUnitMaxScale" value="0"/>
    <property key="labeling/distMapUnitMinScale" value="0"/>
    <property key="labeling/distMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/drawLabels" value="true"/>
    <property key="labeling/enabled" value="true"/>
    <property key="labeling/fieldName" value="label_1_text"/>
    <property key="labeling/fitInPolygonOnly" value="false"/>
    <property key="labeling/fontBold" value="true"/>
    <property key="labeling/fontCapitals" value="0"/>
    <property key="labeling/fontFamily" value="MS Shell Dlg 2"/>
    <property key="labeling/fontItalic" value="true"/>
    <property key="labeling/fontLetterSpacing" value="0"/>
    <property key="labeling/fontLimitPixelSize" value="false"/>
    <property key="labeling/fontMaxPixelSize" value="10000"/>
    <property key="labeling/fontMinPixelSize" value="3"/>
    <property key="labeling/fontSize" value="6"/>
    <property key="labeling/fontSizeInMapUnits" value="false"/>
    <property key="labeling/fontSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/fontSizeMapUnitMinScale" value="0"/>
    <property key="labeling/fontSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/fontStrikeout" value="false"/>
    <property key="labeling/fontUnderline" value="false"/>
    <property key="labeling/fontWeight" value="75"/>
    <property key="labeling/fontWordSpacing" value="0"/>
    <property key="labeling/formatNumbers" value="false"/>
    <property key="labeling/isExpression" value="false"/>
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
    <property key="labeling/namedStyle" value="Bold Italic"/>
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
    <property key="labeling/textColorA" value="255"/>
    <property key="labeling/textColorB" value="130"/>
    <property key="labeling/textColorG" value="130"/>
    <property key="labeling/textColorR" value="130"/>
    <property key="labeling/textTransp" value="0"/>
    <property key="labeling/upsidedownLabels" value="0"/>
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
  <displayfield>[% "id" %][% "fk_type" %]</displayfield>
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
    <DiagramCategory penColor="#000000" labelPlacementMethod="XHeight" penWidth="0" diagramOrientation="Up" sizeScale="0,0,0,0,0,0" minimumSize="0" barWidth="5" penAlpha="255" maxScaleDenominator="1000" backgroundColor="#ffffff" transparency="0" width="15" scaleDependency="Area" backgroundAlpha="255" angleOffset="1440" scaleBasedVisibility="1" enabled="0" height="15" lineSizeScale="0,0,0,0,0,0" sizeType="MM" lineSizeType="MM" minScaleDenominator="1">
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
    <alias field="fk_type" index="1" name="Genre *"/>
    <alias field="identification" index="2" name=""/>
    <alias field="fk_distributor" index="3" name="Entretien à charge de"/>
    <alias field="fk_status" index="4" name="Statut *"/>
    <alias field="fk_precision" index="5" name="Précision planimétrique *"/>
    <alias field="fk_precisionalti" index="6" name="Précision altimétrique *"/>
    <alias field="year" index="7" name="Année de pose"/>
    <alias field="altitude" index="8" name="Altitude"/>
    <alias field="orientation" index="9" name="Orientation symbole"/>
    <alias field="remark" index="10" name="Remarque"/>
    <alias field="fk_node" index="11" name="ID noeud"/>
    <alias field="fk_district" index="12" name="Commune"/>
    <alias field="fk_pressurezone" index="13" name="Zone de pression"/>
    <alias field="fk_printmap" index="14" name="N° de plan"/>
    <alias field="fk_pipe" index="15" name="ID conduite"/>
    <alias field="_district" index="16" name="Commune (auto)"/>
    <alias field="_pressurezone" index="17" name="Zone de pression (auto)"/>
    <alias field="_printmaps" index="18" name=""/>
    <alias field="geometry" index="19" name=""/>
    <alias field="geometry_alt1" index="20" name=""/>
    <alias field="geometry_alt2" index="21" name=""/>
    <alias field="_geometry_alt1_used" index="22" name="Géo-schématique"/>
    <alias field="_geometry_alt2_used" index="23" name=""/>
    <alias field="label_1_visible" index="24" name=""/>
    <alias field="label_1_x" index="25" name=""/>
    <alias field="label_1_y" index="26" name=""/>
    <alias field="label_1_rotation" index="27" name=""/>
    <alias field="label_1_text" index="28" name=""/>
    <alias field="label_2_visible" index="29" name=""/>
    <alias field="label_2_x" index="30" name=""/>
    <alias field="label_2_y" index="31" name=""/>
    <alias field="label_2_rotation" index="32" name=""/>
    <alias field="label_2_text" index="33" name=""/>
    <alias field="fk_folder" index="34" name="N° de chantier"/>
    <alias field="year_end" index="35" name="Année d'archive"/>
    <alias field="fk_object_reference" index="36" name="Niveau"/>
    <alias field="usr_cale_sisol" index="37" name="Calé SISOL"/>
    <alias field="usr_part_depth" index="38" name="Profondeur [cm]"/>
    <alias field="usr_elbow_angle" index="39" name="Angle (coude) [degrés]"/>
    <alias field="usr_elbow_vertical" index="40" name="Angle vertical"/>
    <alias field="usr_reduction_diam" index="41" name="Réduction diam/diam"/>
    <alias field="usr_year_removal_socket" index="42" name="Année suppression de prise"/>
    <alias field="create_date" index="43" name=""/>
    <alias field="last_date" index="44" name=""/>
    <alias field="last_user" index="45" name=""/>
    <alias field="deleted" index="46" name=""/>
    <alias field="usr_removal_socket" index="47" name="Suppression de prise"/>
    <alias field="node__type" index="48" name=""/>
    <alias field="node__orientation" index="49" name=""/>
    <alias field="node__schema_visible" index="50" name=""/>
    <alias field="node__status_active" index="51" name=""/>
    <alias field="node__under_object" index="52" name=""/>
    <alias field="type_short_fr" index="53" name=""/>
    <alias field="z" index="54" name="Coord Z"/>
    <alias field="fk_surveypoint" index="55" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions default="-1"/>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="&quot;id&quot;" sortOrder="0">
    <columns>
      <column width="-1" hidden="1" type="field" name="identification"/>
      <column width="-1" hidden="1" type="field" name="geometry_alt1"/>
      <column width="-1" hidden="1" type="field" name="geometry_alt2"/>
      <column width="-1" hidden="0" type="field" name="id"/>
      <column width="-1" hidden="0" type="field" name="fk_type"/>
      <column width="-1" hidden="0" type="field" name="fk_distributor"/>
      <column width="-1" hidden="0" type="field" name="fk_status"/>
      <column width="-1" hidden="0" type="field" name="fk_precision"/>
      <column width="-1" hidden="0" type="field" name="fk_precisionalti"/>
      <column width="-1" hidden="0" type="field" name="year"/>
      <column width="-1" hidden="0" type="field" name="altitude"/>
      <column width="-1" hidden="0" type="field" name="orientation"/>
      <column width="-1" hidden="0" type="field" name="remark"/>
      <column width="-1" hidden="0" type="field" name="fk_node"/>
      <column width="-1" hidden="0" type="field" name="fk_district"/>
      <column width="-1" hidden="0" type="field" name="fk_pressurezone"/>
      <column width="-1" hidden="0" type="field" name="fk_printmap"/>
      <column width="-1" hidden="0" type="field" name="fk_pipe"/>
      <column width="-1" hidden="0" type="field" name="_district"/>
      <column width="-1" hidden="0" type="field" name="_pressurezone"/>
      <column width="-1" hidden="0" type="field" name="_printmaps"/>
      <column width="-1" hidden="0" type="field" name="_geometry_alt1_used"/>
      <column width="-1" hidden="0" type="field" name="_geometry_alt2_used"/>
      <column width="-1" hidden="0" type="field" name="label_1_visible"/>
      <column width="-1" hidden="0" type="field" name="label_1_x"/>
      <column width="-1" hidden="0" type="field" name="label_1_y"/>
      <column width="-1" hidden="0" type="field" name="label_1_rotation"/>
      <column width="-1" hidden="0" type="field" name="label_1_text"/>
      <column width="-1" hidden="0" type="field" name="label_2_visible"/>
      <column width="-1" hidden="0" type="field" name="label_2_x"/>
      <column width="-1" hidden="0" type="field" name="label_2_y"/>
      <column width="-1" hidden="0" type="field" name="label_2_rotation"/>
      <column width="-1" hidden="0" type="field" name="label_2_text"/>
      <column width="-1" hidden="0" type="field" name="fk_folder"/>
      <column width="-1" hidden="0" type="field" name="year_end"/>
      <column width="-1" hidden="0" type="field" name="fk_object_reference"/>
      <column width="-1" hidden="0" type="field" name="usr_cale_sisol"/>
      <column width="-1" hidden="0" type="field" name="usr_part_depth"/>
      <column width="-1" hidden="0" type="field" name="usr_elbow_angle"/>
      <column width="-1" hidden="0" type="field" name="usr_elbow_vertical"/>
      <column width="-1" hidden="0" type="field" name="usr_reduction_diam"/>
      <column width="-1" hidden="0" type="field" name="usr_year_removal_socket"/>
      <column width="-1" hidden="0" type="field" name="node__type"/>
      <column width="-1" hidden="0" type="field" name="node__orientation"/>
      <column width="-1" hidden="0" type="field" name="node__schema_visible"/>
      <column width="-1" hidden="0" type="field" name="node__status_active"/>
      <column width="-1" hidden="0" type="field" name="node__under_object"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" hidden="0" type="field" name="geometry"/>
      <column width="-1" hidden="0" type="field" name="z"/>
      <column width="-1" hidden="0" type="field" name="fk_surveypoint"/>
      <column width="-1" hidden="0" type="field" name="type_short_fr"/>
      <column width="-1" hidden="0" type="field" name="create_date"/>
      <column width="-1" hidden="0" type="field" name="last_date"/>
      <column width="-1" hidden="0" type="field" name="last_user"/>
      <column width="-1" hidden="0" type="field" name="deleted"/>
      <column width="-1" hidden="0" type="field" name="usr_removal_socket"/>
    </columns>
  </attributetableconfig>
  <editform>../qgis_v2</editform>
  <editforminit>my_form_open</editforminit>
  <editforminitcodesource>1</editforminitcodesource>
  <editforminitfilepath>//geodata.lausanne.ch/data/QGIS_projet/eauservice/qwat_lausanne/function/init_part.py</editforminitfilepath>
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
  <featformsuppress>1</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Général" groupBox="0" columnCount="1">
      <attributeEditorField showLabel="1" index="0" name="id"/>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="7" name="year"/>
        <attributeEditorField showLabel="1" index="35" name="year_end"/>
        <attributeEditorField showLabel="1" index="4" name="fk_status"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="1">
        <attributeEditorField showLabel="1" index="1" name="fk_type"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Détails" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="39" name="usr_elbow_angle"/>
        <attributeEditorField showLabel="1" index="40" name="usr_elbow_vertical"/>
        <attributeEditorField showLabel="1" index="38" name="usr_part_depth"/>
        <attributeEditorField showLabel="1" index="41" name="usr_reduction_diam"/>
        <attributeEditorField showLabel="1" index="47" name="usr_removal_socket"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Géométrie" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="5" name="fk_precision"/>
        <attributeEditorField showLabel="1" index="37" name="usr_cale_sisol"/>
        <attributeEditorField showLabel="1" index="6" name="fk_precisionalti"/>
        <attributeEditorField showLabel="1" index="54" name="z"/>
        <attributeEditorField showLabel="1" index="11" name="fk_node"/>
        <attributeEditorField showLabel="1" index="15" name="fk_pipe"/>
        <attributeEditorField showLabel="1" index="9" name="orientation"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" index="10" name="remark"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <widgets>
    <widget name="conduites_fk_district">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="conduites_fk_pressurezone">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
    <widget name="pipe_fk_district">
      <config>
        <option key="AllowMulti" value="0"/>
        <option key="AllowNull" value="1"/>
        <option key="FilterExpression" value=""/>
        <option key="Key" value="id"/>
        <option key="Layer" value="district20130304110004764"/>
        <option key="OrderByValue" value="1"/>
        <option key="UseCompleter" value="0"/>
        <option key="Value" value="name"/>
      </config>
    </widget>
    <widget name="pipe_fk_pressurezone">
      <config>
        <option key="AllowMulti" value="0"/>
        <option key="AllowNull" value="1"/>
        <option key="FilterExpression" value=""/>
        <option key="Key" value="id"/>
        <option key="Layer" value="pressurezone20130417133612105"/>
        <option key="OrderByValue" value="1"/>
        <option key="UseCompleter" value="0"/>
        <option key="Value" value="name"/>
      </config>
    </widget>
    <widget name="relation_element_mesures">
      <config/>
    </widget>
  </widgets>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <defaults>
    <default field="id" expression=""/>
    <default field="fk_type" expression="101"/>
    <default field="identification" expression=""/>
    <default field="fk_distributor" expression=""/>
    <default field="fk_status" expression="103"/>
    <default field="fk_precision" expression="1104"/>
    <default field="fk_precisionalti" expression="CASE WHEN  z($geometry) > 0  THEN 11021&#xd;&#xa;ELSE 102 END"/>
    <default field="year" expression=""/>
    <default field="altitude" expression=""/>
    <default field="orientation" expression=""/>
    <default field="remark" expression="''"/>
    <default field="fk_node" expression=""/>
    <default field="fk_district" expression=""/>
    <default field="fk_pressurezone" expression=""/>
    <default field="fk_printmap" expression=""/>
    <default field="fk_pipe" expression=""/>
    <default field="_district" expression=""/>
    <default field="_pressurezone" expression=""/>
    <default field="_printmaps" expression=""/>
    <default field="geometry" expression="''"/>
    <default field="geometry_alt1" expression="''"/>
    <default field="geometry_alt2" expression="''"/>
    <default field="_geometry_alt1_used" expression=""/>
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
    <default field="fk_folder" expression=""/>
    <default field="year_end" expression=" if( &quot;fk_status&quot; = 13002, year(now()), NULL)"/>
    <default field="fk_object_reference" expression=""/>
    <default field="usr_cale_sisol" expression="'t'"/>
    <default field="usr_part_depth" expression=""/>
    <default field="usr_elbow_angle" expression=""/>
    <default field="usr_elbow_vertical" expression="'f'"/>
    <default field="usr_reduction_diam" expression=""/>
    <default field="usr_year_removal_socket" expression=""/>
    <default field="create_date" expression=""/>
    <default field="last_date" expression=""/>
    <default field="last_user" expression=""/>
    <default field="deleted" expression=""/>
    <default field="usr_removal_socket" expression=""/>
    <default field="node__type" expression=""/>
    <default field="node__orientation" expression=""/>
    <default field="node__schema_visible" expression=""/>
    <default field="node__status_active" expression=""/>
    <default field="node__under_object" expression=""/>
    <default field="type_short_fr" expression=""/>
    <default field="z" expression="z(  $geometry ) "/>
    <default field="fk_surveypoint" expression=""/>
  </defaults>
  <previewExpression>COALESCE( "id", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>0</layerGeometryType>
</qgis>
