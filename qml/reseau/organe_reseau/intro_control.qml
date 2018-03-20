<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.13" simplifyAlgorithm="0" minimumScale="0" maximumScale="2501" simplifyDrawingHints="0" minLabelScale="1" maxLabelScale="1e+08" simplifyDrawingTol="1" readOnly="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="1" simplifyLocal="1" scaleBasedLabelVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="id">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_type">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't'" UseCompleter="0" fieldEditable="1" Key="id" constraint="( &quot;usr_secondary_subscriber&quot; IN ('t', 'f')  AND  &quot;fk_type&quot; IN (102,9402,9403) AND  &quot;usr_fk_meter_location&quot; != 95002) OR&#xd;&#xa;( &quot;usr_secondary_subscriber&quot; IN ('t', 'f')  AND  &quot;fk_type&quot; IN (102,9401) AND  &quot;usr_fk_meter_location&quot; IN (102,95002,95003,95004)) OR&#xd;&#xa;( &quot;usr_secondary_subscriber&quot; IN ('f')  AND  &quot;fk_type&quot; IN (102,9404) AND  &quot;usr_fk_meter_location&quot; != 95005) OR&#xd;&#xa;( &quot;usr_secondary_subscriber&quot; IN ('f')  AND  &quot;fk_type&quot; IN (102,94001) AND  &quot;usr_fk_meter_location&quot;  IN (102,95002,95003,95004)) OR&#xd;&#xa;( &quot;usr_secondary_subscriber&quot; IN ('t')  AND  &quot;fk_type&quot; IN (102,94002) AND  &quot;usr_fk_meter_location&quot;  IN (102,95003,95004,95005)) OR&#xd;&#xa;( &quot;usr_secondary_subscriber&quot; IN ('t')  AND  &quot;fk_type&quot; IN (102,94003) AND  &quot;usr_fk_meter_location&quot;  IN (102,95005))" Layer="vl_subscriber_type20130304110011480" Value="value_fr" labelOnTop="0" constraintDescription="Obligatoire, respecter les combinaisons possible" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_status">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't' AND  &quot;id&quot;  &lt;>  13002 " UseCompleter="0" fieldEditable="1" Key="id" constraint="(&quot;fk_status&quot; != 103 AND &quot;usr_secondary_subscriber&quot; != 't') OR (&quot;fk_status&quot; is not null AND &quot;usr_secondary_subscriber&quot; = 't')" Layer="vl_status20130304110011436" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire, pas d'intro principale en nouveau relevé" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="RelationReference" name="fk_pipe">
      <widgetv2config OrderByValue="0" fieldEditable="1" AllowAddFeatures="0" ShowForm="0" Relation="relation_pipe_subscriber_def" ReadOnly="1" constraint="" MapIdentification="1" labelOnTop="0" constraintDescription="" notNull="0" AllowNULL="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="identification">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="_identification_full">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="parcel">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="remark">
      <widgetv2config IsMultiline="1" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_district">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="id" constraint=" &quot;fk_district&quot; NOT IN (396,397,399) OR  &quot;fk_district&quot;  is null" Layer="district20130304110004764" Value="name" labelOnTop="0" constraintDescription="Utilisez uniquement les communes actives" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_pressurezone">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;usr_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="&quot;fk_pressurezone&quot; NOT IN (103,107,122,130,134,135,136,140,141)" Layer="pressurezone20130417133612105" Value="name" labelOnTop="0" constraintDescription="Utilisez uniquement les zones de pression actives" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_printmap">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
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
    <edittype widgetv2type="Hidden" name="fk_distributor">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_folder">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="year">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="(((&quot;year&quot; > 1860 AND  &quot;year&quot;  &lt;=  year( now() ))  OR ( &quot;year&quot; =0)) AND  &quot;fk_status&quot; IN (103, 1301))   OR ((&quot;year&quot; is null OR &quot;year&quot; is not null) AND  &quot;fk_status&quot; NOT IN (103, 1301) )" UseHtml="0" labelOnTop="0" constraintDescription="Champ obligatoire, année doit être entre 1860 et l'année actuel ou 0 si inconnu" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="year_end">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_precision">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't'" UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;usr_cale_sisol&quot;  =  't'  AND  &quot;fk_precision&quot;  IN (1102, 1104)) OR (&quot;usr_cale_sisol&quot;  =  'f' AND &quot;fk_precision&quot;  IN (1101))" Layer="vl_precision20130304110011372" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire, si calé SISOL, précis ou reporté, sinon imprécis" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_precisionalti">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't'" UseCompleter="0" fieldEditable="1" Key="id" constraint=" (z(  $geometry ) > 300 AND  &quot;fk_precisionalti&quot;  IN (1121,11021)) OR ((z(  $geometry ) is null OR z(  $geometry ) = 0)  AND &quot;fk_precisionalti&quot;  IN (102))" Layer="vl_precisionalti20131211161429510" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire, si l'altitude est null ou égal à 0  la précision altimétrique est inconnu. Sinon la précision doit être renseignée comme précis ou imprécis." AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_object_reference">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="altitude">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="fk_node">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_cale_sisol">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint=" (&quot;usr_cale_sisol&quot;  = 't' AND  &quot;fk_precision&quot;  IN (1102, 1104)) OR (&quot;usr_cale_sisol&quot;  = 'f' AND &quot;fk_precision&quot;  IN (102,1101))" CheckedState="t" labelOnTop="0" constraintDescription="Champ obligatoire, si calé SISOL, l'objet est précis ou reporté, sinon imprécis" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_meter_location">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;vl_active&quot;  =  't'" UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_meter_location20160525153424569" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_no_address">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="( &quot;fk_status&quot; = 1301 AND  &quot;fk_type&quot; = 9401 AND   &quot;usr_no_address&quot;  is not null  AND  &quot;usr_fk_street_address&quot; is not null) OR &#xd;&#xa;( (&quot;fk_status&quot; != 1301 OR  &quot;fk_type&quot; != 9401) AND  ( &quot;usr_no_address&quot;  is not null  AND  &quot;usr_fk_street_address&quot; is not null OR  &quot;usr_no_address&quot;  is null AND &quot;usr_fk_street_address&quot; is null OR  &quot;usr_no_address&quot;  is null  AND  &quot;usr_fk_street_address&quot; is not null ))&#xd;&#xa;" UseHtml="0" labelOnTop="0" constraintDescription="obligatoire pour les intros en service de type bâtiment" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_no_or_sap">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_no_sap">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint=" (&quot;year&quot; >= 2017 AND  &quot;usr_no_sap&quot; is not null  AND &quot;fk_status&quot; = 1301) OR &#xd;&#xa;(&quot;year&quot; >= 2017 AND  (&quot;usr_no_sap&quot;  is not null OR &quot;usr_no_sap&quot; is null )  AND &quot;fk_status&quot; != 1301) OR &#xd;&#xa; ((&quot;year&quot; &lt; 2017 OR &quot;year&quot; is null)  AND  (&quot;usr_no_sap&quot;  is not null OR &quot;usr_no_sap&quot;  is null )) " UseHtml="0" labelOnTop="0" constraintDescription="Obligatoire, si intro récente (2017) et en service" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_sprinkler">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_partnership">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't'" UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_partnership20160525153425229" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_secondary_subscriber">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="(&quot;fk_status&quot; != 13002 AND   &quot;usr_secondary_subscriber&quot;   is not null) OR (&quot;fk_status&quot; = 13002 AND   (&quot;usr_secondary_subscriber&quot; is null OR  &quot;usr_secondary_subscriber&quot;  is not null ))" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="1"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_sensitive_customer">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;vl_active&quot;  =  't'" UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_sensitive_customer20160525153425277" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_addition_supply">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_fk_obj_goeland">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ExternalResource" name="usr_link_photos">
      <widgetv2config fieldEditable="1" DocumentViewer="1" FileWidgetButton="1" DocumentViewerWidth="0" constraint="" FileWidget="1" DocumentViewerHeight="0" StorageMode="0" labelOnTop="0" constraintDescription="" notNull="0" FileWidgetFilter=""/>
    </edittype>
    <edittype widgetv2type="RelationReference" name="usr_fk_street_address">
      <widgetv2config OrderByValue="1" fieldEditable="1" AllowAddFeatures="0" ShowForm="0" Relation="relation_subscriber_street" ReadOnly="0" constraint="( &quot;fk_status&quot; = 1301 AND  &quot;fk_type&quot; = 9401 AND  &quot;usr_fk_street_address&quot; is not null) OR &#xd;&#xa;( (&quot;fk_status&quot; != 1301 OR  &quot;fk_type&quot; != 9401) AND  (&quot;usr_fk_street_address&quot; is not null OR &quot;usr_fk_street_address&quot; is null))" MapIdentification="0" labelOnTop="0" constraintDescription="Obligatoire pour les intro en service et de type bâtiment" notNull="0" AllowNULL="1">
        <FilterFields ChainFilters="0">
          <field name="ville"/>
        </FilterFields>
      </widgetv2config>
    </edittype>
    <edittype widgetv2type="Hidden" name="_district">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_location">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_lc_sap">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_update_hb">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
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
    <edittype widgetv2type="Hidden" name="fk_surveypoint">
      <widgetv2config fieldEditable="0" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="z">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint=" (z(  $geometry ) > 300 AND  &quot;fk_precisionalti&quot;  IN (1121,11021)) OR ((z(  $geometry ) is null OR z(  $geometry ) = 0)  AND &quot;fk_precisionalti&quot;  IN (102,103))" UseHtml="0" labelOnTop="0" constraintDescription="L'altitude de l'objet doit être renseigné en éditant sa géométrie (coordonnées) , sinon l'alitude est de 0." notNull="0"/>
    </edittype>
    <edittype widgetv2type="ExternalResource" name="image_zpression">
      <widgetv2config RelativeStorage="2" fieldEditable="0" DocumentViewer="1" FileWidgetButton="0" DocumentViewerWidth="200" constraint="" FileWidget="0" DefaultRoot="\\lausanne.ch\data\VDL\Apps\TOPOBASE\eauservice\Pictures\" DocumentViewerHeight="20" StorageMode="0" labelOnTop="0" constraintDescription="" notNull="0" FileWidgetFilter=""/>
    </edittype>
    <edittype widgetv2type="ExternalResource" name="lien_goeland">
      <widgetv2config fieldEditable="0" DocumentViewer="0" FileWidgetButton="0" UseLink="1" FullUrl="1" constraint="" FileWidget="1" StorageMode="0" labelOnTop="0" constraintDescription="" notNull="0" FileWidgetFilter=""/>
    </edittype>
  </edittypes>
  <renderer-v2 forceraster="0" symbollevels="0" type="RuleRenderer" enableorderby="0">
    <rules key="{610ee60f-1aad-49fb-a3fa-d7165e5e1ea9}">
      <rule key="{e7e7d489-6baa-4b16-a58f-09cc82e132d6}" label="Modèle saisie">
        <rule filter="&quot;fk_status&quot; = 1301" key="{38ab4253-e1fa-4d52-9dc7-588da13583d0}" label="En service">
          <rule description="Introductions principales" filter=" &quot;usr_secondary_subscriber&quot;  =  'f' " key="{17f3a974-a9e7-411c-99b9-bfadb2ab6247}" label="Principale">
            <rule description="Principale bâtiment, chambre en terre, sans compteur" filter="  &quot;usr_fk_meter_location&quot;   IN (102,95002,95004,95006) OR &quot;usr_fk_meter_location&quot; is null" key="{5329cedd-006e-4a56-85af-ca3de61c4dcd}" symbol="0" label="Principale"/>
            <rule description="Appareil compact multifonctions" filter=" &quot;usr_fk_meter_location&quot;  = 95003" key="{f9a8f0cf-6632-4b7b-bbe8-9ff7e72dbfe9}" symbol="1" label="Citerneau"/>
          </rule>
          <rule description="Introductions secondaires" filter="  &quot;usr_secondary_subscriber&quot;  =  't' " key="{bd50fa80-8c84-46e5-be1b-3d4a67f966d9}" label="Secondaires">
            <rule description="Point de connexion pour marché, manifestation." filter=" &quot;fk_type&quot; =94002" key="{45bc7804-e58b-4e04-a1f9-2b63585f8ec0}" symbol="2" label="Point eau"/>
            <rule filter=" &quot;fk_type&quot; =94003" key="{c097618d-516b-47c3-8ad8-56e20898abad}" symbol="3" label="Robinet, Buse d'arrosage"/>
            <rule filter=" &quot;fk_type&quot; IN (9401,9402,9404)" key="{a5123dda-8aa2-4434-8854-53a9ace6d346}" symbol="4" label="Secondaire bâtiment, WC, commande arrosage"/>
            <rule filter=" &quot;fk_type&quot; = 9403" key="{c00d09ec-dd7a-427d-84e2-5d9685fe9d13}" symbol="5" label="Fontaine, douche"/>
          </rule>
        </rule>
        <rule filter=" &quot;fk_status&quot;   = 103" key="{ab220a1a-7f10-4f6d-a3e8-2c4361a1806f}" label="Nouveau relevé">
          <rule description="Introductions principales" filter=" &quot;usr_secondary_subscriber&quot;  =  'f' " key="{77ef20a4-5b3b-4a65-8b2f-8b2b0fdc5517}" label="Principale">
            <rule description="Principale bâtiment, chambre en terre, sans compteur" filter="  &quot;usr_fk_meter_location&quot;   IN (95002,95004,95006)" key="{e39bdc48-5697-4e95-8637-6cd57c81c8d5}" symbol="6" label="Principale"/>
            <rule description="Appareil compact multifonctions" filter=" &quot;usr_fk_meter_location&quot;  = 95003" key="{6e2cecec-6382-4e89-a251-02ac6b8c5681}" symbol="7" label="Citerneau"/>
          </rule>
          <rule description="Introductions secondaires" filter="  &quot;usr_secondary_subscriber&quot;  =  't' " key="{c5699e34-963f-438b-855a-b0652473dd66}" label="Secondaires">
            <rule description="Point de connexion pour marché, manifestation." filter=" &quot;fk_type&quot; =94002" key="{3febea74-f6e3-4f03-8f3a-503797113094}" symbol="8" label="Point eau"/>
            <rule filter=" &quot;fk_type&quot; =94003" key="{622a8ac9-692b-4947-a859-d78f6ac55088}" symbol="9" label="Robinet, buse d'arrosage"/>
            <rule filter=" &quot;fk_type&quot; IN (9401,9402,9404)" key="{87528708-9c30-4265-a646-b1be67a20e14}" symbol="10" label="Secondaire bâtiment, WC, commande arrosage"/>
            <rule filter=" &quot;fk_type&quot; = 9403" key="{975d0873-6b5c-4288-916a-4365d9a6b3fc}" symbol="11" label="Fontaine, douche"/>
          </rule>
        </rule>
        <rule filter=" &quot;fk_status&quot;   NOT IN (103,1301,13002) OR  &quot;fk_status&quot; is null" key="{d7a2960d-9740-4886-8b55-35e6b8026e19}" symbol="12" label="Inconnu, projet, en attente, à contrôler, provisoire "/>
      </rule>
      <rule key="{ec5acbe4-2c1c-4f2b-bf90-779f6b9a556a}" label="Contrôle attributs">
        <rule filter=" &quot;fk_status&quot; != 13002  AND  (&quot;usr_fk_meter_location&quot; is null OR &quot;usr_fk_meter_location&quot; NOT IN (102,95002,95003,95004,95005,95006))" key="{3b9422be-7cce-4bef-b3ac-7a28a7621ea4}" symbol="13" label="Emplacement (code erreur : 500) "/>
        <rule filter="&quot;fk_status&quot; != 13002  AND (&quot;fk_pressurezone&quot; is null OR &quot;fk_pressurezone&quot;  NOT IN (101,102,103,104,105,106,108,109,110,111,112,113,114,115,116,117,118,119,120,121,123,124,125,126,127,128,129,130,131,132,133,137,138,139,151,152,153,154,155,156,157,158,159,160,161,163,165,166,167,168))" key="{13bc07c0-4cd1-4279-b68b-d43b0b3b867c}" symbol="14" label="Zone de pression non renseignée (code erreur : 501)"/>
        <rule key="{86ae9740-376f-4d81-b115-18f36d25dc93}" label="Précision et calé SISOL (code erreur : 503 et 506)">
          <rule filter="&quot;fk_status&quot; != 13002 AND &quot;fk_precision&quot; NOT IN (1102,1104,1101)" key="{ac760cec-b8f5-4768-ae79-bdce812e4ccd}" symbol="15" label="Le champ précision ne doit pas être null ou inconnu (code erreur : 503)"/>
          <rule filter="&quot;fk_status&quot; != 13002 AND ( (&quot;usr_cale_sisol&quot; = 't' AND &quot;fk_precision&quot; NOT IN (1102,1104) ) &#xd;&#xa;OR (&quot;usr_cale_sisol&quot; = 'f' AND ( &quot;fk_precision&quot; IN (1102,1104)  AND ((&quot;fk_type&quot;  != 9401 AND  &quot;usr_fk_meter_location&quot; =  95005) OR &quot;usr_fk_meter_location&quot; IN (95003,95006) ))))" key="{393c1f5c-c009-472f-8620-f39b6c693bfc}" symbol="16" label="Calé SISOL mais imprécis (code erreur : 506)"/>
        </rule>
        <rule key="{06283ed0-eaad-49d6-a652-6066db945b90}" label="Contrôle altitude et précision altimétrique">
          <rule filter="  &quot;fk_status&quot; != 13002 AND ((&quot;z&quot; >0 AND  &quot;fk_precisionalti&quot; NOT IN (1121 , 11021)) OR ((&quot;z&quot; = 0 OR  &quot;z&quot; is null) AND &quot;fk_precisionalti&quot; != 102))" key="{dab39064-8081-4be2-8f09-fa97846c63d8}" symbol="17" label="Contrôle précision altimétrique (code erreur 504)"/>
          <rule filter="  &quot;fk_status&quot; != 13002 AND (&quot;z&quot;  !=0 AND &quot;z&quot;  &lt; 300 OR &quot;z&quot; > 1500)" key="{b55b7edd-09ac-4c9c-9de5-06532ea474bc}" symbol="18" label="Contrôle altitude incohérente &lt; 300 et > 1500  (code erreur : 512)"/>
          <rule filter="  &quot;fk_status&quot; != 13002 AND &quot;z&quot;  = 0  AND  &quot;year&quot; > 2012  AND &quot;fk_precision&quot; = 1102" key="{440bf0a7-fe14-4b35-a511-a4f016a9284e}" symbol="19" label="Contrôle altitude (code erreur : 101)"/>
          <rule checkstate="0" filter="  &quot;fk_status&quot; != 13002 AND &quot;z&quot;  = 0  AND  &quot;year&quot; > 2012" key="{087f42c8-a810-4a38-9d2c-bca7d7f51051}" symbol="20" label="Contrôle altitude (code erreur : 102)"/>
        </rule>
        <rule filter="&quot;fk_status&quot; IS NULL OR &quot;fk_status&quot;  NOT IN (103,1301,13002,13003)" key="{532ebde6-0eb2-473f-badc-1a7775d42bb5}" symbol="21" label="Statut inconnu (code erreur : 513)"/>
        <rule filter="&quot;usr_fk_meter_location&quot; !=  95002 AND ( &quot;usr_fk_meter_location&quot; != 95005 OR  &quot;fk_type&quot; !=  9401) AND ((&quot;year&quot; is null AND &quot;fk_status&quot; != 13002) OR (&quot;year&quot; != 0 AND &quot;year&quot; &lt; 1870 ) OR (&quot;year&quot; > year( now())))" key="{a8279474-fdfc-4c41-b6df-2069ec263872}" symbol="22" label="Contrôle année de pose (code erreur : 514)"/>
        <rule filter="&quot;fk_status&quot; != 13002 AND &quot;fk_pressurezone&quot; != 139 AND &quot;fk_type&quot; != 9401 AND &quot;usr_secondary_subscriber&quot; is true" key="{15f64cbf-076b-40ef-b75f-42c901fbe17b}" symbol="23" label="Contrôle croisés - zone de pression, secondaire, type d'intro (code erreur : 200)"/>
      </rule>
    </rules>
    <symbols>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,191,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.5"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.125&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.1&#xd;&#xa;WHEN  $scale >133 THEN 0.075&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="1">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="saisie/Citerneau.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,191,255,255"/>
          <prop k="outline_width" v="0.5"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.195&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.146&#xd;&#xa;WHEN  $scale >133 THEN 0.11&#xd;&#xa;END"/>
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
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.1&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.075&#xd;&#xa;WHEN  $scale >133 THEN 0.056&#xd;&#xa;END"/>
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
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
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
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.1&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.075&#xd;&#xa;WHEN  $scale >133 THEN 0.056&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="270"/>
          <prop k="color" v="0,162,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="half_square"/>
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
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.1&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.075&#xd;&#xa;WHEN  $scale >133 THEN 0.056&#xd;&#xa;END"/>
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
          <prop k="color" v="58,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="area"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="13">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="14">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="15">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="16">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="17">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="18">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="19">
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
          <prop k="outline_color" v="0,0,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.5"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.125&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.1&#xd;&#xa;WHEN  $scale >133 THEN 0.075&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="20">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="21">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="22">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="23">
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
      <symbol alpha="1" clip_to_extent="1" type="marker" name="3">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="cross2"/>
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
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.075&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.056&#xd;&#xa;WHEN  $scale >133 THEN 0.04&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.056&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.04&#xd;&#xa;WHEN  $scale >133 THEN 0.03&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="4">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.33"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.1&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.075&#xd;&#xa;WHEN  $scale >133 THEN 0.056&#xd;&#xa;END"/>
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
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.33"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.1&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.075&#xd;&#xa;WHEN  $scale >133 THEN 0.056&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="270"/>
          <prop k="color" v="0,0,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="half_square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.1&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.075&#xd;&#xa;WHEN  $scale >133 THEN 0.056&#xd;&#xa;END"/>
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
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,165,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.5"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="area"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.125&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.1&#xd;&#xa;WHEN  $scale >133 THEN 0.075&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="7">
        <layer pass="0" class="SvgMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="saisie/Citerneau_NR.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,191,255,255"/>
          <prop k="outline_width" v="0.5"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.125&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.1&#xd;&#xa;WHEN  $scale >133 THEN 0.075&#xd;&#xa;END"/>
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
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,165,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.5"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.125&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.1&#xd;&#xa;WHEN  $scale >133 THEN 0.075&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="9">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,165,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="cross2"/>
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
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.75&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.056&#xd;&#xa;WHEN  $scale >133 THEN 0.04&#xd;&#xa;&#xd;&#xa;END"/>
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
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,165,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_dd_active" v="1"/>
          <prop k="size_dd_expression" v="CASE &#xd;&#xa;WHEN  $scale &lt;=33 THEN 0.56&#xd;&#xa;WHEN  $scale >33 AND  $scale &lt;=133 THEN 0.04&#xd;&#xa;WHEN  $scale >133 THEN 0.03&#xd;&#xa;END"/>
          <prop k="size_dd_field" v=""/>
          <prop k="size_dd_useexpr" v="1"/>
          <prop k="size_map_unit_scale" v="0.05,0,0,0,0,0"/>
          <prop k="size_unit" v="MapUnit"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple"/>
  <customproperties>
    <property key="LinkIt_destinationField" value="fk_pipe"/>
    <property key="LinkIt_name" value="Abonnés - conduite"/>
    <property key="LinkIt_sourceLayer" value="conduites_copy20130709141244955"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="itemBrowserConnected" value="yes"/>
    <property key="itemBrowserCurrentItem" value="0"/>
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
    <property key="labeling/bufferSize" value="0.05"/>
    <property key="labeling/bufferSizeInMapUnits" value="false"/>
    <property key="labeling/bufferSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/bufferSizeMapUnitMinScale" value="0"/>
    <property key="labeling/bufferSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/bufferTransp" value="0"/>
    <property key="labeling/centroidInside" value="false"/>
    <property key="labeling/centroidWhole" value="false"/>
    <property key="labeling/dataDefined/AlwaysShow" value="1~~1~~1~~"/>
    <property key="labeling/dataDefined/PositionX" value="1~~1~~xat( 0)~~"/>
    <property key="labeling/dataDefined/PositionY" value="1~~1~~yat(0)~~"/>
    <property key="labeling/decimals" value="0"/>
    <property key="labeling/displayAll" value="false"/>
    <property key="labeling/dist" value="0"/>
    <property key="labeling/distInMapUnits" value="false"/>
    <property key="labeling/distMapUnitMaxScale" value="0"/>
    <property key="labeling/distMapUnitMinScale" value="0"/>
    <property key="labeling/distMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/drawLabels" value="false"/>
    <property key="labeling/enabled" value="false"/>
    <property key="labeling/fieldName" value="identification ||&#xa;CASE &#xa;WHEN fk_type = 9401 THEN ''&#xa;WHEN fk_type = 9402 THEN '#!#ARR'&#xa;WHEN fk_type = 9403 THEN '#!#FON'&#xa;WHEN fk_type = 9404 THEN '#!#WC'&#xa;WHEN fk_type = 9405 THEN '#!#SPK'&#xa;ELSE ''&#xa;END"/>
    <property key="labeling/fitInPolygonOnly" value="false"/>
    <property key="labeling/fontBold" value="false"/>
    <property key="labeling/fontCapitals" value="0"/>
    <property key="labeling/fontFamily" value="Arial"/>
    <property key="labeling/fontItalic" value="false"/>
    <property key="labeling/fontLetterSpacing" value="0"/>
    <property key="labeling/fontLimitPixelSize" value="false"/>
    <property key="labeling/fontMaxPixelSize" value="10000"/>
    <property key="labeling/fontMinPixelSize" value="3"/>
    <property key="labeling/fontSize" value="0.9"/>
    <property key="labeling/fontSizeInMapUnits" value="true"/>
    <property key="labeling/fontSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/fontSizeMapUnitMinScale" value="0"/>
    <property key="labeling/fontSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/fontStrikeout" value="false"/>
    <property key="labeling/fontUnderline" value="false"/>
    <property key="labeling/fontWeight" value="50"/>
    <property key="labeling/fontWordSpacing" value="0"/>
    <property key="labeling/formatNumbers" value="false"/>
    <property key="labeling/isExpression" value="true"/>
    <property key="labeling/labelOffsetInMapUnits" value="false"/>
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
    <property key="labeling/multilineAlign" value="1"/>
    <property key="labeling/multilineHeight" value="1.2"/>
    <property key="labeling/namedStyle" value="Normal"/>
    <property key="labeling/obstacle" value="true"/>
    <property key="labeling/obstacleFactor" value="1"/>
    <property key="labeling/obstacleType" value="0"/>
    <property key="labeling/offsetType" value="0"/>
    <property key="labeling/placeDirectionSymbol" value="0"/>
    <property key="labeling/placement" value="1"/>
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
    <property key="labeling/scaleMax" value="1000"/>
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
    <property key="labeling/textColorB" value="0"/>
    <property key="labeling/textColorG" value="0"/>
    <property key="labeling/textColorR" value="0"/>
    <property key="labeling/textTransp" value="0"/>
    <property key="labeling/upsidedownLabels" value="0"/>
    <property key="labeling/useSubstitutions" value="false"/>
    <property key="labeling/wrapChar" value="#!#"/>
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
    <DiagramCategory penColor="#000000" labelPlacementMethod="XHeight" penWidth="0" diagramOrientation="Up" sizeScale="0,0,0,0,0,0" minimumSize="0" barWidth="5" penAlpha="255" maxScaleDenominator="1e+08" backgroundColor="#ffffff" transparency="0" width="15" scaleDependency="Area" backgroundAlpha="255" angleOffset="1440" scaleBasedVisibility="1" enabled="0" height="15" lineSizeScale="0,0,0,0,0,0" sizeType="MM" lineSizeType="MM" minScaleDenominator="4">
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
    <alias field="fk_type" index="1" name="Type consommateur *"/>
    <alias field="fk_status" index="2" name="Statut *"/>
    <alias field="fk_pipe" index="3" name="ID conduite"/>
    <alias field="identification" index="4" name="Idenitifcation"/>
    <alias field="_identification_full" index="5" name="Identification complète"/>
    <alias field="parcel" index="6" name="Parcelle"/>
    <alias field="remark" index="7" name="Remarque"/>
    <alias field="fk_district" index="8" name="Commune"/>
    <alias field="fk_pressurezone" index="9" name="Zone de pression"/>
    <alias field="fk_printmap" index="10" name="N° de plan"/>
    <alias field="_pressurezone" index="11" name="Zone de pression (auto)"/>
    <alias field="_printmaps" index="12" name="Folios"/>
    <alias field="geometry" index="13" name=""/>
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
    <alias field="fk_distributor" index="24" name="Propriétaire"/>
    <alias field="fk_folder" index="25" name="N° de chantier (zone)"/>
    <alias field="year" index="26" name="Année saisie"/>
    <alias field="year_end" index="27" name="Année d'archivage"/>
    <alias field="fk_precision" index="28" name="Précision planimétrique *"/>
    <alias field="fk_precisionalti" index="29" name="Précision altimétrique *"/>
    <alias field="fk_object_reference" index="30" name="Niveau"/>
    <alias field="altitude" index="31" name="Altitude"/>
    <alias field="fk_node" index="32" name="ID noeud"/>
    <alias field="usr_cale_sisol" index="33" name="Calé SISOL"/>
    <alias field="usr_fk_meter_location" index="34" name="Emplacement *"/>
    <alias field="usr_no_address" index="35" name="No adresse"/>
    <alias field="usr_no_or_sap" index="36" name="N° OR (SAP)"/>
    <alias field="usr_no_sap" index="37" name="N° branchement (SAP)"/>
    <alias field="usr_sprinkler" index="38" name="Sprinkler"/>
    <alias field="usr_fk_partnership" index="39" name="Partenaire"/>
    <alias field="usr_secondary_subscriber" index="40" name="Intro secondaire"/>
    <alias field="usr_fk_sensitive_customer" index="41" name="Type de client sensible *"/>
    <alias field="usr_addition_supply" index="42" name="Alimente aussi"/>
    <alias field="usr_fk_obj_goeland" index="43" name="Goéland"/>
    <alias field="usr_link_photos" index="44" name="Lien photos"/>
    <alias field="usr_fk_street_address" index="45" name="Rue"/>
    <alias field="_district" index="46" name="Commune (auto)"/>
    <alias field="usr_location" index="47" name="Lieu dit"/>
    <alias field="usr_lc_sap" index="48" name="LC (SAP)"/>
    <alias field="usr_update_hb" index="49" name="Mise à jour (HB)"/>
    <alias field="create_date" index="50" name=""/>
    <alias field="last_date" index="51" name=""/>
    <alias field="last_user" index="52" name=""/>
    <alias field="deleted" index="53" name=""/>
    <alias field="fk_surveypoint" index="54" name=""/>
    <alias field="z" index="55" name="Coord Z"/>
    <alias field="image_zpression" index="56" name="->"/>
    <alias field="lien_goeland" index="57" name="Lien vers Goéland"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions default="1">
    <actionsetting showInAttributeTable="1" action="import sys&#xd;&#xa;sys.var=[[%id%]]&#xd;&#xa;execfile(u'//geodata.lausanne.ch/data/QGIS_projet/eauservice/qwat_lausanne/action/action_qgis_reprise_alt.py'.encode(&quot;utf-8&quot;))" icon="" capture="0" type="1" name="Reprise des infos de la mesure (altitude)" shortTitle=""/>
    <actionsetting showInAttributeTable="1" action="[%usr_link_photos%]" icon="" capture="0" type="5" name="Ouvrir la photo" shortTitle=""/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" hidden="1" type="field" name="identification"/>
      <column width="-1" hidden="1" type="field" name="_identification_full"/>
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
      <column width="-1" hidden="0" type="field" name="fk_type"/>
      <column width="-1" hidden="0" type="field" name="fk_status"/>
      <column width="-1" hidden="0" type="field" name="fk_pipe"/>
      <column width="-1" hidden="0" type="field" name="parcel"/>
      <column width="-1" hidden="0" type="field" name="remark"/>
      <column width="-1" hidden="0" type="field" name="fk_district"/>
      <column width="-1" hidden="0" type="field" name="fk_pressurezone"/>
      <column width="-1" hidden="0" type="field" name="fk_printmap"/>
      <column width="-1" hidden="0" type="field" name="_pressurezone"/>
      <column width="-1" hidden="0" type="field" name="_printmaps"/>
      <column width="-1" hidden="0" type="field" name="fk_distributor"/>
      <column width="-1" hidden="0" type="field" name="fk_folder"/>
      <column width="-1" hidden="0" type="field" name="year"/>
      <column width="-1" hidden="0" type="field" name="year_end"/>
      <column width="-1" hidden="0" type="field" name="fk_precision"/>
      <column width="-1" hidden="0" type="field" name="fk_precisionalti"/>
      <column width="-1" hidden="0" type="field" name="fk_object_reference"/>
      <column width="-1" hidden="0" type="field" name="altitude"/>
      <column width="-1" hidden="0" type="field" name="fk_node"/>
      <column width="-1" hidden="0" type="field" name="usr_cale_sisol"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_meter_location"/>
      <column width="-1" hidden="0" type="field" name="usr_no_address"/>
      <column width="-1" hidden="0" type="field" name="usr_no_or_sap"/>
      <column width="-1" hidden="0" type="field" name="usr_no_sap"/>
      <column width="-1" hidden="0" type="field" name="usr_sprinkler"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_partnership"/>
      <column width="-1" hidden="0" type="field" name="usr_secondary_subscriber"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_sensitive_customer"/>
      <column width="-1" hidden="0" type="field" name="usr_addition_supply"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_obj_goeland"/>
      <column width="-1" hidden="0" type="field" name="usr_link_photos"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_street_address"/>
      <column width="-1" hidden="0" type="field" name="_district"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" hidden="0" type="field" name="geometry"/>
      <column width="-1" hidden="0" type="field" name="fk_surveypoint"/>
      <column width="-1" hidden="0" type="field" name="z"/>
      <column width="-1" hidden="0" type="field" name="image_zpression"/>
      <column width="-1" hidden="0" type="field" name="lien_goeland"/>
      <column width="-1" hidden="0" type="field" name="usr_location"/>
      <column width="-1" hidden="0" type="field" name="usr_lc_sap"/>
      <column width="-1" hidden="0" type="field" name="usr_update_hb"/>
      <column width="-1" hidden="0" type="field" name="create_date"/>
      <column width="-1" hidden="0" type="field" name="last_date"/>
      <column width="-1" hidden="0" type="field" name="last_user"/>
      <column width="-1" hidden="0" type="field" name="deleted"/>
    </columns>
  </attributetableconfig>
  <editform>../qgis_v2/ui_forms/subscriber.ui</editform>
  <editforminit>my_form_open</editforminit>
  <editforminitcodesource>1</editforminitcodesource>
  <editforminitfilepath>//geodata.lausanne.ch/data/QGIS_projet/eauservice/qwat_lausanne/function/init_intro.py</editforminitfilepath>
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
      <attributeEditorField showLabel="0" index="56" name="image_zpression"/>
      <attributeEditorField showLabel="1" index="9" name="fk_pressurezone"/>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Localisation" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="8" name="fk_district"/>
        <attributeEditorField showLabel="1" index="0" name="id"/>
        <attributeEditorField showLabel="1" index="45" name="usr_fk_street_address"/>
        <attributeEditorField showLabel="1" index="35" name="usr_no_address"/>
        <attributeEditorField showLabel="1" index="47" name="usr_location"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="2" name="fk_status"/>
        <attributeEditorField showLabel="1" index="26" name="year"/>
        <attributeEditorField showLabel="1" index="1" name="fk_type"/>
        <attributeEditorField showLabel="1" index="40" name="usr_secondary_subscriber"/>
        <attributeEditorField showLabel="1" index="34" name="usr_fk_meter_location"/>
        <attributeEditorContainer showLabel="0" visibilityExpressionEnabled="1" visibilityExpression=" &quot;usr_secondary_subscriber&quot;  = 't'" name="" groupBox="1" columnCount="1">
          <attributeEditorField showLabel="1" index="42" name="usr_addition_supply"/>
        </attributeEditorContainer>
        <attributeEditorField showLabel="1" index="49" name="usr_update_hb"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Lien SAP" groupBox="1" columnCount="1">
        <attributeEditorField showLabel="1" index="36" name="usr_no_or_sap"/>
        <attributeEditorField showLabel="1" index="37" name="usr_no_sap"/>
        <attributeEditorField showLabel="1" index="48" name="usr_lc_sap"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Détail (gestion)" groupBox="1" columnCount="1">
        <attributeEditorField showLabel="1" index="43" name="usr_fk_obj_goeland"/>
        <attributeEditorField showLabel="1" index="41" name="usr_fk_sensitive_customer"/>
        <attributeEditorField showLabel="1" index="39" name="usr_fk_partnership"/>
        <attributeEditorField showLabel="1" index="38" name="usr_sprinkler"/>
        <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="1" visibilityExpression=" &quot;usr_fk_obj_goeland&quot; is not null" name="" groupBox="1" columnCount="1">
          <attributeEditorField showLabel="1" index="57" name="lien_goeland"/>
        </attributeEditorContainer>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Géométrie" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="28" name="fk_precision"/>
        <attributeEditorField showLabel="1" index="33" name="usr_cale_sisol"/>
        <attributeEditorField showLabel="1" index="29" name="fk_precisionalti"/>
        <attributeEditorField showLabel="1" index="55" name="z"/>
        <attributeEditorField showLabel="1" index="32" name="fk_node"/>
        <attributeEditorField showLabel="1" index="3" name="fk_pipe"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="0" visibilityExpressionEnabled="0" visibilityExpression="" name="Infos supplémentaire" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="7" name="remark"/>
        <attributeEditorField showLabel="1" index="44" name="usr_link_photos"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="1" visibilityExpression=" &quot;usr_secondary_subscriber&quot; = 'f'" name="Dépendance intro secondaire" groupBox="0" columnCount="1">
      <attributeEditorRelation showLinkButton="1" relation="relation_subscriber_secondary_subscriber" showLabel="1" showUnlinkButton="1" name="relation_subscriber_secondary_subscriber"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <widgets>
    <widget name="relation_intro_mesures">
      <config/>
    </widget>
    <widget name="relation_subscriber_reference">
      <config/>
    </widget>
    <widget name="relation_subscriber_secondary_subscriber">
      <config/>
    </widget>
  </widgets>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <defaults>
    <default field="id" expression=""/>
    <default field="fk_type" expression=""/>
    <default field="fk_status" expression="1301"/>
    <default field="fk_pipe" expression=""/>
    <default field="identification" expression=""/>
    <default field="_identification_full" expression=""/>
    <default field="parcel" expression=""/>
    <default field="remark" expression="''"/>
    <default field="fk_district" expression=""/>
    <default field="fk_pressurezone" expression=""/>
    <default field="fk_printmap" expression=""/>
    <default field="_pressurezone" expression=""/>
    <default field="_printmaps" expression=""/>
    <default field="geometry" expression="''"/>
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
    <default field="fk_distributor" expression=""/>
    <default field="fk_folder" expression=""/>
    <default field="year" expression="if (&quot;year&quot; is NULL, year(now()),NULL)"/>
    <default field="year_end" expression=""/>
    <default field="fk_precision" expression="1104"/>
    <default field="fk_precisionalti" expression="CASE WHEN  z($geometry) > 0  THEN 11021&#xa;ELSE 102 END"/>
    <default field="fk_object_reference" expression=""/>
    <default field="altitude" expression=""/>
    <default field="fk_node" expression=""/>
    <default field="usr_cale_sisol" expression="'t'"/>
    <default field="usr_fk_meter_location" expression=""/>
    <default field="usr_no_address" expression=""/>
    <default field="usr_no_or_sap" expression=""/>
    <default field="usr_no_sap" expression=""/>
    <default field="usr_sprinkler" expression="'f'"/>
    <default field="usr_fk_partnership" expression=""/>
    <default field="usr_secondary_subscriber" expression="'f'"/>
    <default field="usr_fk_sensitive_customer" expression=""/>
    <default field="usr_addition_supply" expression=""/>
    <default field="usr_fk_obj_goeland" expression=""/>
    <default field="usr_link_photos" expression=""/>
    <default field="usr_fk_street_address" expression="-1"/>
    <default field="_district" expression=""/>
    <default field="usr_location" expression=""/>
    <default field="usr_lc_sap" expression=""/>
    <default field="usr_update_hb" expression=""/>
    <default field="create_date" expression=""/>
    <default field="last_date" expression=""/>
    <default field="last_user" expression=""/>
    <default field="deleted" expression=""/>
    <default field="fk_surveypoint" expression=""/>
    <default field="z" expression=" z( $geometry )"/>
    <default field="image_zpression" expression=""/>
    <default field="lien_goeland" expression=""/>
  </defaults>
  <previewExpression>COALESCE( "id", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>0</layerGeometryType>
</qgis>
