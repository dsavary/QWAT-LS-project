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
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="RelationReference" name="fk_installation">
      <widgetv2config OrderByValue="0" fieldEditable="1" AllowAddFeatures="0" ShowForm="0" Relation="relation_pump_installation" ReadOnly="0" constraint="" MapIdentification="1" labelOnTop="0" constraintDescription="obligatoire" notNull="1" AllowNULL="0"/>
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
    <edittype widgetv2type="Hidden" name="altitude_real">
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
    <edittype widgetv2type="Hidden" name="fk_type">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="fk_operating">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="altitude">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="no_pumps">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="rejected_flow">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="manometric_height">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="year_end">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="( &quot;fk_status&quot;  = 1302 AND &quot;year_end&quot; > 1860 AND  &quot;year_end&quot; &lt;=   year(now()) AND &quot;year_end&quot;  >=  coalesce(&quot;year&quot;,0) OR &quot;year_end&quot; = 0 )  OR (&quot;fk_status&quot;  != 1302 AND  &quot;year_end&quot; is null)" UseHtml="0" labelOnTop="0" constraintDescription="obligatoire si hors service" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_rejected_flow_min">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_rejected_flow_max">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="usr_power">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="usr_fk_etat">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression="&quot;vl_active&quot;  =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_condition20160705083228389" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="RelationReference" name="usr_fk_installation_out">
      <widgetv2config OrderByValue="0" fieldEditable="1" AllowAddFeatures="0" ShowForm="0" Relation="relation_installation_building_pump_direction" ReadOnly="0" constraint="" MapIdentification="1" labelOnTop="0" constraintDescription="obligatoire" notNull="1" AllowNULL="0"/>
    </edittype>
  </edittypes>
  <annotationform>../../../QGIS_projet</annotationform>
  <aliases>
    <alias field="id" index="0" name="ID"/>
    <alias field="name" index="1" name="N° pompe"/>
    <alias field="identification" index="2" name="N° CEGEL"/>
    <alias field="fk_installation" index="3" name="Lieu"/>
    <alias field="fk_status" index="4" name="Statut*"/>
    <alias field="fk_remote" index="5" name="Lien vers la télécommande"/>
    <alias field="fk_watertype" index="6" name="Type d'eau"/>
    <alias field="schema_visible" index="7" name=""/>
    <alias field="altitude_real" index="8" name=""/>
    <alias field="remark" index="9" name="Remarque / Descriptif"/>
    <alias field="year" index="10" name="Année fabrication"/>
    <alias field="label_1_visible" index="11" name=""/>
    <alias field="label_1_x" index="12" name=""/>
    <alias field="label_1_y" index="13" name=""/>
    <alias field="label_1_rotation" index="14" name=""/>
    <alias field="label_1_text" index="15" name=""/>
    <alias field="label_2_visible" index="16" name=""/>
    <alias field="label_2_x" index="17" name=""/>
    <alias field="label_2_y" index="18" name=""/>
    <alias field="label_2_rotation" index="19" name=""/>
    <alias field="label_2_text" index="20" name=""/>
    <alias field="fk_type" index="21" name="Type de pompe"/>
    <alias field="fk_operating" index="22" name="Système de pompage"/>
    <alias field="altitude" index="23" name="Altitude"/>
    <alias field="no_pumps" index="24" name=""/>
    <alias field="rejected_flow" index="25" name=""/>
    <alias field="manometric_height" index="26" name="Hauteur manométrique"/>
    <alias field="year_end" index="27" name="Année mise hors service"/>
    <alias field="usr_rejected_flow_min" index="28" name="Débit min [l/min]"/>
    <alias field="usr_rejected_flow_max" index="29" name="Débit max [l/min]"/>
    <alias field="usr_power" index="30" name="Puissance [kW]"/>
    <alias field="usr_fk_etat" index="31" name="Etat"/>
    <alias field="usr_fk_installation_out" index="32" name="Direction refoulement"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions default="-1"/>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" hidden="1" type="field" name="fk_remote"/>
      <column width="-1" hidden="1" type="field" name="fk_watertype"/>
      <column width="-1" hidden="1" type="field" name="schema_visible"/>
      <column width="-1" hidden="1" type="field" name="altitude_real"/>
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
      <column width="-1" hidden="1" type="field" name="fk_type"/>
      <column width="-1" hidden="1" type="field" name="fk_operating"/>
      <column width="-1" hidden="1" type="field" name="altitude"/>
      <column width="-1" hidden="1" type="field" name="no_pumps"/>
      <column width="-1" hidden="1" type="field" name="rejected_flow"/>
      <column width="-1" hidden="0" type="field" name="id"/>
      <column width="-1" hidden="0" type="field" name="name"/>
      <column width="-1" hidden="0" type="field" name="identification"/>
      <column width="-1" hidden="0" type="field" name="fk_installation"/>
      <column width="-1" hidden="0" type="field" name="fk_status"/>
      <column width="-1" hidden="0" type="field" name="remark"/>
      <column width="-1" hidden="0" type="field" name="year"/>
      <column width="-1" hidden="0" type="field" name="manometric_height"/>
      <column width="-1" hidden="0" type="field" name="year_end"/>
      <column width="-1" hidden="0" type="field" name="usr_rejected_flow_min"/>
      <column width="-1" hidden="0" type="field" name="usr_rejected_flow_max"/>
      <column width="-1" hidden="0" type="field" name="usr_power"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_etat"/>
      <column width="-1" hidden="0" type="field" name="usr_fk_installation_out"/>
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
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Identification" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="1" name="name"/>
        <attributeEditorField showLabel="1" index="2" name="identification"/>
        <attributeEditorField showLabel="1" index="4" name="fk_status"/>
        <attributeEditorField showLabel="1" index="31" name="usr_fk_etat"/>
        <attributeEditorField showLabel="1" index="10" name="year"/>
        <attributeEditorField showLabel="1" index="27" name="year_end"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Direction de refoulement" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="3" name="fk_installation"/>
        <attributeEditorField showLabel="1" index="32" name="usr_fk_installation_out"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Caractéristiques" groupBox="1" columnCount="2">
        <attributeEditorField showLabel="1" index="28" name="usr_rejected_flow_min"/>
        <attributeEditorField showLabel="1" index="29" name="usr_rejected_flow_max"/>
        <attributeEditorField showLabel="1" index="30" name="usr_power"/>
        <attributeEditorField showLabel="1" index="26" name="manometric_height"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" index="9" name="remark"/>
    </attributeEditorContainer>
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
    <default field="altitude_real" expression=""/>
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
    <default field="fk_type" expression=""/>
    <default field="fk_operating" expression=""/>
    <default field="altitude" expression=""/>
    <default field="no_pumps" expression=""/>
    <default field="rejected_flow" expression=""/>
    <default field="manometric_height" expression=""/>
    <default field="year_end" expression=""/>
    <default field="usr_rejected_flow_min" expression=""/>
    <default field="usr_rejected_flow_max" expression=""/>
    <default field="usr_power" expression=""/>
    <default field="usr_fk_etat" expression=""/>
    <default field="usr_fk_installation_out" expression=""/>
  </defaults>
  <previewExpression>COALESCE("id", '&lt;NULL>')</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
