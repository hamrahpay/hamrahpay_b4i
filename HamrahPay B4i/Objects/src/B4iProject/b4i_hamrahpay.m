
#import "b4i_hamrahpay.h"
#import "b4i_main.h"
#import "b4i_payment_page.h"
#import "b4i_httpjob.h"
#import "b4i_httputils2service.h"
#import "b4i_mainpage.h"


@implementation b4i_hamrahpay 


+ (instancetype)new {
    static b4i_hamrahpay* shared = nil;
    if (shared == nil) {
        shared = [self alloc];
        shared.bi = [[B4IShellBI alloc] init:shared];
        shared.__c = [B4ICommon new];
    }
    return shared;
}
- (int)debugAppId {
    return 3;
}


- (NSString*)  _activate_app{
[B4IRDebugUtils shared].currentModule=@"hamrahpay";
if ([B4IDebug shouldDelegate: @"activate_app"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"activate_app" :nil]);
B4IMap* _m1 = nil;
int _silver_amount_bought = 0;
int _silver_amount = 0;
B4IMap* _silver = nil;
[B4IRDebugUtils shared].currentLine=720896;
 //BA.debugLineNum = 720896;BA.debugLine="Sub activate_app";
[B4IRDebugUtils shared].currentLine=720903;
 //BA.debugLineNum = 720903;BA.debugLine="Dim m1 As Map";
_m1 = [B4IMap new];
[B4IRDebugUtils shared].currentLine=720904;
 //BA.debugLineNum = 720904;BA.debugLine="m1.Initialize";
[_m1 Initialize];
[B4IRDebugUtils shared].currentLine=720905;
 //BA.debugLineNum = 720905;BA.debugLine="m1.put(\"active\",True)";
[_m1 Put:(NSObject*)(@"active") :(NSObject*)(@([self.__c True]))];
[B4IRDebugUtils shared].currentLine=720906;
 //BA.debugLineNum = 720906;BA.debugLine="File.WriteMap(File.DirDocuments,\"active\",m1)";
[[self.__c File] WriteMap:[[self.__c File] DirDocuments] :@"active" :_m1];
[B4IRDebugUtils shared].currentLine=720907;
 //BA.debugLineNum = 720907;BA.debugLine="hud1.ToastMessageShow(\"نرم افزار شما به نسخه ک";
[self._hud1 ToastMessageShow:@"نرم افزار شما به نسخه کامل ارتقاع پیدا کرد." :[self.__c True]];
[B4IRDebugUtils shared].currentLine=720914;
 //BA.debugLineNum = 720914;BA.debugLine="Dim silver_amount_bought As Int=0";
_silver_amount_bought = (int) (0);
[B4IRDebugUtils shared].currentLine=720916;
 //BA.debugLineNum = 720916;BA.debugLine="Dim silver_amount  As Int";
_silver_amount = 0;
[B4IRDebugUtils shared].currentLine=720918;
 //BA.debugLineNum = 720918;BA.debugLine="Dim silver As Map";
_silver = [B4IMap new];
[B4IRDebugUtils shared].currentLine=720919;
 //BA.debugLineNum = 720919;BA.debugLine="silver.Initialize";
[_silver Initialize];
[B4IRDebugUtils shared].currentLine=720920;
 //BA.debugLineNum = 720920;BA.debugLine="If File.Exists(File.DirDocuments,\"silver_amount_";
if ([[self.__c File] Exists:[[self.__c File] DirDocuments] :@"silver_amount_file"]==[self.__c True]) { 
[B4IRDebugUtils shared].currentLine=720921;
 //BA.debugLineNum = 720921;BA.debugLine="silver = File.ReadMap(File.DirDocuments,\"silver";
_silver = [[self.__c File] ReadMap:[[self.__c File] DirDocuments] :@"silver_amount_file"];
[B4IRDebugUtils shared].currentLine=720922;
 //BA.debugLineNum = 720922;BA.debugLine="silver_amount=silver.Get(\"silver_amount\")";
_silver_amount = [self.bi ObjectToNumber:[_silver Get:(NSObject*)(@"silver_amount")]].intValue;
[B4IRDebugUtils shared].currentLine=720923;
 //BA.debugLineNum = 720923;BA.debugLine="silver.put(\"silver_amount\",silver_amount+silver";
[_silver Put:(NSObject*)(@"silver_amount") :(NSObject*)(@(_silver_amount+_silver_amount_bought))];
 }else {
[B4IRDebugUtils shared].currentLine=720925;
 //BA.debugLineNum = 720925;BA.debugLine="silver.put(\"silver_amount\",silver_amount_bought";
[_silver Put:(NSObject*)(@"silver_amount") :(NSObject*)(@(_silver_amount_bought))];
 };
[B4IRDebugUtils shared].currentLine=720930;
 //BA.debugLineNum = 720930;BA.debugLine="File.WriteMap(File.DirDocuments,\"silver_amount_f";
[[self.__c File] WriteMap:[[self.__c File] DirDocuments] :@"silver_amount_file" :_silver];
[B4IRDebugUtils shared].currentLine=720933;
 //BA.debugLineNum = 720933;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _getvendoridentifier{
[B4IRDebugUtils shared].currentModule=@"hamrahpay";
if ([B4IDebug shouldDelegate: @"getvendoridentifier"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"getvendoridentifier" :nil]);
B4INativeObject* _no = nil;
NSObject* _id = nil;
B4IPhone* _p = nil;
[B4IRDebugUtils shared].currentLine=327680;
 //BA.debugLineNum = 327680;BA.debugLine="Sub GetVendorIdentifier As String";
[B4IRDebugUtils shared].currentLine=327681;
 //BA.debugLineNum = 327681;BA.debugLine="Dim no As NativeObject";
_no = [B4INativeObject new];
[B4IRDebugUtils shared].currentLine=327682;
 //BA.debugLineNum = 327682;BA.debugLine="no = no.Initialize(\"UIDevice\").RunMethod(\"curre";
_no = [[_no Initialize:@"UIDevice"] RunMethod:@"currentDevice" :(B4IArray*)([self.__c Null])];
[B4IRDebugUtils shared].currentLine=327683;
 //BA.debugLineNum = 327683;BA.debugLine="Dim id As Object = no.GetField(\"identifierForVe";
_id = (NSObject*)(([[_no GetField:@"identifierForVendor"] GetField:@"UUIDString"]).object);
[B4IRDebugUtils shared].currentLine=327684;
 //BA.debugLineNum = 327684;BA.debugLine="Dim p As Phone";
_p = [B4IPhone new];
[B4IRDebugUtils shared].currentLine=327685;
 //BA.debugLineNum = 327685;BA.debugLine="p.KeyChainPut(\"VendorId\",id)";
[_p KeyChainPut:@"VendorId" :[self.bi ObjectToString:_id]];
[B4IRDebugUtils shared].currentLine=327686;
 //BA.debugLineNum = 327686;BA.debugLine="Return id";
if (true) return [self.bi ObjectToString:_id];
[B4IRDebugUtils shared].currentLine=327688;
 //BA.debugLineNum = 327688;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _jobdone:(b4i_httpjob*) _job{
[B4IRDebugUtils shared].currentModule=@"hamrahpay";
if ([B4IDebug shouldDelegate: @"jobdone"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"jobdone:" :@[_job]]);
B4IJSONParser* _json = nil;
B4IMap* _map1 = nil;
[B4IRDebugUtils shared].currentLine=524288;
 //BA.debugLineNum = 524288;BA.debugLine="Sub JobDone(Job As HttpJob)";
[B4IRDebugUtils shared].currentLine=524289;
 //BA.debugLineNum = 524289;BA.debugLine="Dim JSON As JSONParser";
_json = [B4IJSONParser new];
[B4IRDebugUtils shared].currentLine=524290;
 //BA.debugLineNum = 524290;BA.debugLine="Dim Map1 As Map";
_map1 = [B4IMap new];
[B4IRDebugUtils shared].currentLine=524293;
 //BA.debugLineNum = 524293;BA.debugLine="If Job.Success Then";
if (_job._success) { 
[B4IRDebugUtils shared].currentLine=524294;
 //BA.debugLineNum = 524294;BA.debugLine="If Job.JobName = \"pay_reqq\" Then";
if ([_job._jobname isEqual:@"pay_reqq"]) { 
[B4IRDebugUtils shared].currentLine=524295;
 //BA.debugLineNum = 524295;BA.debugLine="hud1.ProgressDialogHide";
[self._hud1 ProgressDialogHide];
[B4IRDebugUtils shared].currentLine=524296;
 //BA.debugLineNum = 524296;BA.debugLine="JSON.Initialize(Job.GetString)";
[_json Initialize:[_job _getstring:nil]];
[B4IRDebugUtils shared].currentLine=524297;
 //BA.debugLineNum = 524297;BA.debugLine="Map1 = JSON.NextObject";
_map1 = [_json NextObject];
[B4IRDebugUtils shared].currentLine=524298;
 //BA.debugLineNum = 524298;BA.debugLine="Payment(Map1)";
[self _payment:_map1];
 };
[B4IRDebugUtils shared].currentLine=524301;
 //BA.debugLineNum = 524301;BA.debugLine="If Job.JobName = \"Pay_Verifyy\" Then";
if ([_job._jobname isEqual:@"Pay_Verifyy"]) { 
[B4IRDebugUtils shared].currentLine=524302;
 //BA.debugLineNum = 524302;BA.debugLine="JSON.Initialize(Job.GetString)";
[_json Initialize:[_job _getstring:nil]];
[B4IRDebugUtils shared].currentLine=524303;
 //BA.debugLineNum = 524303;BA.debugLine="Map1 = JSON.NextObject";
_map1 = [_json NextObject];
[B4IRDebugUtils shared].currentLine=524304;
 //BA.debugLineNum = 524304;BA.debugLine="verify(Map1)";
[self _verify:_map1];
 };
 }else {
[B4IRDebugUtils shared].currentLine=524308;
 //BA.debugLineNum = 524308;BA.debugLine="hud1.ProgressDialogHide";
[self._hud1 ProgressDialogHide];
[B4IRDebugUtils shared].currentLine=524309;
 //BA.debugLineNum = 524309;BA.debugLine="Msgbox(\"لطفا اتصال به اینترنت را چک کنید\",\"خطای";
[self.__c Msgbox:@"لطفا اتصال به اینترنت را چک کنید" :@"خطای شبکه"];
 };
[B4IRDebugUtils shared].currentLine=524312;
 //BA.debugLineNum = 524312;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _payment:(B4IMap*) _res_map{
[B4IRDebugUtils shared].currentModule=@"hamrahpay";
if ([B4IDebug shouldDelegate: @"payment"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"payment:" :@[_res_map]]);
[B4IRDebugUtils shared].currentLine=393216;
 //BA.debugLineNum = 393216;BA.debugLine="Private Sub Payment(res_map As Map)";
[B4IRDebugUtils shared].currentLine=393217;
 //BA.debugLineNum = 393217;BA.debugLine="pay_url = \"https://hamrahpay.com/cart/app/pay_v2/";
self._pay_url = @"https://hamrahpay.com/cart/app/pay_v2/";
[B4IRDebugUtils shared].currentLine=393218;
 //BA.debugLineNum = 393218;BA.debugLine="status = res_map.Get(\"status\")";
self._status = [self.bi ObjectToString:[_res_map Get:(NSObject*)(@"status")]];
[B4IRDebugUtils shared].currentLine=393219;
 //BA.debugLineNum = 393219;BA.debugLine="error = res_map.Get(\"error\")";
self._error = [self.bi ObjectToBoolean:[_res_map Get:(NSObject*)(@"error")]];
[B4IRDebugUtils shared].currentLine=393220;
 //BA.debugLineNum = 393220;BA.debugLine="If (error=False) Then";
if ((self._error==[self.__c False])) { 
[B4IRDebugUtils shared].currentLine=393221;
 //BA.debugLineNum = 393221;BA.debugLine="If status=\"SELLER_BLOCKED\" Or status=\"TRY_AGAIN\"";
if ([self._status isEqual:@"SELLER_BLOCKED"] || [self._status isEqual:@"TRY_AGAIN"] || [self._status isEqual:@"BAD_PARAMETERS"]) { 
[B4IRDebugUtils shared].currentLine=393222;
 //BA.debugLineNum = 393222;BA.debugLine="hud1.ToastMessageShow(res_map.Get(\"message\"),Tr";
[self._hud1 ToastMessageShow:[self.bi ObjectToString:[_res_map Get:(NSObject*)(@"message")]] :[self.__c True]];
 }else if([self._status isEqual:@"READY_TO_PAY"]) { 
[B4IRDebugUtils shared].currentLine=393224;
 //BA.debugLineNum = 393224;BA.debugLine="pay_code = res_map.Get(\"pay_code\")";
self._pay_code = [self.bi ObjectToString:[_res_map Get:(NSObject*)(@"pay_code")]];
[B4IRDebugUtils shared].currentLine=393225;
 //BA.debugLineNum = 393225;BA.debugLine="pay_url = pay_url&pay_code";
self._pay_url = [@[self._pay_url,self._pay_code] componentsJoinedByString:@""];
[B4IRDebugUtils shared].currentLine=393226;
 //BA.debugLineNum = 393226;BA.debugLine="Payment_page.ShowPageMe(pay_url)";
[self._payment_page _showpageme:self._pay_url];
 }else if([self._status isEqual:@"BEFORE_PAID"]) { 
[B4IRDebugUtils shared].currentLine=393229;
 //BA.debugLineNum = 393229;BA.debugLine="pay_code = res_map.Get(\"pay_code\")";
self._pay_code = [self.bi ObjectToString:[_res_map Get:(NSObject*)(@"pay_code")]];
[B4IRDebugUtils shared].currentLine=393230;
 //BA.debugLineNum = 393230;BA.debugLine="verify_payment(pay_code,product_sku)";
[self _verify_payment:self._pay_code :self._product_sku];
[B4IRDebugUtils shared].currentLine=393231;
 //BA.debugLineNum = 393231;BA.debugLine="If pay_status=True Then";
if (self._pay_status==[self.__c True]) { 
[B4IRDebugUtils shared].currentLine=393233;
 //BA.debugLineNum = 393233;BA.debugLine="hud1.ToastMessageShow(\"پرداخت قبلا انجام شده";
[self._hud1 ToastMessageShow:@"پرداخت قبلا انجام شده است" :[self.__c False]];
[B4IRDebugUtils shared].currentLine=393234;
 //BA.debugLineNum = 393234;BA.debugLine="activate_app";
[self _activate_app];
 };
 }else {
[B4IRDebugUtils shared].currentLine=393237;
 //BA.debugLineNum = 393237;BA.debugLine="hud1.ToastMessageShow(res_map.Get(\"message\"),Tr";
[self._hud1 ToastMessageShow:[self.bi ObjectToString:[_res_map Get:(NSObject*)(@"message")]] :[self.__c True]];
 };
 }else {
[B4IRDebugUtils shared].currentLine=393240;
 //BA.debugLineNum = 393240;BA.debugLine="hud1.ToastMessageShow(res_map.Get(\"message\"),Tru";
[self._hud1 ToastMessageShow:[self.bi ObjectToString:[_res_map Get:(NSObject*)(@"message")]] :[self.__c True]];
[B4IRDebugUtils shared].currentLine=393241;
 //BA.debugLineNum = 393241;BA.debugLine="pay_code=\"\"";
self._pay_code = @"";
 };
[B4IRDebugUtils shared].currentLine=393243;
 //BA.debugLineNum = 393243;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _verify:(B4IMap*) _verify_map{
[B4IRDebugUtils shared].currentModule=@"hamrahpay";
if ([B4IDebug shouldDelegate: @"verify"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"verify:" :@[_verify_map]]);
[B4IRDebugUtils shared].currentLine=655360;
 //BA.debugLineNum = 655360;BA.debugLine="Private Sub verify(verify_map As Map)";
[B4IRDebugUtils shared].currentLine=655362;
 //BA.debugLineNum = 655362;BA.debugLine="status = verify_map.Get(\"status\")";
self._status = [self.bi ObjectToString:[_verify_map Get:(NSObject*)(@"status")]];
[B4IRDebugUtils shared].currentLine=655363;
 //BA.debugLineNum = 655363;BA.debugLine="error = verify_map.Get(\"error\")";
self._error = [self.bi ObjectToBoolean:[_verify_map Get:(NSObject*)(@"error")]];
[B4IRDebugUtils shared].currentLine=655365;
 //BA.debugLineNum = 655365;BA.debugLine="If error=True Then";
if (self._error==[self.__c True]) { 
[B4IRDebugUtils shared].currentLine=655366;
 //BA.debugLineNum = 655366;BA.debugLine="hud1.ToastMessageShow(verify_map.Get(\"message\"),";
[self._hud1 ToastMessageShow:[self.bi ObjectToString:[_verify_map Get:(NSObject*)(@"message")]] :[self.__c True]];
[B4IRDebugUtils shared].currentLine=655367;
 //BA.debugLineNum = 655367;BA.debugLine="pay_status= False";
self._pay_status = [self.__c False];
 }else {
[B4IRDebugUtils shared].currentLine=655369;
 //BA.debugLineNum = 655369;BA.debugLine="If status=\"SUCCESSFUL_PAYMENT\" Then";
if ([self._status isEqual:@"SUCCESSFUL_PAYMENT"]) { 
[B4IRDebugUtils shared].currentLine=655370;
 //BA.debugLineNum = 655370;BA.debugLine="pay_status= True";
self._pay_status = [self.__c True];
 }else {
[B4IRDebugUtils shared].currentLine=655372;
 //BA.debugLineNum = 655372;BA.debugLine="pay_status= False";
self._pay_status = [self.__c False];
 };
 };
[B4IRDebugUtils shared].currentLine=655376;
 //BA.debugLineNum = 655376;BA.debugLine="If pay_status=True Then";
if (self._pay_status==[self.__c True]) { 
[B4IRDebugUtils shared].currentLine=655377;
 //BA.debugLineNum = 655377;BA.debugLine="activate_app";
[self _activate_app];
 };
[B4IRDebugUtils shared].currentLine=655381;
 //BA.debugLineNum = 655381;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _pay_request{
[B4IRDebugUtils shared].currentModule=@"hamrahpay";
if ([B4IDebug shouldDelegate: @"pay_request"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"pay_request" :nil]);
B4IPhone* _p = nil;
NSString* _venid = @"";
NSString* _post_param = @"";
[B4IRDebugUtils shared].currentLine=458752;
 //BA.debugLineNum = 458752;BA.debugLine="Sub pay_request";
[B4IRDebugUtils shared].currentLine=458754;
 //BA.debugLineNum = 458754;BA.debugLine="Dim p As Phone";
_p = [B4IPhone new];
[B4IRDebugUtils shared].currentLine=458755;
 //BA.debugLineNum = 458755;BA.debugLine="If p.KeyChainGet(\"VendorId\").Length>3 Then";
if ([[_p KeyChainGet:@"VendorId"] Length]>3) { 
[B4IRDebugUtils shared].currentLine=458756;
 //BA.debugLineNum = 458756;BA.debugLine="Dim venId As String = p.KeyChainGet(\"VendorId\")";
_venid = [[_p KeyChainGet:@"VendorId"] SubString2:(int) (1) :(int) (16)];
 }else {
[B4IRDebugUtils shared].currentLine=458758;
 //BA.debugLineNum = 458758;BA.debugLine="GetVendorIdentifier";
[self _getvendoridentifier];
[B4IRDebugUtils shared].currentLine=458759;
 //BA.debugLineNum = 458759;BA.debugLine="Dim venId As String = p.KeyChainGet(\"VendorId\")";
_venid = [[_p KeyChainGet:@"VendorId"] SubString2:(int) (1) :(int) (16)];
 };
[B4IRDebugUtils shared].currentLine=458761;
 //BA.debugLineNum = 458761;BA.debugLine="Dim pay_request_url As String";
self._pay_request_url = @"";
[B4IRDebugUtils shared].currentLine=458762;
 //BA.debugLineNum = 458762;BA.debugLine="pay_request_url = \"https://hamrahpay.com/rest-api";
self._pay_request_url = @"https://hamrahpay.com/rest-api/pay-request";
[B4IRDebugUtils shared].currentLine=458763;
 //BA.debugLineNum = 458763;BA.debugLine="Dim post_param As String";
_post_param = @"";
[B4IRDebugUtils shared].currentLine=458765;
 //BA.debugLineNum = 458765;BA.debugLine="hud1.ProgressDialogShow(\"لطفا صبر کنید ...\")";
[self._hud1 ProgressDialogShow:@"لطفا صبر کنید ..."];
[B4IRDebugUtils shared].currentLine=458766;
 //BA.debugLineNum = 458766;BA.debugLine="post_param =  \"sku=\"&product_sku&\"&device_id=\"&ve";
_post_param = [@[@"sku=",self._product_sku,@"&device_id=",_venid,@"&verification_type=",self._verification_type] componentsJoinedByString:@""];
[B4IRDebugUtils shared].currentLine=458767;
 //BA.debugLineNum = 458767;BA.debugLine="pay_req.Initialize(\"pay_reqq\",Me)";
[self._pay_req _initialize:nil :self.bi :@"pay_reqq" :self];
[B4IRDebugUtils shared].currentLine=458768;
 //BA.debugLineNum = 458768;BA.debugLine="pay_req.PostString(pay_request_url,post_param)";
[self._pay_req _poststring:nil :self._pay_request_url :_post_param];
[B4IRDebugUtils shared].currentLine=458771;
 //BA.debugLineNum = 458771;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _verify_payment:(NSString*) _pay_code_param :(NSString*) _sku{
[B4IRDebugUtils shared].currentModule=@"hamrahpay";
if ([B4IDebug shouldDelegate: @"verify_payment"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"verify_payment::" :@[_pay_code_param,_sku]]);
NSString* _device_model = @"";
NSString* _device_manufacturer = @"";
NSString* _sdk_version = @"";
B4IPhone* _p = nil;
B4INativeObject* _device = nil;
[B4IRDebugUtils shared].currentLine=589824;
 //BA.debugLineNum = 589824;BA.debugLine="Sub verify_payment(pay_code_param As String,sku As";
[B4IRDebugUtils shared].currentLine=589825;
 //BA.debugLineNum = 589825;BA.debugLine="Dim	device_model As String";
_device_model = @"";
[B4IRDebugUtils shared].currentLine=589826;
 //BA.debugLineNum = 589826;BA.debugLine="Dim device_manufacturer As String";
_device_manufacturer = @"";
[B4IRDebugUtils shared].currentLine=589827;
 //BA.debugLineNum = 589827;BA.debugLine="Dim sdk_version As String";
_sdk_version = @"";
[B4IRDebugUtils shared].currentLine=589828;
 //BA.debugLineNum = 589828;BA.debugLine="Dim	p As Phone";
_p = [B4IPhone new];
[B4IRDebugUtils shared].currentLine=589830;
 //BA.debugLineNum = 589830;BA.debugLine="Dim device As NativeObject";
_device = [B4INativeObject new];
[B4IRDebugUtils shared].currentLine=589831;
 //BA.debugLineNum = 589831;BA.debugLine="device = device.Initialize(\"UIDevice\").RunMethod(";
_device = [[_device Initialize:@"UIDevice"] RunMethod:@"currentDevice" :(B4IArray*)([self.__c Null])];
[B4IRDebugUtils shared].currentLine=589832;
 //BA.debugLineNum = 589832;BA.debugLine="device_model = device.GetField(\"model\").AsString";
_device_model = [[_device GetField:@"model"] AsString];
[B4IRDebugUtils shared].currentLine=589833;
 //BA.debugLineNum = 589833;BA.debugLine="device_manufacturer = \"apple\"";
_device_manufacturer = @"apple";
[B4IRDebugUtils shared].currentLine=589835;
 //BA.debugLineNum = 589835;BA.debugLine="sdk_version = App.OSVersion";
_sdk_version = [self._app OSVersion];
[B4IRDebugUtils shared].currentLine=589837;
 //BA.debugLineNum = 589837;BA.debugLine="pay_verify_url = \"https://hamrahpay.com/rest-api/";
self._pay_verify_url = @"https://hamrahpay.com/rest-api/verify-payment";
[B4IRDebugUtils shared].currentLine=589838;
 //BA.debugLineNum = 589838;BA.debugLine="pay_verify.Initialize(\"Pay_Verifyy\",Me)";
[self._pay_verify _initialize:nil :self.bi :@"Pay_Verifyy" :self];
[B4IRDebugUtils shared].currentLine=589840;
 //BA.debugLineNum = 589840;BA.debugLine="pay_verify.PostString(pay_verify_url, \"pay_code=\"";
[self._pay_verify _poststring:nil :self._pay_verify_url :[@[@"pay_code=",_pay_code_param,@"&sku=",self._product_sku,@"&email=",self._mail,@"&device_model=",_device_model,@"&device_manufacturer=",_device_manufacturer,@"&sdk_version=",_sdk_version] componentsJoinedByString:@""]];
[B4IRDebugUtils shared].currentLine=589842;
 //BA.debugLineNum = 589842;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _process_globals{
self._main=[b4i_main new];
self._payment_page=[b4i_payment_page new];
self._httputils2service=[b4i_httputils2service new];
self._mainpage=[b4i_mainpage new];
[B4IRDebugUtils shared].currentModule=@"hamrahpay";
if ([B4IDebug shouldDelegate: @"process_globals"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"process_globals" :nil]);
[B4IRDebugUtils shared].currentLine=262144;
 //BA.debugLineNum = 262144;BA.debugLine="Sub Process_Globals";
[B4IRDebugUtils shared].currentLine=262148;
 //BA.debugLineNum = 262148;BA.debugLine="Public App As Application";
self._app = [B4IApplicationWrapper new];
[B4IRDebugUtils shared].currentLine=262149;
 //BA.debugLineNum = 262149;BA.debugLine="Dim pay_req,pay_verify As HttpJob";
self._pay_req = [b4i_httpjob new];
self._pay_verify = [b4i_httpjob new];
[B4IRDebugUtils shared].currentLine=262150;
 //BA.debugLineNum = 262150;BA.debugLine="Dim hud1 As HUD";
self._hud1 = [iHUD new];
[B4IRDebugUtils shared].currentLine=262152;
 //BA.debugLineNum = 262152;BA.debugLine="Dim pay_status As Boolean = False";
self._pay_status = [self.__c False];
[B4IRDebugUtils shared].currentLine=262153;
 //BA.debugLineNum = 262153;BA.debugLine="Dim pay_request_url As String";
self._pay_request_url = @"";
[B4IRDebugUtils shared].currentLine=262154;
 //BA.debugLineNum = 262154;BA.debugLine="Dim	pay_verify_url As String";
self._pay_verify_url = @"";
[B4IRDebugUtils shared].currentLine=262155;
 //BA.debugLineNum = 262155;BA.debugLine="Dim pay_code As String";
self._pay_code = @"";
[B4IRDebugUtils shared].currentLine=262156;
 //BA.debugLineNum = 262156;BA.debugLine="Dim pay_url As String";
self._pay_url = @"";
[B4IRDebugUtils shared].currentLine=262157;
 //BA.debugLineNum = 262157;BA.debugLine="Dim status	As String";
self._status = @"";
[B4IRDebugUtils shared].currentLine=262158;
 //BA.debugLineNum = 262158;BA.debugLine="Dim error As Boolean";
self._error = false;
[B4IRDebugUtils shared].currentLine=262159;
 //BA.debugLineNum = 262159;BA.debugLine="Dim mail As String";
self._mail = @"";
[B4IRDebugUtils shared].currentLine=262160;
 //BA.debugLineNum = 262160;BA.debugLine="Dim	verification_type As String";
self._verification_type = @"";
[B4IRDebugUtils shared].currentLine=262163;
 //BA.debugLineNum = 262163;BA.debugLine="verification_type =\"device_verification\"";
self._verification_type = @"device_verification";
[B4IRDebugUtils shared].currentLine=262164;
 //BA.debugLineNum = 262164;BA.debugLine="Dim product_sku As String";
self._product_sku = @"";
[B4IRDebugUtils shared].currentLine=262167;
 //BA.debugLineNum = 262167;BA.debugLine="product_sku = \"hp_545f4a3e37365885842986\"";
self._product_sku = @"hp_545f4a3e37365885842986";
[B4IRDebugUtils shared].currentLine=262169;
 //BA.debugLineNum = 262169;BA.debugLine="End Sub";
return @"";
}
@end