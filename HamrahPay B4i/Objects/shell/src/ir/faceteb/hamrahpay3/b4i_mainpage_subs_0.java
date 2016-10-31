package ir.faceteb.hamrahpay3;

import anywheresoftware.b4a.BA;
import anywheresoftware.b4a.pc.*;

public class b4i_mainpage_subs_0 {


public static RemoteObject  _buttonpay_click() throws Exception{
try {
		Debug.PushSubsStack("ButtonPay_Click (mainpage) ","mainpage",5,b4i_mainpage.ba,b4i_mainpage.mostCurrent,32);
if (RapidSub.canDelegate("buttonpay_click")) return b4i_mainpage.remoteMe.runUserSub(false, "mainpage","buttonpay_click");
 BA.debugLineNum = 32;BA.debugLine="Sub ButtonPay_Click";
Debug.ShouldStop(-2147483648);
 BA.debugLineNum = 33;BA.debugLine="HamrahPay.pay_request";
Debug.ShouldStop(1);
b4i_mainpage._hamrahpay.runVoidMethod ("_pay_request");
 BA.debugLineNum = 34;BA.debugLine="End Sub";
Debug.ShouldStop(2);
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
 //BA.debugLineNum = 6;BA.debugLine="Private Page1 As Page";
b4i_mainpage._page1 = RemoteObject.createNew("B4IPage");
 //BA.debugLineNum = 7;BA.debugLine="Public App As Application";
b4i_mainpage._app = RemoteObject.createNew("B4IApplicationWrapper");
 //BA.debugLineNum = 8;BA.debugLine="Dim nc As NavigationController";
b4i_mainpage._nc = RemoteObject.createNew("B4INavigationControllerWrapper");
 //BA.debugLineNum = 9;BA.debugLine="Dim NavControl As NavigationController";
b4i_mainpage._navcontrol = RemoteObject.createNew("B4INavigationControllerWrapper");
 //BA.debugLineNum = 10;BA.debugLine="Dim hud1 As HUD";
b4i_mainpage._hud1 = RemoteObject.createNew("iHUD");
 //BA.debugLineNum = 11;BA.debugLine="Private ButtonPay As Button";
b4i_mainpage._buttonpay = RemoteObject.createNew("B4IButtonWrapper");
 //BA.debugLineNum = 12;BA.debugLine="Private Label1 As Label";
b4i_mainpage._label1 = RemoteObject.createNew("B4ILabelWrapper");
 //BA.debugLineNum = 14;BA.debugLine="End Sub";
return RemoteObject.createImmutable("");
}
public static RemoteObject  _showpageme() throws Exception{
try {
		Debug.PushSubsStack("ShowPageMe (mainpage) ","mainpage",5,b4i_mainpage.ba,b4i_mainpage.mostCurrent,16);
if (RapidSub.canDelegate("showpageme")) return b4i_mainpage.remoteMe.runUserSub(false, "mainpage","showpageme");
RemoteObject _no = RemoteObject.declareNull("B4INativeObject");
 BA.debugLineNum = 16;BA.debugLine="Sub ShowPageMe";
Debug.ShouldStop(32768);
 BA.debugLineNum = 18;BA.debugLine="nc.Initialize(\"nc\")";
Debug.ShouldStop(131072);
b4i_mainpage._nc.runVoidMethod ("Initialize::",b4i_mainpage.ba,(Object)(RemoteObject.createImmutable("nc")));
 BA.debugLineNum = 19;BA.debugLine="NavControl=nc";
Debug.ShouldStop(262144);
b4i_mainpage._navcontrol = b4i_mainpage._nc;
 BA.debugLineNum = 20;BA.debugLine="Page1.Initialize(\"Page1\")";
Debug.ShouldStop(524288);
b4i_mainpage._page1.runVoidMethod ("Initialize::",b4i_mainpage.ba,(Object)(RemoteObject.createImmutable("Page1")));
 BA.debugLineNum = 21;BA.debugLine="Dim no As NativeObject = nc";
Debug.ShouldStop(1048576);
_no = RemoteObject.createNew("B4INativeObject");
_no.setObject((b4i_mainpage._nc).getObject());Debug.locals.put("no", _no);
 BA.debugLineNum = 22;BA.debugLine="Page1.HideBackButton = True";
Debug.ShouldStop(2097152);
b4i_mainpage._page1.runMethod(true,"setHideBackButton:",b4i_main.__c.runMethod(true,"True"));
 BA.debugLineNum = 23;BA.debugLine="Page1.RootPanel.LoadLayout(\"main\")";
Debug.ShouldStop(4194304);
b4i_mainpage._page1.runMethod(false,"RootPanel").runMethodAndSync(false,"LoadLayout::",(Object)(RemoteObject.createImmutable("main")),b4i_mainpage.ba);
 BA.debugLineNum = 24;BA.debugLine="Main.NavControl.ShowPage(Page1)";
Debug.ShouldStop(8388608);
b4i_mainpage._main._navcontrol.runVoidMethod ("ShowPage:",(Object)(((b4i_mainpage._page1).getObject())));
 BA.debugLineNum = 26;BA.debugLine="If File.Exists(File.DirDocuments,\"active\") = True";
Debug.ShouldStop(33554432);
if (RemoteObject.solveBoolean("=",b4i_main.__c.runMethod(false,"File").runMethod(true,"Exists::",(Object)(b4i_main.__c.runMethod(false,"File").runMethod(true,"DirDocuments")),(Object)(RemoteObject.createImmutable("active"))),b4i_main.__c.runMethod(true,"True"))) { 
 BA.debugLineNum = 27;BA.debugLine="Label1.Visible=True";
Debug.ShouldStop(67108864);
b4i_mainpage._label1.runMethod(true,"setVisible:",b4i_main.__c.runMethod(true,"True"));
 };
 BA.debugLineNum = 30;BA.debugLine="End Sub";
Debug.ShouldStop(536870912);
return RemoteObject.createImmutable("");
}
catch (Exception e) {
			throw Debug.ErrorCaught(e);
		} 
finally {
			Debug.PopSubsStack();
		}}
}