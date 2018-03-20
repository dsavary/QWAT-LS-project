<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.13" minimumScale="0" maximumScale="1e+08" readOnly="0" hasScaleBasedVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="id">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="name">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint=" (&quot;fk_status&quot; = 1301 AND  &quot;name&quot; is not null ) OR  (&quot;fk_status&quot; != 1301 AND  (&quot;name&quot; is not null  OR &quot;name&quot; is null))" UseHtml="0" labelOnTop="0" constraintDescription="obligatoire si en service" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="identification">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint=" (&quot;fk_status&quot; = 1301 AND   &quot;identification&quot;  is not null ) OR  (&quot;fk_status&quot; != 1301 AND  ( &quot;identification&quot;  is not null  OR  &quot;identification&quot;  is null))" UseHtml="0" labelOnTop="0" constraintDescription="champ obligatoire si en service" notNull="0"/>
    </edittype>
    <edittype widgetv2type="RelationReference" name="fk_installation">
      <widgetv2config OrderByValue="0" fieldEditable="1" AllowAddFeatures="0" ShowForm="0" Relation="relation_cuves_ouvrage_principal" ReadOnly="0" constraint="" MapIdentification="1" labelOnTop="0" constraintDescription="obligatoire" notNull="1" AllowNULL="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_status">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression=" &quot;id&quot; IN (1301,1302,1306)" UseCompleter="0" fieldEditable="1" Key="id" constraint="( &quot;fk_status&quot; = 1302 AND year_end is not null ) OR (&quot;fk_status&quot; != 1302 AND year_end is null )" Layer="vl_status20130304110011436" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire" AllowMulti="0" notNull="1"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_remote">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_watertype">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="schema_visible">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="remark">
      <widgetv2config IsMultiline="1" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="year">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="(((&quot;year&quot; > 1860 AND  &quot;year&quot;  &lt;=  year( now() ))  OR ( &quot;year&quot; =0)) AND  &quot;fk_status&quot; =1301)   OR ((&quot;year&quot; is null OR &quot;year&quot; is not null) AND  &quot;fk_status&quot; != 1301 )" UseHtml="0" labelOnTop="0" constraintDescription="Champ obligatoire, année doit être entre 1860 et l'année actuel ou 0 si inconnu" notNull="0"/>
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
    <edittype widgetv2type="Hidden" name="fk_overflow">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="storage_total">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="storage_supply">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="storage_fire">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="altitude_overflow">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="altitude_apron">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="height_max">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fire_valve">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fire_remote">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="year_end">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="( &quot;fk_status&quot;  = 1302 AND &quot;year_end&quot; > 1860 AND  &quot;year_end&quot; &lt;=   year(now()) AND &quot;year_end&quot;  >=  coalesce(&quot;year&quot;,0) OR &quot;year_end&quot; = 0 )  OR (&quot;fk_status&quot;  != 1302 AND  &quot;year_end&quot; is null)" UseHtml="0" labelOnTop="0" constraintDescription="obligatoire si hors service" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_outlet_elevation">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_inlet_elevation">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_useful_height">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_useful_capacity">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_useful_area">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_ruler_elevation">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
  </edittypes>
  <annotationform>../../../QGIS_projet</annotationform>
  <aliases>
    <alias field="id" index="0" name="ID"/>
    <alias field="name" index="1" name="Nom"/>
    <alias field="identification" index="2" name="N° cuve"/>
    <alias field="fk_installation" index="3" name="Usine / Réservoir"/>
    <alias field="fk_status" index="4" name="Statut*"/>
    <alias field="fk_remote" index="5" name="Lien vers la télécommande"/>
    <alias field="fk_watertype" index="6" name="Type d'eau"/>
    <alias field="schema_visible" index="7" name=""/>
    <alias field="remark" index="8" name="Remarque"/>
    <alias field="year" index="9" name="Année construction"/>
    <alias field="label_1_visible" index="10" name=""/>
    <alias field="label_1_x" index="11" name=""/>
    <alias field="label_1_y" index="12" name=""/>
    <alias field="label_1_rotation" index="13" name=""/>
    <alias field="label_1_text" index="14" name=""/>
    <alias field="label_2_visible" index="15" name=""/>
    <alias field="label_2_x" index="16" name=""/>
    <alias field="label_2_y" index="17" name=""/>
    <alias field="label_2_rotation" index="18" name=""/>
    <alias field="label_2_text" index="19" name=""/>
    <alias field="fk_overflow" index="20" name="Type de trop-plein"/>
    <alias field="storage_total" index="21" name="Volume total [m3]"/>
    <alias field="storage_supply" index="22" name="Volume de réserve [m3]"/>
    <alias field="storage_fire" index="23" name="Volume en cas d'incendie [m3]"/>
    <alias field="altitude_overflow" index="24" name="Altitude trop-plein [m]"/>
    <alias field="altitude_apron" index="25" name="Altitude de plafond"/>
    <alias field="height_max" index="26" name="Hauteur max."/>
    <alias field="fire_valve" index="27" name=""/>
    <alias field="fire_remote" index="28" name=""/>
    <alias field="year_end" index="29" name="Année hors service"/>
    <alias field="usr_outlet_elevation" index="30" name="Altitude arrivée [m]"/>
    <alias field="usr_inlet_elevation" index="31" name="Altitude départ [m]"/>
    <alias field="usr_useful_height" index="32" name="Hauteur eau utile [m]"/>
    <alias field="usr_useful_capacity" index="33" name="Volume eau utile [m3]"/>
    <alias field="usr_useful_area" index="34" name="Surface utile [m2]"/>
    <alias field="usr_ruler_elevation" index="35" name="Altitude règle [m]"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions default="-1"/>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" hidden="1" type="field" name="fk_remote"/>
      <column width="-1" hidden="1" type="field" name="fk_watertype"/>
      <column width="-1" hidden="1" type="field" name="schema_visible"/>
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
      <column width="-1" hidden="1" type="field" name="fk_overflow"/>
      <column width="-1" hidden="1" type="field" name="storage_total"/>
      <column width="-1" hidden="1" type="field" name="storage_supply"/>
      <column width="-1" hidden="1" type="field" name="storage_fire"/>
      <column width="-1" hidden="1" type="field" name="altitude_apron"/>
      <column width="-1" hidden="1" type="field" name="height_max"/>
      <column width="-1" hidden="1" type="field" name="fire_valve"/>
      <column width="-1" hidden="1" type="field" name="fire_remote"/>
      <column width="-1" hidden="0" type="field" name="id"/>
      <column width="-1" hidden="0" type="field" name="name"/>
      <column width="-1" hidden="0" type="field" name="identification"/>
      <column width="-1" hidden="0" type="field" name="fk_installation"/>
      <column width="-1" hidden="0" type="field" name="fk_status"/>
      <column width="-1" hidden="0" type="field" name="remark"/>
      <column width="-1" hidden="0" type="field" name="year"/>
      <column width="-1" hidden="0" type="field" name="altitude_overflow"/>
      <column width="-1" hidden="0" type="field" name="year_end"/>
      <column width="-1" hidden="0" type="field" name="usr_outlet_elevation"/>
      <column width="-1" hidden="0" type="field" name="usr_inlet_elevation"/>
      <column width="-1" hidden="0" type="field" name="usr_useful_height"/>
      <column width="-1" hidden="0" type="field" name="usr_useful_capacity"/>
      <column width="-1" hidden="0" type="field" name="usr_useful_area"/>
      <column width="-1" hidden="0" type="field" name="usr_ruler_elevation"/>
      <column width="-1" hidden="1" type="actions"/>
    </columns>
  </attributetableconfig>
  <editform>../../../QGIS_projet</editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath>../../../QGIS_projet</editforminitfilepath>
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
  <featformsuppress>2</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Général" groupBox="0" columnCount="0">
      <attributeEditorField showLabel="1" index="0" name="id"/>
      <attributeEditorField showLabel="1" index="3" name="fk_installation"/>
      <attributeEditorField showLabel="1" index="1" name="name"/>
      <attributeEditorField showLabel="1" index="2" name="identification"/>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Caractéristique de la cuve" groupBox="1" columnCount="1">
        <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="2">
          <attributeEditorField showLabel="1" index="9" name="year"/>
          <attributeEditorField showLabel="1" index="29" name="year_end"/>
          <attributeEditorField showLabel="1" index="4" name="fk_status"/>
        </attributeEditorContainer>
        <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="2">
          <attributeEditorField showLabel="1" index="31" name="usr_inlet_elevation"/>
          <attributeEditorField showLabel="1" index="30" name="usr_outlet_elevation"/>
          <attributeEditorField showLabel="1" index="24" name="altitude_overflow"/>
          <attributeEditorField showLabel="1" index="35" name="usr_ruler_elevation"/>
        </attributeEditorContainer>
        <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="2">
          <attributeEditorField showLabel="1" index="32" name="usr_useful_height"/>
          <attributeEditorField showLabel="1" index="34" name="usr_useful_area"/>
          <attributeEditorField showLabel="1" index="33" name="usr_useful_capacity"/>
        </attributeEditorContainer>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorField showLabel="1" index="8" name="remark"/>
  </attributeEditorForm>
  <widgets/>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <defaults>
    <default field="id" expression=""/>
    <default field="name" expression=""/>
    <default field="identification" expression=""/>
    <default field="fk_installation" expression=""/>
    <default field="fk_status" expression="1301"/>
    <default field="fk_remote" expression=""/>
    <default field="fk_watertype" expression=""/>
    <default field="schema_visible" expression=""/>
    <default field="remark" expression="''"/>
    <default field="year" expression=""/>
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
    <default field="fk_overflow" expression=""/>
    <default field="storage_total" expression=""/>
    <default field="storage_supply" expression=""/>
    <default field="storage_fire" expression=""/>
    <default field="altitude_overflow" expression=""/>
    <default field="altitude_apron" expression=""/>
    <default field="height_max" expression=""/>
    <default field="fire_valve" expression=""/>
    <default field="fire_remote" expression=""/>
    <default field="year_end" expression=""/>
    <default field="usr_outlet_elevation" expression=""/>
    <default field="usr_inlet_elevation" expression=""/>
    <default field="usr_useful_height" expression=""/>
    <default field="usr_useful_capacity" expression=""/>
    <default field="usr_useful_area" expression=""/>
    <default field="usr_ruler_elevation" expression=""/>
  </defaults>
  <previewExpression>COALESCE("id", '&lt;NULL>')</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
