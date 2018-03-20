<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.13" minimumScale="0" maximumScale="1e+08" readOnly="0" hasScaleBasedVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="id">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="name">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="identification">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="RelationReference" name="fk_installation">
      <widgetv2config OrderByValue="0" fieldEditable="1" AllowAddFeatures="0" ShowForm="0" Relation="relation_treatment_installation" ReadOnly="0" constraint="" MapIdentification="1" labelOnTop="0" constraintDescription="obligatoire" notNull="1" AllowNULL="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_status">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression=" &quot;id&quot; IN (1301,1302,1306)" UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="vl_status20130304110011436" Value="value_fr" labelOnTop="0" constraintDescription="Champ obligatoire" AllowMulti="0" notNull="1"/>
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
    <edittype widgetv2type="Hidden" name="year">
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
    <edittype widgetv2type="CheckBox" name="sanitization_uv">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="sanitization_chlorine_liquid">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="sanitization_chlorine_gazeous">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="sanitization_ozone">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="filtration_membrane">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="filtration_sandorgravel">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="flocculation">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="activatedcharcoal">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="settling">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="(  &quot;settling&quot; != 't' AND  &quot;sanitization_chlorine_liquid&quot; = 'f') OR ((&quot;settling&quot; = 'f' OR &quot;settling&quot; = 't') AND  &quot;sanitization_chlorine_liquid&quot; = 't') " CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="treatment_capacity">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="( &quot;treatment_capacity&quot; is null AND  &quot;sanitization_chlorine_liquid&quot; = 'f') OR ( &quot;treatment_capacity&quot; is not null AND  &quot;sanitization_chlorine_liquid&quot; = 't') " UseHtml="0" labelOnTop="0" constraintDescription="à rensseigner si traitement javel" notNull="0"/>
    </edittype>
    <edittype widgetv2type="Hidden" name="year_end">
      <widgetv2config fieldEditable="1" constraint="" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_electrolyser">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="CheckBox" name="usr_filter_activedcharcoal">
      <widgetv2config fieldEditable="1" UncheckedState="f" constraint="" CheckedState="t" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
  </edittypes>
  <annotationform>../../../QGIS_projet</annotationform>
  <aliases>
    <alias field="id" index="0" name="ID"/>
    <alias field="name" index="1" name="Nom"/>
    <alias field="identification" index="2" name="N° de traitement"/>
    <alias field="fk_installation" index="3" name="Usine / réservoir / station"/>
    <alias field="fk_status" index="4" name="Statut *"/>
    <alias field="fk_remote" index="5" name="Lien vers la télécommande"/>
    <alias field="fk_watertype" index="6" name="Type d'eau"/>
    <alias field="schema_visible" index="7" name=""/>
    <alias field="altitude_real" index="8" name=""/>
    <alias field="remark" index="9" name="Remarque"/>
    <alias field="year" index="10" name="Année de construction"/>
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
    <alias field="sanitization_uv" index="21" name="UV"/>
    <alias field="sanitization_chlorine_liquid" index="22" name="Javel"/>
    <alias field="sanitization_chlorine_gazeous" index="23" name="Chlore gazeux"/>
    <alias field="sanitization_ozone" index="24" name="Ozone"/>
    <alias field="filtration_membrane" index="25" name="Ultrafiltration"/>
    <alias field="filtration_sandorgravel" index="26" name=""/>
    <alias field="flocculation" index="27" name="Polychlorosulfate d'aluminium"/>
    <alias field="activatedcharcoal" index="28" name="Charbon actif en poudre"/>
    <alias field="settling" index="29" name="Bac de rétention"/>
    <alias field="treatment_capacity" index="30" name="Stockage [m3]"/>
    <alias field="year_end" index="31" name="Année hors service"/>
    <alias field="usr_electrolyser" index="32" name="Electrolyseur"/>
    <alias field="usr_filter_activedcharcoal" index="33" name="FIltre à charbon actif"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions default="-1"/>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" hidden="1" type="field" name="name"/>
      <column width="-1" hidden="1" type="field" name="identification"/>
      <column width="-1" hidden="1" type="field" name="fk_remote"/>
      <column width="-1" hidden="1" type="field" name="fk_watertype"/>
      <column width="-1" hidden="1" type="field" name="schema_visible"/>
      <column width="-1" hidden="1" type="field" name="altitude_real"/>
      <column width="-1" hidden="1" type="field" name="year"/>
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
      <column width="-1" hidden="1" type="field" name="filtration_sandorgravel"/>
      <column width="-1" hidden="1" type="field" name="year_end"/>
      <column width="-1" hidden="0" type="field" name="id"/>
      <column width="-1" hidden="0" type="field" name="fk_installation"/>
      <column width="-1" hidden="0" type="field" name="fk_status"/>
      <column width="-1" hidden="0" type="field" name="remark"/>
      <column width="-1" hidden="0" type="field" name="sanitization_uv"/>
      <column width="-1" hidden="0" type="field" name="sanitization_chlorine_liquid"/>
      <column width="-1" hidden="0" type="field" name="sanitization_chlorine_gazeous"/>
      <column width="-1" hidden="0" type="field" name="sanitization_ozone"/>
      <column width="-1" hidden="0" type="field" name="filtration_membrane"/>
      <column width="-1" hidden="0" type="field" name="flocculation"/>
      <column width="-1" hidden="0" type="field" name="activatedcharcoal"/>
      <column width="-1" hidden="0" type="field" name="settling"/>
      <column width="-1" hidden="0" type="field" name="treatment_capacity"/>
      <column width="-1" hidden="0" type="field" name="usr_electrolyser"/>
      <column width="-1" hidden="0" type="field" name="usr_filter_activedcharcoal"/>
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
      <attributeEditorField showLabel="1" index="4" name="fk_status"/>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Désinfection" groupBox="1" columnCount="1">
        <attributeEditorField showLabel="1" index="21" name="sanitization_uv"/>
        <attributeEditorField showLabel="1" index="23" name="sanitization_chlorine_gazeous"/>
        <attributeEditorField showLabel="1" index="22" name="sanitization_chlorine_liquid"/>
        <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="" groupBox="1" columnCount="1">
          <attributeEditorField showLabel="1" index="32" name="usr_electrolyser"/>
          <attributeEditorField showLabel="1" index="30" name="treatment_capacity"/>
          <attributeEditorField showLabel="1" index="29" name="settling"/>
        </attributeEditorContainer>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" visibilityExpression="" name="Autre traitement" groupBox="1" columnCount="1">
        <attributeEditorField showLabel="1" index="24" name="sanitization_ozone"/>
        <attributeEditorField showLabel="1" index="25" name="filtration_membrane"/>
        <attributeEditorField showLabel="1" index="27" name="flocculation"/>
        <attributeEditorField showLabel="1" index="33" name="usr_filter_activedcharcoal"/>
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
    <default field="fk_status" expression=""/>
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
    <default field="sanitization_uv" expression=""/>
    <default field="sanitization_chlorine_liquid" expression=""/>
    <default field="sanitization_chlorine_gazeous" expression=""/>
    <default field="sanitization_ozone" expression=""/>
    <default field="filtration_membrane" expression=""/>
    <default field="filtration_sandorgravel" expression=""/>
    <default field="flocculation" expression=""/>
    <default field="activatedcharcoal" expression=""/>
    <default field="settling" expression=""/>
    <default field="treatment_capacity" expression=""/>
    <default field="year_end" expression=""/>
    <default field="usr_electrolyser" expression=""/>
    <default field="usr_filter_activedcharcoal" expression=""/>
  </defaults>
  <previewExpression>COALESCE( "id", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
