package ir.faceteb.hamrahpay3;

import anywheresoftware.b4a.BA;
import anywheresoftware.b4a.pc.*;

public class b4i_payment_page_subs_0 {


public static RemoteObject  _button1_click() throws Exception{
try {
		Debug.PushSubsStack("Button1_Click (payment_page) ","payment_page",2,b4i_payment_page.ba,b4i_payment_page.mostCurrent,46);
if (RapidSub.canDelegate("button1_click")) return b4i_payment_page.remoteMe.runUserSub(false, "payment_page","button1_click");
 BA.debugLineNum = 46;BA.debugLine="Sub Button1_Click";
Debug.ShouldStop(8192);
 BA.debugLineNum = 47;BA.debugLine="HamrahPay.verify_payment(HamrahPay.pay_code,Hamra";
Debug.ShouldStop(16384);
b4i_payment_page._hamrahpay.runVoidMethod ("_verify_payment::",(Object)(b4i_payment_page._hamrahpay._pay_code),(Object)(b4i_payment_page._hamrahpay._product_sku));
 BA.debugLineNum = 48;BA.debugLine="mainpage.ShowPageMe";
Debug.ShouldStop(32768);
b4i_payment_page._mainpage.runVoidMethod ("_showpageme");
 BA.debugLineNum = 49;BA.debugLine="End Sub";
Debug.ShouldStop(65536);
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
 //BA.debugLineNum = 7;BA.debugLine="Dim paymentpage As Page";
b4i_payment_page._paymentpage = RemoteObject.createNew("B4IPage");
 //BA.debugLineNum = 8;BA.debugLine="Public App As Application";
b4i_payment_page._app = RemoteObject.createNew("B4IApplicationWrapper");
 //BA.debugLineNum = 9;BA.debugLine="Private WebView1 As WebView";
b4i_payment_page._webview1 = RemoteObject.createNew("B4IWebViewWrapper");
 //BA.debugLineNum = 10;BA.debugLine="Private addressbar As Label";
b4i_payment_page._addressbar = RemoteObject.createNew("B4ILabelWrapper");
 //BA.debugLineNum = 12;BA.debugLine="End Sub";
return RemoteObject.createImmutable("");
}
public static RemoteObject  _showpageme(RemoteObject _url) throws Exception{
try {
		Debug.PushSubsStack("ShowPageMe (payment_page) ","payment_page",2,b4i_payment_page.ba,b4i_payment_page.mostCurrent,14);
if (RapidSub.canDelegate("showpageme")) return b4i_payment_page.remoteMe.runUserSub(false, "payment_page","showpageme", _url);
Debug.locals.put("url", _url);
 BA.debugLineNum = 14;BA.debugLine="Sub ShowPageMe(url As String)";
Debug.ShouldStop(8192);
 BA.debugLineNum = 15;BA.debugLine="paymentpage.Initialize(\"pay\")";
Debug.ShouldStop(16384);
b4i_payment_page._paymentpage.runVoidMethod ("Initialize::",b4i_payment_page.ba,(Object)(RemoteObject.createImmutable("pay")));
 BA.debugLineNum = 16;BA.debugLine="paymentpage.RootPanel.LoadLayout(\"payview\")";
Debug.ShouldStop(32768);
b4i_payment_page._paymentpage.runMethod(false,"RootPanel").runMethodAndSync(false,"LoadLayout::",(Object)(RemoteObject.createImmutable("payview")),b4i_payment_page.ba);
 BA.debugLineNum = 17;BA.debugLine="Main.NavControl.ShowPage(paymentpage)";
Debug.ShouldStop(65536);
b4i_payment_page._main._navcontrol.runVoidMethod ("ShowPage:",(Object)(((b4i_payment_page._paymentpage).getObject())));
 BA.debugLineNum = 18;BA.debugLine="paymentpage.HideBackButton = True";
Debug.ShouldStop(131072);
b4i_payment_page._paymentpage.runMethod(true,"setHideBackButton:",b4i_main.__c.runMethod(true,"True"));
 BA.debugLineNum = 19;BA.debugLine="paymentpage.Title = \"Payment\"";
Debug.ShouldStop(262144);
b4i_payment_page._paymentpage.runMethod(true,"setTitle:",BA.ObjectToString("Payment"));
 BA.debugLineNum = 22;BA.debugLine="WebView1.LoadUrl(url)";
Debug.ShouldStop(2097152);
b4i_payment_page._webview1.runVoidMethod ("LoadUrl:",(Object)(_url));
 BA.debugLineNum = 23;BA.debugLine="addressbar.Text=HamrahPay.pay_url";
Debug.ShouldStop(4194304);
b4i_payment_page._addressbar.runMethod(true,"setText:",b4i_payment_page._hamrahpay._pay_url);
 BA.debugLineNum = 24;BA.debugLine="addressbar.Color=Colors.LightGray";
Debug.ShouldStop(8388608);
b4i_payment_page._addressbar.runMethod(true,"setColor:",b4i_main.__c.runMethod(false,"Colors").runMethod(true,"LightGray"));
 BA.debugLineNum = 25;BA.debugLine="addressbar.TextColor=Colors.Black";
Debug.ShouldStop(16777216);
b4i_payment_page._addressbar.runMethod(true,"setTextColor:",b4i_main.__c.runMethod(false,"Colors").runMethod(true,"Black"));
 BA.debugLineNum = 29;BA.debugLine="End Sub";
Debug.ShouldStop(268435456);
return RemoteObject.createImmutable("");
}
catch (Exception e) {
			throw Debug.ErrorCaught(e);
		} 
finally {
			Debug.PopSubsStack();
		}}
public static RemoteObject  _webview1_overrideurl(RemoteObject _url) throws Exception{
try {
		Debug.PushSubsStack("WebView1_OverrideUrl (payment_page) ","payment_page",2,b4i_payment_page.ba,b4i_payment_page.mostCurrent,32);
if (RapidSub.canDelegate("webview1_overrideurl")) return b4i_payment_page.remoteMe.runUserSub(false, "payment_page","webview1_overrideurl", _url);
Debug.locals.put("Url", _url);
 BA.debugLineNum = 32;BA.debugLine="Sub WebView1_OverrideUrl (Url As String) As Boolea";
Debug.ShouldStop(-2147483648);
 BA.debugLineNum = 34;BA.debugLine="addressbar.Text = Url";
Debug.ShouldStop(2);
b4i_payment_page._addressbar.runMethod(true,"setText:",_url);
 BA.debugLineNum = 35;BA.debugLine="If Url.ToLowerCase.Contains(\"exit_page\") Then";
Debug.ShouldStop(4);
if (_url.runMethod(true,"ToLowerCase").runMethod(true,"Contains:",(Object)(RemoteObject.createImmutable("exit_page"))).getBoolean()) { 
 BA.debugLineNum = 36;BA.debugLine="HamrahPay.verify_payment(HamrahPay.pay_code,Hamra";
Debug.ShouldStop(8);
b4i_payment_page._hamrahpay.runVoidMethod ("_verify_payment::",(Object)(b4i_payment_page._hamrahpay._pay_code),(Object)(b4i_payment_page._hamrahpay._product_sku));
 BA.debugLineNum = 37;BA.debugLine="mainpage.ShowPageMe";
Debug.ShouldStop(16);
b4i_payment_page._mainpage.runVoidMethod ("_showpageme");
 };
 BA.debugLineNum = 40;BA.debugLine="If (Url.ToLowerCase.Contains(\"shaparak.ir\") And U";
Debug.ShouldStop(128);
if ((RemoteObject.solveBoolean(".",_url.runMethod(true,"ToLowerCase").runMethod(true,"Contains:",(Object)(RemoteObject.createImmutable("shaparak.ir")))) && RemoteObject.solveBoolean(".",_url.runMethod(true,"ToLowerCase").runMethod(true,"StartsWith:",(Object)(RemoteObject.createImmutable("https://")))))) { 
 BA.debugLineNum = 41;BA.debugLine="addressbar.Color=Colors.RGB(90,162,43)";
Debug.ShouldStop(256);
b4i_payment_page._addressbar.runMethod(true,"setColor:",b4i_main.__c.runMethod(false,"Colors").runMethod(true,"RGB:::",(Object)(BA.numberCast(int.class, 90)),(Object)(BA.numberCast(int.class, 162)),(Object)(BA.numberCast(int.class, 43))));
 };
 BA.debugLineNum = 43;BA.debugLine="End Sub";
Debug.ShouldStop(1024);
return RemoteObject.createImmutable(false);
}
catch (Exception e) {
			throw Debug.ErrorCaught(e);
		} 
finally {
			Debug.PopSubsStack();
		}}
}