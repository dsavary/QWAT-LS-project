Sub BTN_EM_SISOL_PT_Click()
	'msgbox "Pas encore en service"

	vFIDCond = TBGen.FieldValue("FID")
	GIDCond = TBGen.FieldValue("GID")
	nbPtsSisol=0

'60
	'if vFIDCond = "0" Then
		selectEMontage = "select c.FID FIDElemMontage,a.GIGELEMMONTAGE "_
			& "from WA_EINBAUTEIL c,VW_ElemMontage_ATT_GEO a,VW_STRANG_ATT_GEO b "_
			& "where b.GIDCond = " & GIDCond & " "_
			& "and c.FID = a.FIDElemMontage "_
			& "and a.CoordX = b.CoordX "_
			& "and a.CoordY = b.CoordY "

		set rs3=CreateObject("ADODB.Recordset")
		rs3.open selectEMontage, TBGen.ConnectObj
		do while not rs3.eof
			compteur = 0

			selectPtSISOL = "select pts.FID FIDptSISOL,ptsGEO.Z1 altitude,pts.P_NIVEAU Niveau "_
					& "from POINT_SISOL pts,POINT_SISOL_GEO ptsGeo,VW_ElemMontage_ATT_GEO a "_
					& "where a.FIDElemMontage = " & rs3("FIDElemMontage").value & " "_
					& "and a.CoordX = ptsGeo.X1 "_
					& "and a.CoordY = ptsGeo.Y1 "_
					& "and pts.GID = ptsGeo.GID"
			set rs4=CreateObject("ADODB.Recordset")
			rs4.open selectPtSISOL, TBGen.ConnectObj
			do while not rs4.eof

				altitude = rs4("altitude").value
				niveau = rs4("Niveau").value
				TBGenApp.LoadDialog "POINT_SISOL", "FID = " & rs4("FIDptSISOL").value
				TBGenApp.DataView("POINT_SISOL").FieldValue("REPRIS_TB") = "-1"
				TBGen.UpDate()
				TBGen.Refresh()

				rs4.movenext
				compteur = compteur +1 

				if compteur = 1 then
					TBGenApp.LoadDialog "WA_EINBAUTEIL", "FID = " & rs3("FIDElemMontage").value
					TBGenApp.DataView("WA_EINBAUTEIL").FieldValue("CALE_SISOL") = "-1" 
					TBGenApp.DataView("WA_EINBAUTEIL").FieldValue("ALTITUDE") = altitude
					TBGenApp.DataView("WA_EINBAUTEIL").FieldValue("STATUS") = "E" 
					TBGenApp.DataView("WA_EINBAUTEIL").FieldValue("LAGEGENAUIGKEIT") = "P" 
					TBGenApp.DataView("WA_EINBAUTEIL").FieldValue("HOEHENBESTIMMUNG") = "2" 
					TBGenApp.DataView("WA_EINBAUTEIL").FieldValue("NIVEAU") = niveau 
					TBGen.UpDate()
					TBGen.Refresh()

					TBGenApp.LoadDialog "WA_EINBAUTEIL_GEO", "GID = " & rs3("GIGELEMMONTAGE").value
					TBGenApp.DataView("WA_EINBAUTEIL_GEO").FieldValue("Z1") = altitude 
					TBGen.UpDate()
					TBGen.Refresh()

					nbPtsSisol = nbPtsSisol + 1
				end if
			loop
			rs4.close
			set rs4=nothing

			rs3.movenext
		loop
		rs3.close
		set rs3=nothing
		msgbox "Nb de pts Sisol repris " & nbPtsSisol

		TBGenApp.LoadDialog "WA_STRANG", "FID = " & vFIDCond
	'End If

End Sub