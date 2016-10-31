Type=StaticCode
Version=2.8
ModulesStructureVersion=1
B4i=true
@EndOfDesignText@
'Code module

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'Public variables can be accessed from all modules.
	
	Dim payment_page As Page
	Public App As Application
End Sub

Sub ShowPageMe
	payment_page.Initialize("pay")
	payment_page.RootPanel.LoadLayout("payview")
	Main.NavControl.ShowPage(payment_page)
	payment_page.Title = "Payment"
	
	
	
End Sub