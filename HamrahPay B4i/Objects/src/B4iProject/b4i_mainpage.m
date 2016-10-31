
#import "b4i_mainpage.h"
#import "b4i_main.h"
#import "b4i_hamrahpay.h"
#import "b4i_payment_page.h"
#import "b4i_httpjob.h"
#import "b4i_httputils2service.h"


@implementation b4i_mainpage 


+ (instancetype)new {
    static b4i_mainpage* shared = nil;
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


- (NSString*)  _showpageme{
[B4IRDebugUtils shared].currentModule=@"mainpage";
if ([B4IDebug shouldDelegate: @"showpageme"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"showpageme" :nil]);
B4INativeObject* _no = nil;
[B4IRDebugUtils shared].currentLine=2424832;
 //BA.debugLineNum = 2424832;BA.debugLine="Sub ShowPageMe";
[B4IRDebugUtils shared].currentLine=2424834;
 //BA.debugLineNum = 2424834;BA.debugLine="nc.Initialize(\"nc\")";
[self._nc Initialize:self.bi :@"nc"];
[B4IRDebugUtils shared].currentLine=2424835;
 //BA.debugLineNum = 2424835;BA.debugLine="NavControl=nc";
self._navcontrol = self._nc;
[B4IRDebugUtils shared].currentLine=2424836;
 //BA.debugLineNum = 2424836;BA.debugLine="Page1.Initialize(\"Page1\")";
[self._page1 Initialize:self.bi :@"Page1"];
[B4IRDebugUtils shared].currentLine=2424837;
 //BA.debugLineNum = 2424837;BA.debugLine="Dim no As NativeObject = nc";
_no = [B4INativeObject new];
_no.object = (NSObject*)((self._nc).object);
[B4IRDebugUtils shared].currentLine=2424838;
 //BA.debugLineNum = 2424838;BA.debugLine="Page1.HideBackButton = True";
[self._page1 setHideBackButton:[self.__c True]];
[B4IRDebugUtils shared].currentLine=2424839;
 //BA.debugLineNum = 2424839;BA.debugLine="Page1.RootPanel.LoadLayout(\"main\")";
[[self._page1 RootPanel] LoadLayout:@"main" :self.bi];
[B4IRDebugUtils shared].currentLine=2424840;
 //BA.debugLineNum = 2424840;BA.debugLine="Main.NavControl.ShowPage(Page1)";
[self._main._navcontrol ShowPage:(UIViewController*)((self._page1).object)];
[B4IRDebugUtils shared].currentLine=2424842;
 //BA.debugLineNum = 2424842;BA.debugLine="If File.Exists(File.DirDocuments,\"active\") = True";
if ([[self.__c File] Exists:[[self.__c File] DirDocuments] :@"active"]==[self.__c True]) { 
[B4IRDebugUtils shared].currentLine=2424843;
 //BA.debugLineNum = 2424843;BA.debugLine="Label1.Visible=True";
[self._label1 setVisible:[self.__c True]];
 };
[B4IRDebugUtils shared].currentLine=2424846;
 //BA.debugLineNum = 2424846;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _buttonpay_click{
[B4IRDebugUtils shared].currentModule=@"mainpage";
if ([B4IDebug shouldDelegate: @"buttonpay_click"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"buttonpay_click" :nil]);
[B4IRDebugUtils shared].currentLine=2490368;
 //BA.debugLineNum = 2490368;BA.debugLine="Sub ButtonPay_Click";
[B4IRDebugUtils shared].currentLine=2490369;
 //BA.debugLineNum = 2490369;BA.debugLine="HamrahPay.pay_request";
[self._hamrahpay _pay_request];
[B4IRDebugUtils shared].currentLine=2490370;
 //BA.debugLineNum = 2490370;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _process_globals{
self._main=[b4i_main new];
self._hamrahpay=[b4i_hamrahpay new];
self._payment_page=[b4i_payment_page new];
self._httputils2service=[b4i_httputils2service new];
[B4IRDebugUtils shared].currentModule=@"mainpage";
if ([B4IDebug shouldDelegate: @"process_globals"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"process_globals" :nil]);
[B4IRDebugUtils shared].currentLine=2359296;
 //BA.debugLineNum = 2359296;BA.debugLine="Sub Process_Globals";
[B4IRDebugUtils shared].currentLine=2359299;
 //BA.debugLineNum = 2359299;BA.debugLine="Private Page1 As Page";
self._page1 = [B4IPage new];
[B4IRDebugUtils shared].currentLine=2359300;
 //BA.debugLineNum = 2359300;BA.debugLine="Public App As Application";
self._app = [B4IApplicationWrapper new];
[B4IRDebugUtils shared].currentLine=2359301;
 //BA.debugLineNum = 2359301;BA.debugLine="Dim nc As NavigationController";
self._nc = [B4INavigationControllerWrapper new];
[B4IRDebugUtils shared].currentLine=2359302;
 //BA.debugLineNum = 2359302;BA.debugLine="Dim NavControl As NavigationController";
self._navcontrol = [B4INavigationControllerWrapper new];
[B4IRDebugUtils shared].currentLine=2359303;
 //BA.debugLineNum = 2359303;BA.debugLine="Dim hud1 As HUD";
self._hud1 = [iHUD new];
[B4IRDebugUtils shared].currentLine=2359304;
 //BA.debugLineNum = 2359304;BA.debugLine="Private ButtonPay As Button";
self._buttonpay = [B4IButtonWrapper new];
[B4IRDebugUtils shared].currentLine=2359305;
 //BA.debugLineNum = 2359305;BA.debugLine="Private Label1 As Label";
self._label1 = [B4ILabelWrapper new];
[B4IRDebugUtils shared].currentLine=2359307;
 //BA.debugLineNum = 2359307;BA.debugLine="End Sub";
return @"";
}
@end