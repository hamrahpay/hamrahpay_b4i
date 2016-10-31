
#import "b4i_main.h"
#import "b4i_hamrahpay.h"
#import "b4i_payment_page.h"
#import "b4i_httpjob.h"
#import "b4i_httputils2service.h"
#import "b4i_mainpage.h"


@implementation b4i_main 


+ (instancetype)new {
    static b4i_main* shared = nil;
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


- (NSString*)  _application_background{
[B4IRDebugUtils shared].currentModule=@"main";
if ([B4IDebug shouldDelegate: @"application_background"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"application_background" :nil]);
[B4IRDebugUtils shared].currentLine=196608;
 //BA.debugLineNum = 196608;BA.debugLine="Private Sub Application_Background";
[B4IRDebugUtils shared].currentLine=196610;
 //BA.debugLineNum = 196610;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _application_start:(B4INavigationControllerWrapper*) _nav{
[B4IRDebugUtils shared].currentModule=@"main";
if ([B4IDebug shouldDelegate: @"application_start"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"application_start:" :@[_nav]]);
[B4IRDebugUtils shared].currentLine=65536;
 //BA.debugLineNum = 65536;BA.debugLine="Private Sub Application_Start (Nav As NavigationCo";
[B4IRDebugUtils shared].currentLine=65537;
 //BA.debugLineNum = 65537;BA.debugLine="NavControl = Nav";
self._navcontrol = _nav;
[B4IRDebugUtils shared].currentLine=65538;
 //BA.debugLineNum = 65538;BA.debugLine="Nav.NavigationBarVisible = False";
[_nav setNavigationBarVisible:[self.__c False]];
[B4IRDebugUtils shared].currentLine=65539;
 //BA.debugLineNum = 65539;BA.debugLine="mainpage.ShowPageMe";
[self._mainpage _showpageme];
[B4IRDebugUtils shared].currentLine=65541;
 //BA.debugLineNum = 65541;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _page1_resize:(int) _width :(int) _height{
[B4IRDebugUtils shared].currentModule=@"main";
if ([B4IDebug shouldDelegate: @"page1_resize"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"page1_resize::" :@[@(_width),@(_height)]]);
[B4IRDebugUtils shared].currentLine=131072;
 //BA.debugLineNum = 131072;BA.debugLine="Private Sub Page1_Resize(Width As Int, Height As I";
[B4IRDebugUtils shared].currentLine=131074;
 //BA.debugLineNum = 131074;BA.debugLine="End Sub";
return @"";
}

- (void)initializeStaticModules {
    [[b4i_main new]initializeModule];
[[b4i_hamrahpay new]initializeModule];
[[b4i_payment_page new]initializeModule];
[[b4i_httputils2service new]initializeModule];
[[b4i_mainpage new]initializeModule];

}
- (NSString*)  _process_globals{
self._hamrahpay=[b4i_hamrahpay new];
self._payment_page=[b4i_payment_page new];
self._httputils2service=[b4i_httputils2service new];
self._mainpage=[b4i_mainpage new];
[B4IRDebugUtils shared].currentModule=@"main";
if ([B4IDebug shouldDelegate: @"process_globals"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"process_globals" :nil]);
[B4IRDebugUtils shared].currentLine=0;
 //BA.debugLineNum = 0;BA.debugLine="Sub Process_Globals";
[B4IRDebugUtils shared].currentLine=3;
 //BA.debugLineNum = 3;BA.debugLine="Public App As Application";
self._app = [B4IApplicationWrapper new];
[B4IRDebugUtils shared].currentLine=4;
 //BA.debugLineNum = 4;BA.debugLine="Public NavControl As NavigationController";
self._navcontrol = [B4INavigationControllerWrapper new];
[B4IRDebugUtils shared].currentLine=7;
 //BA.debugLineNum = 7;BA.debugLine="End Sub";
return @"";
}
@end