Type=StaticCode
Version=2.8
ModulesStructureVersion=1
B4i=true
@EndOfDesignText@
'Code module

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'Public variables can be accessed from all modules.
	Private Page1 As Page
	Public App As Application
	Dim nc As NavigationController
	Dim NavControl As NavigationController
	Dim hud1 As HUD
	Private ButtonPay As Button
	Private Label1 As Label
	
End Sub

Sub ShowPageMe
	
	nc.Initialize("nc")
	NavControl=nc
	Page1.Initialize("Page1")
	Dim no As NativeObject = nc
   	Page1.HideBackButton = True
	Page1.RootPanel.LoadLayout("main")
	Main.NavControl.ShowPage(Page1)
	
	If File.Exists(File.DirDocuments,"active") = True Then
		Label1.Visible=True
	End If
	
End Sub

Sub ButtonPay_Click
	HamrahPay.pay_request
End Sub