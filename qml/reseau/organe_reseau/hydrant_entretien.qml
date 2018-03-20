<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.13" minimumScale="0" maximumScale="1e+08" readOnly="0" hasScaleBasedVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="id">
      <widgetv2config IsMultiline="0" fieldEditable="0" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="RelationReference" name="fk_hydrant">
      <widgetv2config OrderByValue="0" fieldEditable="1" AllowAddFeatures="0" ShowForm="0" Relation="relation_hydrant_fiche_entretien" ReadOnly="1" constraint="" MapIdentification="1" labelOnTop="0" constraintDescription="" notNull="1" AllowNULL="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="no_invoice">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint=" (&quot;date_invoice&quot; is not null AND  &quot;no_invoice&quot; is not null) OR  (&quot;date_invoice&quot; is null AND  &quot;no_invoice&quot; is null) " UseHtml="0" labelOnTop="0" constraintDescription="La date de facture doit être renseignée si un numéro de facture existe et inversément" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="order_form">
      <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="date_invoice">
      <widgetv2config fieldEditable="1" calendar_popup="1" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" constraint=" (&quot;date_invoice&quot; is not null AND  &quot;no_invoice&quot; is not null) OR  (&quot;date_invoice&quot; is null AND  &quot;no_invoice&quot; is null) " labelOnTop="0" constraintDescription="La date de facture doit être renseignée si un numéro de facture existe et inversément" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_procedure">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression=" &quot;vl_active&quot; =  't' " UseCompleter="0" fieldEditable="1" Key="id" constraint=" (&quot;fk_procedure&quot; is not null AND  &quot;date_procedure&quot; is not null) OR  (&quot;fk_procedure&quot; is null AND  &quot;date_procedure&quot; is null)" Layer="usr_hydrant_procedure20160520114710517" Value="value_fr" labelOnTop="0" constraintDescription="La date d'intervention doit être renseignée si un type d'intervention est mentionné et inversément" AllowMulti="0" notNull="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="date_procedure">
      <widgetv2config fieldEditable="1" calendar_popup="1" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" constraint=" (&quot;fk_procedure&quot; is not null AND  &quot;date_procedure&quot; is not null) OR  (&quot;fk_procedure&quot; is null AND  &quot;date_procedure&quot; is null)" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="fk_hydrant_maintenance">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="id" constraint="" Layer="usr_hydrant_type_maintenance20160520114710449" Value="value_fr" labelOnTop="0" constraintDescription="" AllowMulti="1" notNull="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="remark">
      <widgetv2config IsMultiline="1" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
    </edittype>
  </edittypes>
  <annotationform>../../../PROJET_QGIS/qwat_lausanne</annotationform>
  <aliases>
    <alias field="id" index="0" name="ID"/>
    <alias field="fk_hydrant" index="1" name="Lien vers l'hydrant concerné"/>
    <alias field="no_invoice" index="2" name="N° de facture"/>
    <alias field="order_form" index="3" name="N° de bon de commande"/>
    <alias field="date_invoice" index="4" name="Date de la facture"/>
    <alias field="fk_procedure" index="5" name="Type d'intervention"/>
    <alias field="date_procedure" index="6" name="Date de l'intervention"/>
    <alias field="fk_hydrant_maintenance" index="7" name="Type d'entretien"/>
    <alias field="remark" index="8" name="Remarque"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions default="-1"/>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="COALESCE(&quot;id&quot;, '&lt;NULL>')" sortOrder="0">
    <columns>
      <column width="-1" hidden="0" type="field" name="id"/>
      <column width="-1" hidden="0" type="field" name="fk_hydrant"/>
      <column width="-1" hidden="0" type="field" name="no_invoice"/>
      <column width="-1" hidden="0" type="field" name="order_form"/>
      <column width="-1" hidden="0" type="field" name="date_invoice"/>
      <column width="-1" hidden="0" type="field" name="fk_procedure"/>
      <column width="-1" hidden="0" type="field" name="date_procedure"/>
      <column width="-1" hidden="0" type="field" name="fk_hydrant_maintenance"/>
      <column width="-1" hidden="0" type="field" name="remark"/>
      <column width="-1" hidden="1" type="actions"/>
    </columns>
  </attributetableconfig>
  <editform>../../../PROJET_QGIS/qwat_lausanne</editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath>../../../PROJET_QGIS/qwat_lausanne</editforminitfilepath>
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
  <editorlayout>generatedlayout</editorlayout>
  <widgets/>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <defaults>
    <default field="id" expression=""/>
    <default field="fk_hydrant" expression=""/>
    <default field="no_invoice" expression=""/>
    <default field="order_form" expression=""/>
    <default field="date_invoice" expression=""/>
    <default field="fk_procedure" expression=""/>
    <default field="date_procedure" expression=""/>
    <default field="fk_hydrant_maintenance" expression=""/>
    <default field="remark" expression="''"/>
  </defaults>
  <previewExpression>COALESCE("id", '&lt;NULL>')</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
