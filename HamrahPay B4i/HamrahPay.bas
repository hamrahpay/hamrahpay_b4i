Type=StaticCode
Version=2.8
ModulesStructureVersion=1
B4i=true
@EndOfDesignText@
'Code module

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'Public variables can be accessed from all modules.
	
	Public App As Application
	Dim pay_req,pay_verify As HttpJob
	Dim hud1 As HUD
	
	Dim pay_status As Boolean = False
	Dim pay_request_url As String 
	Dim	pay_verify_url As String
	Dim pay_code As String
	Dim pay_url As String
	Dim status	As String
	Dim error As Boolean
	Dim mail As String
	Dim	verification_type As String
	
	'verification_type ="email_verification"
	verification_type ="device_verification"
	Dim product_sku As String
	'Change this code to your product sku code
	' کد محصول خود را جایگزین کد زیر نمایید
	product_sku = "hp_545f4a3e37365885842986" 
	
End Sub

'This method returns unique id from each device
Sub GetVendorIdentifier As String
   Dim no As NativeObject
   no = no.Initialize("UIDevice").RunMethod("currentDevice", Null)
   Dim id As Object = no.GetField("identifierForVendor").GetField("UUIDString")
   Dim p As Phone
   p.KeyChainPut("VendorId",id)
   Return id
   
End Sub



Private Sub Payment(res_map As Map)
	pay_url = "https://hamrahpay.com/cart/app/pay_v2/"
	status = res_map.Get("status")
	error = res_map.Get("error")
	If (error=False) Then
		If status="SELLER_BLOCKED" Or status="TRY_AGAIN" Or status="BAD_PARAMETERS" Then
			hud1.ToastMessageShow(res_map.Get("message"),True)
		Else If status="READY_TO_PAY" Then
			pay_code = res_map.Get("pay_code")		
			pay_url = pay_url&pay_code
			Payment_page.ShowPageMe(pay_url)
		Else If status="BEFORE_PAID" Then								
			
			pay_code = res_map.Get("pay_code")
			verify_payment(pay_code,product_sku)
			If pay_status=True Then
					' قبلا پرداخت توسط کاربر انجام شده است و برنامه نویس باید نرم افزار خود را فعال نماید
					hud1.ToastMessageShow("پرداخت قبلا انجام شده است",False)
					activate_app
			End If
		Else
			hud1.ToastMessageShow(res_map.Get("message"),True)
		End If		
	Else
		hud1.ToastMessageShow(res_map.Get("message"),True)
		pay_code=""
	End If
End Sub

Sub pay_request
	
	Dim p As Phone
	If p.KeyChainGet("VendorId").Length>3 Then
			Dim venId As String = p.KeyChainGet("VendorId").SubString2(1,16)
		Else
			GetVendorIdentifier
			Dim venId As String = p.KeyChainGet("VendorId").SubString2(1,16)
	End If
	Dim pay_request_url As String
	pay_request_url = "https://hamrahpay.com/rest-api/pay-request"
	Dim post_param As String
	
	hud1.ProgressDialogShow("لطفا صبر کنید ...")
	post_param =  "sku="&product_sku&"&device_id="&venId&"&verification_type="&verification_type
	pay_req.Initialize("pay_reqq",Me)
	pay_req.PostString(pay_request_url,post_param)
	
	
End Sub



Sub JobDone(Job As HttpJob)
	Dim JSON As JSONParser
	Dim Map1 As Map
	
	
	If Job.Success Then
		If Job.JobName = "pay_reqq" Then
				hud1.ProgressDialogHide
				JSON.Initialize(Job.GetString)
				Map1 = JSON.NextObject
				Payment(Map1)
		End If
		 
		If Job.JobName = "Pay_Verifyy" Then
				JSON.Initialize(Job.GetString)
				Map1 = JSON.NextObject
				verify(Map1)
		End If
		
	Else	
		hud1.ProgressDialogHide
		Msgbox("لطفا اتصال به اینترنت را چک کنید","خطای شبکه")
	End If
	
End Sub

Sub verify_payment(pay_code_param As String,sku As String)
	Dim	device_model As String
	Dim device_manufacturer As String
	Dim sdk_version As String 
	Dim	p As Phone

	Dim device As NativeObject
	device = device.Initialize("UIDevice").RunMethod("currentDevice", Null)
	device_model = device.GetField("model").AsString 
	device_manufacturer = "apple"
	'ios version insted sdk_version
	sdk_version = App.OSVersion
	
	pay_verify_url = "https://hamrahpay.com/rest-api/verify-payment"
	pay_verify.Initialize("Pay_Verifyy",Me)
	
	pay_verify.PostString(pay_verify_url, "pay_code="&pay_code_param&"&sku="&product_sku&"&email="&mail&"&device_model="&device_model&"&device_manufacturer="&device_manufacturer&"&sdk_version="&sdk_version)
	
End Sub

Private Sub verify(verify_map As Map) 
	
	status = verify_map.Get("status")
	error = verify_map.Get("error")
	
	If error=True Then
		hud1.ToastMessageShow(verify_map.Get("message"),True)
		pay_status= False
	Else
		If status="SUCCESSFUL_PAYMENT" Then
			pay_status= True
		Else 
			pay_status= False
			
		End If	
	End If
	If pay_status=True Then
		activate_app
		
	End If
	
End Sub
Sub activate_app
	
	'// کد های مربوط به فعال سازی را در این قسمت اضافه کنید
	' شما می توانید با توجه به نوع محصول خود از یکی از دسته کد های زیر استفاده نمایید
	'یا کلا کد مورد نظر خود را جایگزین کد های زیر نمایید
	
	'//----------------------مثال برای محصول خریدنی------------------			
				Dim m1 As Map
				m1.Initialize
				m1.put("active",True)
				File.WriteMap(File.DirDocuments,"active",m1)
				hud1.ToastMessageShow("نرم افزار شما به نسخه کامل ارتقاع پیدا کرد.",True)
	'//-------------------------------------------------------
	
	
	'**-----------------------مثال برای محصول مصرف کردنی------------
		
		'مقدار خرید جدید
		Dim silver_amount_bought As Int=0
		' کل نقره
		Dim silver_amount  As Int
		
		Dim silver As Map
		silver.Initialize
		If File.Exists(File.DirDocuments,"silver_amount_file") = True Then
			silver = File.ReadMap(File.DirDocuments,"silver_amount_file")
			silver_amount=silver.Get("silver_amount")
			silver.put("silver_amount",silver_amount+silver_amount_bought)
		Else
			silver.put("silver_amount",silver_amount_bought)
		End If
		
		

		File.WriteMap(File.DirDocuments,"silver_amount_file",silver)
	
	'**-------------------------------------------------------
End Sub