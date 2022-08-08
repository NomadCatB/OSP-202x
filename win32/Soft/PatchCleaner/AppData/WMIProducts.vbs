'' Identify which patches are registered on the system, and to which
'' products those patches are installed.
''
'' Copyright (C) Microsoft Corporation. All rights reserved.
''
'' THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
'' KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
'' IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
'' PARTICULAR PURPOSE.
'' Edited by HomeDev for PatchCleaner

'Option Explicit

On Error Resume Next

Dim msi : Set msi = CreateObject("WindowsInstaller.Installer")

Dim objFileErrors : objFileErrors = Nothing

Set fso = CreateObject("Scripting.FileSystemObject")
Set objFileProducts = fso.CreateTextFile("products.txt", True)
Set objFilePatches = fso.CreateTextFile("patches.txt", True)

' clean up error file from any previous failures
if fso.FileExists("errors.txt") then
	fso.DeleteFile "errors.txt" 
end if

' Enumerate all products
Dim products : Set products = msi.Products
Dim product
Dim productLocation
Dim productName
Dim location 

For Each product in products

	' Clear the values from the previous loop
	productLocation = ""
	productName = ""

	productLocation = msi.ProductInfo(product, "LocalPackage") : CheckError
	productName = msi.ProductInfo(product, "ProductName") : CheckError
	
	If(productLocation <> "") Then
	
	    objFileProducts.WriteLine product & "||| [" & productName & "]||| " & productLocation

	    ' For each product, enumerate its applied patches
	    Dim patches : Set patches = msi.Patches(product)
	    Dim patchCode

	    For Each patchCode in patches
		    ' Get the local patch location
            location = ""
		    location = msi.PatchInfo(patchCode, "LocalPackage")
		    'WORKED - Dim name : name = msi.PatchInfo(patchCode, "PackageName")
		    'Dim name : name = msi.PatchInfo(patchCode, "PatchID")
            objFilePatches.WriteLine product & "||| " & patchCode & "||| " & location 
	    Next
    End If

Next

objFileProducts.Close()
objFilePatches.Close()

Finish

'-------------------------------------------------------
' Finalise the process clearing the product/patch files
' if errors have occurred
'-------------------------------------------------------
Sub Finish

	if fso.FileExists("errors.txt") then

		if fso.FileExists("products.txt") then
			fso.DeleteFile "products.txt" 
		end if

		if fso.FileExists("patches.txt") then
			fso.DeleteFile "patches.txt" 
		end if
	
		objFileErrors.Close()
		
	end if

End Sub

'-------------------------------------------------------
' Log an error message
'-------------------------------------------------------
Sub LogError(msg)
	Wscript.Echo msg
	
	If Not fso.FileExists("errors.txt")  Then
		Set objFileErrors = fso.CreateTextFile("errors.txt", True)
		objFileErrors.WriteLine "PatchCleaner - WMI Patch Check errors"
	End If

	 objFileErrors.WriteLine Now & " - " & msg
	
	'Wscript.Echo "Wrote: " & msg 
End Sub

'-------------------------------------------------------
' Check for and log an error message if a problem has occurred
'-------------------------------------------------------
Sub CheckError

    Dim message, errRec
    If Err = 0 Then Exit Sub
    message = Err.Source & " " & Hex(Err) & ": " & Err.Description
    If Not installer Is Nothing Then
        Set errRec = installer.LastErrorRecord
        If Not errRec Is Nothing Then message = message & vbNewLine & errRec.FormatText
    End If

	LogError(message)
	
    'Wscript.Echo message
    'Wscript.Quit 2
End Sub

