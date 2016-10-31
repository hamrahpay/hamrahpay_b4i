package ir.faceteb.hamrahpay3;

import anywheresoftware.b4a.BA;
import anywheresoftware.b4a.pc.*;

public class b4i_hamrahpay_subs_0 {


public static RemoteObject  _activate_app() throws Exception{
try {
		Debug.PushSubsStack("activate_app (hamrahpay) ","hamrahpay",1,b4i_hamrahpay.ba,b4i_hamrahpay.mostCurrent,163);
if (RapidSub.canDelegate("activate_app")) return b4i_hamrahpay.remoteMe.runUserSub(false, "hamrahpay","activate_app");
RemoteObject _m1 = RemoteObject.declareNull("B4IMap");
RemoteObject _silver_amount_bought = RemoteObject.createImmutable(0);
RemoteObject _silver_amount = RemoteObject.createImmutable(0);
RemoteObject _silver = RemoteObject.declareNull("B4IMap");
 BA.debugLineNum = 163;BA.debugLine="Sub activate_app";
Debug.ShouldStop(4);
 BA.debugLineNum = 170;BA.debugLine="Dim m1 As Map";
Debug.ShouldStop(512);
_m1 = RemoteObject.createNew("B4IMap");Debug.locals.put("m1", _m1);
 BA.debugLineNum = 171;BA.debugLine="m1.Initialize";
Debug.ShouldStop(1024);
_m1.runVoidMethod ("Initialize");
 BA.debugLineNum = 172;BA.debugLine="m1.put(\"active\",True)";
Debug.ShouldStop(2048);
_m1.runVoidMethod ("Put::",(Object)(RemoteObject.createImmutable(("active"))),(Object)((b4i_main.__c.runMethod(true,"True"))));
 BA.debugLineNum = 173;BA.debugLine="File.WriteMap(File.DirDocuments,\"active\",m1)";
Debug.ShouldStop(4096);
b4i_main.__c.runMethod(false,"File").runVoidMethod ("WriteMap:::",(Object)(b4i_main.__c.runMethod(false,"File").runMethod(true,"DirDocuments")),(Object)(BA.ObjectToString("active")),(Object)(_m1));
 BA.debugLineNum = 174;BA.debugLine="hud1.ToastMessageShow(\"نرم افزار شما به نسخه ک";
Debug.ShouldStop(8192);
b4i_hamrahpay._hud1.runVoidMethod ("ToastMessageShow::",(Object)(BA.ObjectToString("نرم افزار شما به نسخه کامل ارتقاع پیدا کرد.")),(Object)(b4i_main.__c.runMethod(true,"True")));
 BA.debugLineNum = 181;BA.debugLine="Dim silver_amount_bought As Int=0";
Debug.ShouldStop(1048576);
_silver_amount_bought = BA.numberCast(int.class, 0);Debug.locals.put("silver_amount_bought", _silver_amount_bought);Debug.locals.put("silver_amount_bought", _silver_amount_bought);
 BA.debugLineNum = 183;BA.debugLine="Dim silver_amount  As Int";
Debug.ShouldStop(4194304);
_silver_amount = RemoteObject.createImmutable(0);Debug.locals.put("silver_amount", _silver_amount);
 BA.debugLineNum = 185;BA.debugLine="Dim silver As Map";
Debug.ShouldStop(16777216);
_silver = RemoteObject.createNew("B4IMap");Debug.locals.put("silver", _silver);
 BA.debugLineNum = 186;BA.debugLine="silver.Initialize";
Debug.ShouldStop(33554432);
_silver.runVoidMethod ("Initialize");
 BA.debugLineNum = 187;BA.debugLine="If File.Exists(File.DirDocuments,\"silver_amount_";
Debug.ShouldStop(67108864);
if (RemoteObject.solveBoolean("=",b4i_main.__c.runMethod(false,"File").runMethod(true,"Exists::",(Object)(b4i_main.__c.runMethod(false,"File").runMethod(true,"DirDocuments")),(Object)(RemoteObject.createImmutable("silver_amount_file"))),b4i_main.__c.runMethod(true,"True"))) { 
 BA.debugLineNum = 188;BA.debugLine="silver = File.ReadMap(File.DirDocuments,\"silver";
Debug.ShouldStop(134217728);
_silver = b4i_main.__c.runMethod(false,"File").runMethod(false,"ReadMap::",(Object)(b4i_main.__c.runMethod(false,"File").runMethod(true,"DirDocuments")),(Object)(RemoteObject.createImmutable("silver_amount_file")));Debug.locals.put("silver", _silver);
 BA.debugLineNum = 189;BA.debugLine="silver_amount=silver.Get(\"silver_amount\")";
Debug.ShouldStop(268435456);
_silver_amount = BA.numberCast(int.class, _silver.runMethod(false,"Get:",(Object)((RemoteObject.createImmutable("silver_amount")))));Debug.locals.put("silver_amount", _silver_amount);
 BA.debugLineNum = 190;BA.debugLine="silver.put(\"silver_amount\",silver_amount+silver";
Debug.ShouldStop(536870912);
_silver.runVoidMethod ("Put::",(Object)(RemoteObject.createImmutable(("silver_amount"))),(Object)((RemoteObject.solve(new RemoteObject[] {_silver_amount,_silver_amount_bought}, "+",1, 1))));
 }else {
 BA.debugLineNum = 192;BA.debugLine="silver.put(\"silver_amount\",silver_amount_bought";
Debug.ShouldStop(-2147483648);
_silver.runVoidMethod ("Put::",(Object)(RemoteObject.createImmutable(("silver_amount"))),(Object)((_silver_amount_bought)));
 };
 BA.debugLineNum = 197;BA.debugLine="File.WriteMap(File.DirDocuments,\"silver_amount_f";
Debug.ShouldStop(16);
b4i_main.__c.runMethod(false,"File").runVoidMethod ("WriteMap:::",(Object)(b4i_main.__c.runMethod(false,"File").runMethod(true,"DirDocuments")),(Object)(BA.ObjectToString("silver_amount_file")),(Object)(_silver));
 BA.debugLineNum = 200;BA.debugLine="End Sub";
Debug.ShouldStop(128);
return RemoteObject.createImmutable("");
}
catch (Exception e) {
			throw Debug.ErrorCaught(e);
		} 
finally {
			Debug.PopSubsStack();
		}}
public static RemoteObject  _getvendoridentifier() throws Exception{
try {
		Debug.PushSubsStack("GetVendorIdentifier (hamrahpay) ","hamrahpay",1,b4i_hamrahpay.ba,b4i_hamrahpay.mostCurrent,31);
if (RapidSub.canDelegate("getvendoridentifier")) return b4i_hamrahpay.remoteMe.runUserSub(false, "hamrahpay","getvendoridentifier");
RemoteObject _no = RemoteObject.declareNull("B4INativeObject");
RemoteObject _id = RemoteObject.declareNull("NSObject");
RemoteObject _p = RemoteObject.declareNull("B4IPhone");
 BA.debugLineNum = 31;BA.debugLine="Sub GetVendorIdentifier As String";
Debug.ShouldStop(1073741824);
 BA.debugLineNum = 32;BA.debugLine="Dim no As NativeObject";
Debug.ShouldStop(-2147483648);
_no = RemoteObject.createNew("B4INativeObject");Debug.locals.put("no", _no);
 BA.debugLineNum = 33;BA.debugLine="no = no.Initialize(\"UIDevice\").RunMethod(\"curre";
Debug.ShouldStop(1);
_no = _no.runMethod(false,"Initialize:",(Object)(RemoteObject.createImmutable("UIDevice"))).runMethod(false,"RunMethod::",(Object)(BA.ObjectToString("currentDevice")),(Object)((b4i_main.__c.runMethod(false,"Null"))));Debug.locals.put("no", _no);
 BA.debugLineNum = 34;BA.debugLine="Dim id As Object = no.GetField(\"identifierForVe";
Debug.ShouldStop(2);
_id = ((_no.runMethod(false,"GetField:",(Object)(RemoteObject.createImmutable("identifierForVendor"))).runMethod(false,"GetField:",(Object)(RemoteObject.createImmutable("UUIDString")))).getObject());Debug.locals.put("id", _id);Debug.locals.put("id", _id);
 BA.debugLineNum = 35;BA.debugLine="Dim p As Phone";
Debug.ShouldStop(4);
_p = RemoteObject.createNew("B4IPhone");Debug.locals.put("p", _p);
 BA.debugLineNum = 36;BA.debugLine="p.KeyChainPut(\"VendorId\",id)";
Debug.ShouldStop(8);
_p.runVoidMethod ("KeyChainPut::",(Object)(BA.ObjectToString("VendorId")),(Object)(BA.ObjectToString(_id)));
 BA.debugLineNum = 37;BA.debugLine="Return id";
Debug.ShouldStop(16);
if (true) return BA.ObjectToString(_id);
 BA.debugLineNum = 39;BA.debugLine="End Sub";
Debug.ShouldStop(64);
return RemoteObject.createImmutable("");
}
catch (Exception e) {
			throw Debug.ErrorCaught(e);
		} 
finally {
			Debug.PopSubsStack();
		}}
public static RemoteObject  _jobdone(RemoteObject _job) throws Exception{
try {
		Debug.PushSubsStack("JobDone (hamrahpay) ","hamrahpay",1,b4i_hamrahpay.ba,b4i_hamrahpay.mostCurrent,95);
if (RapidSub.canDelegate("jobdone")) return b4i_hamrahpay.remoteMe.runUserSub(false, "hamrahpay","jobdone", _job);
RemoteObject _json = RemoteObject.declareNull("B4IJSONParser");
RemoteObject _map1 = RemoteObject.declareNull("B4IMap");
Debug.locals.put("Job", _job);
 BA.debugLineNum = 95;BA.debugLine="Sub JobDone(Job As HttpJob)";
Debug.ShouldStop(1073741824);
 BA.debugLineNum = 96;BA.debugLine="Dim JSON As JSONParser";
Debug.ShouldStop(-2147483648);
_json = RemoteObject.createNew("B4IJSONParser");Debug.locals.put("JSON", _json);
 BA.debugLineNum = 97;BA.debugLine="Dim Map1 As Map";
Debug.ShouldStop(1);
_map1 = RemoteObject.createNew("B4IMap");Debug.locals.put("Map1", _map1);
 BA.debugLineNum = 100;BA.debugLine="If Job.Success Then";
Debug.ShouldStop(8);
if (_job.getField(true,"_success").getBoolean()) { 
 BA.debugLineNum = 101;BA.debugLine="If Job.JobName = \"pay_reqq\" Then";
Debug.ShouldStop(16);
if (RemoteObject.solveBoolean("=",_job.getField(true,"_jobname"),BA.ObjectToString("pay_reqq"))) { 
 BA.debugLineNum = 102;BA.debugLine="hud1.ProgressDialogHide";
Debug.ShouldStop(32);
b4i_hamrahpay._hud1.runVoidMethod ("ProgressDialogHide");
 BA.debugLineNum = 103;BA.debugLine="JSON.Initialize(Job.GetString)";
Debug.ShouldStop(64);
_json.runVoidMethod ("Initialize:",(Object)(_job.runClassMethod (b4i_httpjob.class, "_getstring")));
 BA.debugLineNum = 104;BA.debugLine="Map1 = JSON.NextObject";
Debug.ShouldStop(128);
_map1 = _json.runMethod(false,"NextObject");Debug.locals.put("Map1", _map1);
 BA.debugLineNum = 105;BA.debugLine="Payment(Map1)";
Debug.ShouldStop(256);
_payment(_map1);
 };
 BA.debugLineNum = 108;BA.debugLine="If Job.JobName = \"Pay_Verifyy\" Then";
Debug.ShouldStop(2048);
if (RemoteObject.solveBoolean("=",_job.getField(true,"_jobname"),BA.ObjectToString("Pay_Verifyy"))) { 
 BA.debugLineNum = 109;BA.debugLine="JSON.Initialize(Job.GetString)";
Debug.ShouldStop(4096);
_json.runVoidMethod ("Initialize:",(Object)(_job.runClassMethod (b4i_httpjob.class, "_getstring")));
 BA.debugLineNum = 110;BA.debugLine="Map1 = JSON.NextObject";
Debug.ShouldStop(8192);
_map1 = _json.runMethod(false,"NextObject");Debug.locals.put("Map1", _map1);
 BA.debugLineNum = 111;BA.debugLine="verify(Map1)";
Debug.ShouldStop(16384);
_verify(_map1);
 };
 }else {
 BA.debugLineNum = 115;BA.debugLine="hud1.ProgressDialogHide";
Debug.ShouldStop(262144);
b4i_hamrahpay._hud1.runVoidMethod ("ProgressDialogHide");
 BA.debugLineNum = 116;BA.debugLine="Msgbox(\"لطفا اتصال به اینترنت را چک کنید\",\"خطای";
Debug.ShouldStop(524288);
b4i_main.__c.runVoidMethodAndSync ("Msgbox::",(Object)(BA.ObjectToString("لطفا اتصال به اینترنت را چک کنید")),(Object)(RemoteObject.createImmutable("خطای شبکه")));
 };
 BA.debugLineNum = 119;BA.debugLine="End Sub";
Debug.ShouldStop(4194304);
return RemoteObject.createImmutable("");
}
catch (Exception e) {
			throw Debug.ErrorCaught(e);
		} 
finally {
			Debug.PopSubsStack();
		}}
public static RemoteObject  _pay_request() throws Exception{
try {
		Debug.PushSubsStack("pay_request (hamrahpay) ","hamrahpay",1,b4i_hamrahpay.ba,b4i_hamrahpay.mostCurrent,72);
if (RapidSub.canDelegate("pay_request")) return b4i_hamrahpay.remoteMe.runUserSub(false, "hamrahpay","pay_request");
RemoteObject _p = RemoteObject.declareNull("B4IPhone");
RemoteObject _venid = RemoteObject.createImmutable("");
RemoteObject _post_param = RemoteObject.createImmutable("");
 BA.debugLineNum = 72;BA.debugLine="Sub pay_request";
Debug.ShouldStop(128);
 BA.debugLineNum = 74;BA.debugLine="Dim p As Phone";
Debug.ShouldStop(512);
_p = RemoteObject.createNew("B4IPhone");Debug.locals.put("p", _p);
 BA.debugLineNum = 75;BA.debugLine="If p.KeyChainGet(\"VendorId\").Length>3 Then";
Debug.ShouldStop(1024);
if (RemoteObject.solveBoolean(">",_p.runMethod(true,"KeyChainGet:",(Object)(RemoteObject.createImmutable("VendorId"))).runMethod(true,"Length"),BA.numberCast(double.class, 3))) { 
 BA.debugLineNum = 76;BA.debugLine="Dim venId As String = p.KeyChainGet(\"VendorId\")";
Debug.ShouldStop(2048);
_venid = _p.runMethod(true,"KeyChainGet:",(Object)(RemoteObject.createImmutable("VendorId"))).runMethod(true,"SubString2::",(Object)(BA.numberCast(int.class, 1)),(Object)(BA.numberCast(int.class, 16)));Debug.locals.put("venId", _venid);Debug.locals.put("venId", _venid);
 }else {
 BA.debugLineNum = 78;BA.debugLine="GetVendorIdentifier";
Debug.ShouldStop(8192);
_getvendoridentifier();
 BA.debugLineNum = 79;BA.debugLine="Dim venId As String = p.KeyChainGet(\"VendorId\")";
Debug.ShouldStop(16384);
_venid = _p.runMethod(true,"KeyChainGet:",(Object)(RemoteObject.createImmutable("VendorId"))).runMethod(true,"SubString2::",(Object)(BA.numberCast(int.class, 1)),(Object)(BA.numberCast(int.class, 16)));Debug.locals.put("venId", _venid);Debug.locals.put("venId", _venid);
 };
 BA.debugLineNum = 81;BA.debugLine="Dim pay_request_url As String";
Debug.ShouldStop(65536);
b4i_hamrahpay._pay_request_url = RemoteObject.createImmutable("");
 BA.debugLineNum = 82;BA.debugLine="pay_request_url = \"https://hamrahpay.com/rest-api";
Debug.ShouldStop(131072);
b4i_hamrahpay._pay_request_url = BA.ObjectToString("https://hamrahpay.com/rest-api/pay-request");
 BA.debugLineNum = 83;BA.debugLine="Dim post_param As String";
Debug.ShouldStop(262144);
_post_param = RemoteObject.createImmutable("");Debug.locals.put("post_param", _post_param);
 BA.debugLineNum = 85;BA.debugLine="hud1.ProgressDialogShow(\"لطفا صبر کنید ...\")";
Debug.ShouldStop(1048576);
b4i_hamrahpay._hud1.runVoidMethod ("ProgressDialogShow:",(Object)(RemoteObject.createImmutable("لطفا صبر کنید ...")));
 BA.debugLineNum = 86;BA.debugLine="post_param =  \"sku=\"&product_sku&\"&device_id=\"&ve";
Debug.ShouldStop(2097152);
_post_param = RemoteObject.concat(RemoteObject.createImmutable("sku="),b4i_hamrahpay._product_sku,RemoteObject.createImmutable("&device_id="),_venid,RemoteObject.createImmutable("&verification_type="),b4i_hamrahpay._verification_type);Debug.locals.put("post_param", _post_param);
 BA.debugLineNum = 87;BA.debugLine="pay_req.Initialize(\"pay_reqq\",Me)";
Debug.ShouldStop(4194304);
b4i_hamrahpay._pay_req.runClassMethod (b4i_httpjob.class, "_initialize:::",b4i_hamrahpay.ba,(Object)(BA.ObjectToString("pay_reqq")),(Object)(b4i_hamrahpay.getObject()));
 BA.debugLineNum = 88;BA.debugLine="pay_req.PostString(pay_request_url,post_param)";
Debug.ShouldStop(8388608);
b4i_hamrahpay._pay_req.runClassMethod (b4i_httpjob.class, "_poststring::",(Object)(b4i_hamrahpay._pay_request_url),(Object)(_post_param));
 BA.debugLineNum = 91;BA.debugLine="End Sub";
Debug.ShouldStop(67108864);
return RemoteObject.createImmutable("");
}
catch (Exception e) {
			throw Debug.ErrorCaught(e);
		} 
finally {
			Debug.PopSubsStack();
		}}
public static RemoteObject  _payment(RemoteObject _res_map) throws Exception{
try {
		Debug.PushSubsStack("Payment (hamrahpay) ","hamrahpay",1,b4i_hamrahpay.ba,b4i_hamrahpay.mostCurrent,43);
if (RapidSub.canDelegate("payment")) return b4i_hamrahpay.remoteMe.runUserSub(false, "hamrahpay","payment", _res_map);
Debug.locals.put("res_map", _res_map);
 BA.debugLineNum = 43;BA.debugLine="Private Sub Payment(res_map As Map)";
Debug.ShouldStop(1024);
 BA.debugLineNum = 44;BA.debugLine="pay_url = \"https://hamrahpay.com/cart/app/pay_v2/";
Debug.ShouldStop(2048);
b4i_hamrahpay._pay_url = BA.ObjectToString("https://hamrahpay.com/cart/app/pay_v2/");
 BA.debugLineNum = 45;BA.debugLine="status = res_map.Get(\"status\")";
Debug.ShouldStop(4096);
b4i_hamrahpay._status = BA.ObjectToString(_res_map.runMethod(false,"Get:",(Object)((RemoteObject.createImmutable("status")))));
 BA.debugLineNum = 46;BA.debugLine="error = res_map.Get(\"error\")";
Debug.ShouldStop(8192);
b4i_hamrahpay._error = BA.ObjectToBoolean(_res_map.runMethod(false,"Get:",(Object)((RemoteObject.createImmutable("error")))));
 BA.debugLineNum = 47;BA.debugLine="If (error=False) Then";
Debug.ShouldStop(16384);
if ((RemoteObject.solveBoolean("=",b4i_hamrahpay._error,b4i_main.__c.runMethod(true,"False")))) { 
 BA.debugLineNum = 48;BA.debugLine="If status=\"SELLER_BLOCKED\" Or status=\"TRY_AGAIN\"";
Debug.ShouldStop(32768);
if (RemoteObject.solveBoolean("=",b4i_hamrahpay._status,BA.ObjectToString("SELLER_BLOCKED")) || RemoteObject.solveBoolean("=",b4i_hamrahpay._status,BA.ObjectToString("TRY_AGAIN")) || RemoteObject.solveBoolean("=",b4i_hamrahpay._status,BA.ObjectToString("BAD_PARAMETERS"))) { 
 BA.debugLineNum = 49;BA.debugLine="hud1.ToastMessageShow(res_map.Get(\"message\"),Tr";
Debug.ShouldStop(65536);
b4i_hamrahpay._hud1.runVoidMethod ("ToastMessageShow::",(Object)(BA.ObjectToString(_res_map.runMethod(false,"Get:",(Object)((RemoteObject.createImmutable("message")))))),(Object)(b4i_main.__c.runMethod(true,"True")));
 }else 
{ BA.debugLineNum = 50;BA.debugLine="Else If status=\"READY_TO_PAY\" Then";
Debug.ShouldStop(131072);
if (RemoteObject.solveBoolean("=",b4i_hamrahpay._status,BA.ObjectToString("READY_TO_PAY"))) { 
 BA.debugLineNum = 51;BA.debugLine="pay_code = res_map.Get(\"pay_code\")";
Debug.ShouldStop(262144);
b4i_hamrahpay._pay_code = BA.ObjectToString(_res_map.runMethod(false,"Get:",(Object)((RemoteObject.createImmutable("pay_code")))));
 BA.debugLineNum = 52;BA.debugLine="pay_url = pay_url&pay_code";
Debug.ShouldStop(524288);
b4i_hamrahpay._pay_url = RemoteObject.concat(b4i_hamrahpay._pay_url,b4i_hamrahpay._pay_code);
 BA.debugLineNum = 53;BA.debugLine="Payment_page.ShowPageMe(pay_url)";
Debug.ShouldStop(1048576);
b4i_hamrahpay._payment_page.runVoidMethod ("_showpageme:",(Object)(b4i_hamrahpay._pay_url));
 }else 
{ BA.debugLineNum = 54;BA.debugLine="Else If status=\"BEFORE_PAID\" Then";
Debug.ShouldStop(2097152);
if (RemoteObject.solveBoolean("=",b4i_hamrahpay._status,BA.ObjectToString("BEFORE_PAID"))) { 
 BA.debugLineNum = 56;BA.debugLine="pay_code = res_map.Get(\"pay_code\")";
Debug.ShouldStop(8388608);
b4i_hamrahpay._pay_code = BA.ObjectToString(_res_map.runMethod(false,"Get:",(Object)((RemoteObject.createImmutable("pay_code")))));
 BA.debugLineNum = 57;BA.debugLine="verify_payment(pay_code,product_sku)";
Debug.ShouldStop(16777216);
_verify_payment(b4i_hamrahpay._pay_code,b4i_hamrahpay._product_sku);
 BA.debugLineNum = 58;BA.debugLine="If pay_status=True Then";
Debug.ShouldStop(33554432);
if (RemoteObject.solveBoolean("=",b4i_hamrahpay._pay_status,b4i_main.__c.runMethod(true,"True"))) { 
 BA.debugLineNum = 60;BA.debugLine="hud1.ToastMessageShow(\"پرداخت قبلا انجام شده";
Debug.ShouldStop(134217728);
b4i_hamrahpay._hud1.runVoidMethod ("ToastMessageShow::",(Object)(BA.ObjectToString("پرداخت قبلا انجام شده است")),(Object)(b4i_main.__c.runMethod(true,"False")));
 BA.debugLineNum = 61;BA.debugLine="activate_app";
Debug.ShouldStop(268435456);
_activate_app();
 };
 }else {
 BA.debugLineNum = 64;BA.debugLine="hud1.ToastMessageShow(res_map.Get(\"message\"),Tr";
Debug.ShouldStop(-2147483648);
b4i_hamrahpay._hud1.runVoidMethod ("ToastMessageShow::",(Object)(BA.ObjectToString(_res_map.runMethod(false,"Get:",(Object)((RemoteObject.createImmutable("message")))))),(Object)(b4i_main.__c.runMethod(true,"True")));
 }}};
 }else {
 BA.debugLineNum = 67;BA.debugLine="hud1.ToastMessageShow(res_map.Get(\"message\"),Tru";
Debug.ShouldStop(4);
b4i_hamrahpay._hud1.runVoidMethod ("ToastMessageShow::",(Object)(BA.ObjectToString(_res_map.runMethod(false,"Get:",(Object)((RemoteObject.createImmutable("message")))))),(Object)(b4i_main.__c.runMethod(true,"True")));
 BA.debugLineNum = 68;BA.debugLine="pay_code=\"\"";
Debug.ShouldStop(8);
b4i_hamrahpay._pay_code = BA.ObjectToString("");
 };
 BA.debugLineNum = 70;BA.debugLine="End Sub";
Debug.ShouldStop(32);
return RemoteObject.createImmutable("");
}
catch (Exception e) {
			throw Debug.ErrorCaught(e);
		} 
finally {
			Debug.PopSubsStack();
		}}
public static RemoteObject  _process_globals() throws Exception{
 //BA.debugLineNum = 3;BA.debugLine="Sub Process_Globals";
 //BA.debugLineNum = 7;BA.debugLine="Public App As Application";
b4i_hamrahpay._app = RemoteObject.createNew("B4IApplicationWrapper");
 //BA.debugLineNum = 8;BA.debugLine="Dim pay_req,pay_verify As HttpJob";
b4i_hamrahpay._pay_req = RemoteObject.createNew("b4i_httpjob");
b4i_hamrahpay._pay_verify = RemoteObject.createNew("b4i_httpjob");
 //BA.debugLineNum = 9;BA.debugLine="Dim hud1 As HUD";
b4i_hamrahpay._hud1 = RemoteObject.createNew("iHUD");
 //BA.debugLineNum = 11;BA.debugLine="Dim pay_status As Boolean = False";
b4i_hamrahpay._pay_status = b4i_main.__c.runMethod(true,"False");
 //BA.debugLineNum = 12;BA.debugLine="Dim pay_request_url As String";
b4i_hamrahpay._pay_request_url = RemoteObject.createImmutable("");
 //BA.debugLineNum = 13;BA.debugLine="Dim	pay_verify_url As String";
b4i_hamrahpay._pay_verify_url = RemoteObject.createImmutable("");
 //BA.debugLineNum = 14;BA.debugLine="Dim pay_code As String";
b4i_hamrahpay._pay_code = RemoteObject.createImmutable("");
 //BA.debugLineNum = 15;BA.debugLine="Dim pay_url As String";
b4i_hamrahpay._pay_url = RemoteObject.createImmutable("");
 //BA.debugLineNum = 16;BA.debugLine="Dim status	As String";
b4i_hamrahpay._status = RemoteObject.createImmutable("");
 //BA.debugLineNum = 17;BA.debugLine="Dim error As Boolean";
b4i_hamrahpay._error = RemoteObject.createImmutable(false);
 //BA.debugLineNum = 18;BA.debugLine="Dim mail As String";
b4i_hamrahpay._mail = RemoteObject.createImmutable("");
 //BA.debugLineNum = 19;BA.debugLine="Dim	verification_type As String";
b4i_hamrahpay._verification_type = RemoteObject.createImmutable("");
 //BA.debugLineNum = 22;BA.debugLine="verification_type =\"device_verification\"";
b4i_hamrahpay._verification_type = BA.ObjectToString("device_verification");
 //BA.debugLineNum = 23;BA.debugLine="Dim product_sku As String";
b4i_hamrahpay._product_sku = RemoteObject.createImmutable("");
 //BA.debugLineNum = 26;BA.debugLine="product_sku = \"hp_545f4a3e37365885842986\"";
b4i_hamrahpay._product_sku = BA.ObjectToString("hp_545f4a3e37365885842986");
 //BA.debugLineNum = 28;BA.debugLine="End Sub";
return RemoteObject.createImmutable("");
}
public static RemoteObject  _verify(RemoteObject _verify_map) throws Exception{
try {
		Debug.PushSubsStack("verify (hamrahpay) ","hamrahpay",1,b4i_hamrahpay.ba,b4i_hamrahpay.mostCurrent,141);
if (RapidSub.canDelegate("verify")) return b4i_hamrahpay.remoteMe.runUserSub(false, "hamrahpay","verify", _verify_map);
Debug.locals.put("verify_map", _verify_map);
 BA.debugLineNum = 141;BA.debugLine="Private Sub verify(verify_map As Map)";
Debug.ShouldStop(4096);
 BA.debugLineNum = 143;BA.debugLine="status = verify_map.Get(\"status\")";
Debug.ShouldStop(16384);
b4i_hamrahpay._status = BA.ObjectToString(_verify_map.runMethod(false,"Get:",(Object)((RemoteObject.createImmutable("status")))));
 BA.debugLineNum = 144;BA.debugLine="error = verify_map.Get(\"error\")";
Debug.ShouldStop(32768);
b4i_hamrahpay._error = BA.ObjectToBoolean(_verify_map.runMethod(false,"Get:",(Object)((RemoteObject.createImmutable("error")))));
 BA.debugLineNum = 146;BA.debugLine="If error=True Then";
Debug.ShouldStop(131072);
if (RemoteObject.solveBoolean("=",b4i_hamrahpay._error,b4i_main.__c.runMethod(true,"True"))) { 
 BA.debugLineNum = 147;BA.debugLine="hud1.ToastMessageShow(verify_map.Get(\"message\"),";
Debug.ShouldStop(262144);
b4i_hamrahpay._hud1.runVoidMethod ("ToastMessageShow::",(Object)(BA.ObjectToString(_verify_map.runMethod(false,"Get:",(Object)((RemoteObject.createImmutable("message")))))),(Object)(b4i_main.__c.runMethod(true,"True")));
 BA.debugLineNum = 148;BA.debugLine="pay_status= False";
Debug.ShouldStop(524288);
b4i_hamrahpay._pay_status = b4i_main.__c.runMethod(true,"False");
 }else {
 BA.debugLineNum = 150;BA.debugLine="If status=\"SUCCESSFUL_PAYMENT\" Then";
Debug.ShouldStop(2097152);
if (RemoteObject.solveBoolean("=",b4i_hamrahpay._status,BA.ObjectToString("SUCCESSFUL_PAYMENT"))) { 
 BA.debugLineNum = 151;BA.debugLine="pay_status= True";
Debug.ShouldStop(4194304);
b4i_hamrahpay._pay_status = b4i_main.__c.runMethod(true,"True");
 }else {
 BA.debugLineNum = 153;BA.debugLine="pay_status= False";
Debug.ShouldStop(16777216);
b4i_hamrahpay._pay_status = b4i_main.__c.runMethod(true,"False");
 };
 };
 BA.debugLineNum = 157;BA.debugLine="If pay_status=True Then";
Debug.ShouldStop(268435456);
if (RemoteObject.solveBoolean("=",b4i_hamrahpay._pay_status,b4i_main.__c.runMethod(true,"True"))) { 
 BA.debugLineNum = 158;BA.debugLine="activate_app";
Debug.ShouldStop(536870912);
_activate_app();
 };
 BA.debugLineNum = 162;BA.debugLine="End Sub";
Debug.ShouldStop(2);
return RemoteObject.createImmutable("");
}
catch (Exception e) {
			throw Debug.ErrorCaught(e);
		} 
finally {
			Debug.PopSubsStack();
		}}
public static RemoteObject  _verify_payment(RemoteObject _pay_code_param,RemoteObject _sku) throws Exception{
try {
		Debug.PushSubsStack("verify_payment (hamrahpay) ","hamrahpay",1,b4i_hamrahpay.ba,b4i_hamrahpay.mostCurrent,121);
if (RapidSub.canDelegate("verify_payment")) return b4i_hamrahpay.remoteMe.runUserSub(false, "hamrahpay","verify_payment", _pay_code_param, _sku);
RemoteObject _device_model = RemoteObject.createImmutable("");
RemoteObject _device_manufacturer = RemoteObject.createImmutable("");
RemoteObject _sdk_version = RemoteObject.createImmutable("");
RemoteObject _p = RemoteObject.declareNull("B4IPhone");
RemoteObject _device = RemoteObject.declareNull("B4INativeObject");
Debug.locals.put("pay_code_param", _pay_code_param);
Debug.locals.put("sku", _sku);
 BA.debugLineNum = 121;BA.debugLine="Sub verify_payment(pay_code_param As String,sku As";
Debug.ShouldStop(16777216);
 BA.debugLineNum = 122;BA.debugLine="Dim	device_model As String";
Debug.ShouldStop(33554432);
_device_model = RemoteObject.createImmutable("");Debug.locals.put("device_model", _device_model);
 BA.debugLineNum = 123;BA.debugLine="Dim device_manufacturer As String";
Debug.ShouldStop(67108864);
_device_manufacturer = RemoteObject.createImmutable("");Debug.locals.put("device_manufacturer", _device_manufacturer);
 BA.debugLineNum = 124;BA.debugLine="Dim sdk_version As String";
Debug.ShouldStop(134217728);
_sdk_version = RemoteObject.createImmutable("");Debug.locals.put("sdk_version", _sdk_version);
 BA.debugLineNum = 125;BA.debugLine="Dim	p As Phone";
Debug.ShouldStop(268435456);
_p = RemoteObject.createNew("B4IPhone");Debug.locals.put("p", _p);
 BA.debugLineNum = 127;BA.debugLine="Dim device As NativeObject";
Debug.ShouldStop(1073741824);
_device = RemoteObject.createNew("B4INativeObject");Debug.locals.put("device", _device);
 BA.debugLineNum = 128;BA.debugLine="device = device.Initialize(\"UIDevice\").RunMethod(";
Debug.ShouldStop(-2147483648);
_device = _device.runMethod(false,"Initialize:",(Object)(RemoteObject.createImmutable("UIDevice"))).runMethod(false,"RunMethod::",(Object)(BA.ObjectToString("currentDevice")),(Object)((b4i_main.__c.runMethod(false,"Null"))));Debug.locals.put("device", _device);
 BA.debugLineNum = 129;BA.debugLine="device_model = device.GetField(\"model\").AsString";
Debug.ShouldStop(1);
_device_model = _device.runMethod(false,"GetField:",(Object)(RemoteObject.createImmutable("model"))).runMethod(true,"AsString");Debug.locals.put("device_model", _device_model);
 BA.debugLineNum = 130;BA.debugLine="device_manufacturer = \"apple\"";
Debug.ShouldStop(2);
_device_manufacturer = BA.ObjectToString("apple");Debug.locals.put("device_manufacturer", _device_manufacturer);
 BA.debugLineNum = 132;BA.debugLine="sdk_version = App.OSVersion";
Debug.ShouldStop(8);
_sdk_version = b4i_hamrahpay._app.runMethod(true,"OSVersion");Debug.locals.put("sdk_version", _sdk_version);
 BA.debugLineNum = 134;BA.debugLine="pay_verify_url = \"https://hamrahpay.com/rest-api/";
Debug.ShouldStop(32);
b4i_hamrahpay._pay_verify_url = BA.ObjectToString("https://hamrahpay.com/rest-api/verify-payment");
 BA.debugLineNum = 135;BA.debugLine="pay_verify.Initialize(\"Pay_Verifyy\",Me)";
Debug.ShouldStop(64);
b4i_hamrahpay._pay_verify.runClassMethod (b4i_httpjob.class, "_initialize:::",b4i_hamrahpay.ba,(Object)(BA.ObjectToString("Pay_Verifyy")),(Object)(b4i_hamrahpay.getObject()));
 BA.debugLineNum = 137;BA.debugLine="pay_verify.PostString(pay_verify_url, \"pay_code=\"";
Debug.ShouldStop(256);
b4i_hamrahpay._pay_verify.runClassMethod (b4i_httpjob.class, "_poststring::",(Object)(b4i_hamrahpay._pay_verify_url),(Object)(RemoteObject.concat(RemoteObject.createImmutable("pay_code="),_pay_code_param,RemoteObject.createImmutable("&sku="),b4i_hamrahpay._product_sku,RemoteObject.createImmutable("&email="),b4i_hamrahpay._mail,RemoteObject.createImmutable("&device_model="),_device_model,RemoteObject.createImmutable("&device_manufacturer="),_device_manufacturer,RemoteObject.createImmutable("&sdk_version="),_sdk_version)));
 BA.debugLineNum = 139;BA.debugLine="End Sub";
Debug.ShouldStop(1024);
return RemoteObject.createImmutable("");
}
catch (Exception e) {
			throw Debug.ErrorCaught(e);
		} 
finally {
			Debug.PopSubsStack();
		}}
}