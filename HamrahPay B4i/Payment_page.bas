Type=StaticCode
Version=2.8
ModulesStructureVersion=1
B4i=true
@EndOfDesignText@
'Code module

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'Public variables can be accessed from all modules.
	
	Dim paymentpage As Page
	Public App As Application
	Private WebView1 As WebView
	Private addressbar As Label
	
End Sub

Sub ShowPageMe(url As String)
	paymentpage.Initialize("pay")
	paymentpage.RootPanel.LoadLayout("payview")
	Main.NavControl.ShowPage(paymentpage)
	paymentpage.HideBackButton = True
	paymentpage.Title = "Payment"
	
	
	WebView1.LoadUrl(url)
	addressbar.Text=HamrahPay.pay_url
	addressbar.Color=Colors.LightGray
	addressbar.TextColor=Colors.Black
	
	
	
End Sub


Sub WebView1_OverrideUrl (Url As String) As Boolean
	
	addressbar.Text = Url
	If Url.ToLowerCase.Contains("exit_page") Then
	HamrahPay.verify_payment(HamrahPay.pay_code,HamrahPay.product_sku)	
	mainpage.ShowPageMe
	End If
	
	If (Url.ToLowerCase.Contains("shaparak.ir") And Url.ToLowerCase.StartsWith("https://")) Then
		addressbar.Color=Colors.RGB(90,162,43)
	End If
End Sub


Sub Button1_Click
	HamrahPay.verify_payment(HamrahPay.pay_code,HamrahPay.product_sku)	
	mainpage.ShowPageMe
End Sub