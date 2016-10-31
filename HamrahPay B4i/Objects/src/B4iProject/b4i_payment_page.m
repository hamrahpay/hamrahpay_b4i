
#import "b4i_payment_page.h"
#import "b4i_main.h"
#import "b4i_hamrahpay.h"
#import "b4i_httpjob.h"
#import "b4i_httputils2service.h"
#import "b4i_mainpage.h"


@implementation b4i_payment_page 


+ (instancetype)new {
    static b4i_payment_page* shared = nil;
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


- (NSString*)  _showpageme:(NSString*) _url{
[B4IRDebugUtils shared].currentModule=@"payment_page";
if ([B4IDebug shouldDelegate: @"showpageme"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"showpageme:" :@[_url]]);
[B4IRDebugUtils shared].currentLine=851968;
 //BA.debugLineNum = 851968;BA.debugLine="Sub ShowPageMe(url As String)";
[B4IRDebugUtils shared].currentLine=851969;
 //BA.debugLineNum = 851969;BA.debugLine="paymentpage.Initialize(\"pay\")";
[self._paymentpage Initialize:self.bi :@"pay"];
[B4IRDebugUtils shared].currentLine=851970;
 //BA.debugLineNum = 851970;BA.debugLine="paymentpage.RootPanel.LoadLayout(\"payview\")";
[[self._paymentpage RootPanel] LoadLayout:@"payview" :self.bi];
[B4IRDebugUtils shared].currentLine=851971;
 //BA.debugLineNum = 851971;BA.debugLine="Main.NavControl.ShowPage(paymentpage)";
[self._main._navcontrol ShowPage:(UIViewController*)((self._paymentpage).object)];
[B4IRDebugUtils shared].currentLine=851972;
 //BA.debugLineNum = 851972;BA.debugLine="paymentpage.HideBackButton = True";
[self._paymentpage setHideBackButton:[self.__c True]];
[B4IRDebugUtils shared].currentLine=851973;
 //BA.debugLineNum = 851973;BA.debugLine="paymentpage.Title = \"Payment\"";
[self._paymentpage setTitle:@"Payment"];
[B4IRDebugUtils shared].currentLine=851976;
 //BA.debugLineNum = 851976;BA.debugLine="WebView1.LoadUrl(url)";
[self._webview1 LoadUrl:_url];
[B4IRDebugUtils shared].currentLine=851977;
 //BA.debugLineNum = 851977;BA.debugLine="addressbar.Text=HamrahPay.pay_url";
[self._addressbar setText:self._hamrahpay._pay_url];
[B4IRDebugUtils shared].currentLine=851978;
 //BA.debugLineNum = 851978;BA.debugLine="addressbar.Color=Colors.LightGray";
[self._addressbar setColor:[[self.__c Colors] LightGray]];
[B4IRDebugUtils shared].currentLine=851979;
 //BA.debugLineNum = 851979;BA.debugLine="addressbar.TextColor=Colors.Black";
[self._addressbar setTextColor:[[self.__c Colors] Black]];
[B4IRDebugUtils shared].currentLine=851983;
 //BA.debugLineNum = 851983;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _button1_click{
[B4IRDebugUtils shared].currentModule=@"payment_page";
if ([B4IDebug shouldDelegate: @"button1_click"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"button1_click" :nil]);
[B4IRDebugUtils shared].currentLine=983040;
 //BA.debugLineNum = 983040;BA.debugLine="Sub Button1_Click";
[B4IRDebugUtils shared].currentLine=983041;
 //BA.debugLineNum = 983041;BA.debugLine="HamrahPay.verify_payment(HamrahPay.pay_code,Hamra";
[self._hamrahpay _verify_payment:self._hamrahpay._pay_code :self._hamrahpay._product_sku];
[B4IRDebugUtils shared].currentLine=983042;
 //BA.debugLineNum = 983042;BA.debugLine="mainpage.ShowPageMe";
[self._mainpage _showpageme];
[B4IRDebugUtils shared].currentLine=983043;
 //BA.debugLineNum = 983043;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _process_globals{
self._main=[b4i_main new];
self._hamrahpay=[b4i_hamrahpay new];
self._httputils2service=[b4i_httputils2service new];
self._mainpage=[b4i_mainpage new];
[B4IRDebugUtils shared].currentModule=@"payment_page";
if ([B4IDebug shouldDelegate: @"process_globals"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"process_globals" :nil]);
[B4IRDebugUtils shared].currentLine=786432;
 //BA.debugLineNum = 786432;BA.debugLine="Sub Process_Globals";
[B4IRDebugUtils shared].currentLine=786436;
 //BA.debugLineNum = 786436;BA.debugLine="Dim paymentpage As Page";
self._paymentpage = [B4IPage new];
[B4IRDebugUtils shared].currentLine=786437;
 //BA.debugLineNum = 786437;BA.debugLine="Public App As Application";
self._app = [B4IApplicationWrapper new];
[B4IRDebugUtils shared].currentLine=786438;
 //BA.debugLineNum = 786438;BA.debugLine="Private WebView1 As WebView";
self._webview1 = [B4IWebViewWrapper new];
[B4IRDebugUtils shared].currentLine=786439;
 //BA.debugLineNum = 786439;BA.debugLine="Private addressbar As Label";
self._addressbar = [B4ILabelWrapper new];
[B4IRDebugUtils shared].currentLine=786441;
 //BA.debugLineNum = 786441;BA.debugLine="End Sub";
return @"";
}
- (BOOL)  _webview1_overrideurl:(NSString*) _url{
[B4IRDebugUtils shared].currentModule=@"payment_page";
if ([B4IDebug shouldDelegate: @"webview1_overrideurl"])
	return ((NSNumber*) [B4IDebug delegate:self.bi :@"webview1_overrideurl:" :@[_url]]).boolValue;
[B4IRDebugUtils shared].currentLine=917504;
 //BA.debugLineNum = 917504;BA.debugLine="Sub WebView1_OverrideUrl (Url As String) As Boolea";
[B4IRDebugUtils shared].currentLine=917506;
 //BA.debugLineNum = 917506;BA.debugLine="addressbar.Text = Url";
[self._addressbar setText:_url];
[B4IRDebugUtils shared].currentLine=917507;
 //BA.debugLineNum = 917507;BA.debugLine="If Url.ToLowerCase.Contains(\"exit_page\") Then";
if ([[_url ToLowerCase] Contains:@"exit_page"]) { 
[B4IRDebugUtils shared].currentLine=917508;
 //BA.debugLineNum = 917508;BA.debugLine="HamrahPay.verify_payment(HamrahPay.pay_code,Hamra";
[self._hamrahpay _verify_payment:self._hamrahpay._pay_code :self._hamrahpay._product_sku];
[B4IRDebugUtils shared].currentLine=917509;
 //BA.debugLineNum = 917509;BA.debugLine="mainpage.ShowPageMe";
[self._mainpage _showpageme];
 };
[B4IRDebugUtils shared].currentLine=917512;
 //BA.debugLineNum = 917512;BA.debugLine="If (Url.ToLowerCase.Contains(\"shaparak.ir\") And U";
if (([[_url ToLowerCase] Contains:@"shaparak.ir"] && [[_url ToLowerCase] StartsWith:@"https://"])) { 
[B4IRDebugUtils shared].currentLine=917513;
 //BA.debugLineNum = 917513;BA.debugLine="addressbar.Color=Colors.RGB(90,162,43)";
[self._addressbar setColor:[[self.__c Colors] RGB:(int) (90) :(int) (162) :(int) (43)]];
 };
[B4IRDebugUtils shared].currentLine=917515;
 //BA.debugLineNum = 917515;BA.debugLine="End Sub";
return false;
}
@end