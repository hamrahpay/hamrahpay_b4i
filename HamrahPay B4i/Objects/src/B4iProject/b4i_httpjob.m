
#import "b4i_httpjob.h"
#import "b4i_main.h"
#import "b4i_hamrahpay.h"
#import "b4i_payment_page.h"
#import "b4i_httputils2service.h"
#import "b4i_mainpage.h"


@implementation b4i_httpjob 


+ (B4I*)createBI {
    return [B4IShellBI alloc];
}

- (void)dealloc {
    if (self.bi != nil)
        NSLog(@"Class (b4i_httpjob) instance released.");
}

- (NSString*)  _getstring:(b4i_httpjob*) __ref{
__ref = self;
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"getstring"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"getstring" :nil]);
[B4IRDebugUtils shared].currentLine=1703936;
 //BA.debugLineNum = 1703936;BA.debugLine="Public Sub GetString As String";
[B4IRDebugUtils shared].currentLine=1703937;
 //BA.debugLineNum = 1703937;BA.debugLine="Return GetString2(\"UTF8\")";
if (true) return [__ref _getstring2:nil :@"UTF8"];
[B4IRDebugUtils shared].currentLine=1703938;
 //BA.debugLineNum = 1703938;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _initialize:(b4i_httpjob*) __ref :(B4I*) _ba :(NSString*) _name :(NSObject*) _targetmodule{
__ref = self;
[self initializeClassModule];
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"initialize"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"initialize:::" :@[_ba,_name,_targetmodule]]);
[B4IRDebugUtils shared].currentLine=1114112;
 //BA.debugLineNum = 1114112;BA.debugLine="Public Sub Initialize (Name As String, TargetModul";
[B4IRDebugUtils shared].currentLine=1114113;
 //BA.debugLineNum = 1114113;BA.debugLine="JobName = Name";
__ref._jobname = _name;
[B4IRDebugUtils shared].currentLine=1114114;
 //BA.debugLineNum = 1114114;BA.debugLine="target = TargetModule";
__ref._target = _targetmodule;
[B4IRDebugUtils shared].currentLine=1114115;
 //BA.debugLineNum = 1114115;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _poststring:(b4i_httpjob*) __ref :(NSString*) _link :(NSString*) _text{
__ref = self;
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"poststring"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"poststring::" :@[_link,_text]]);
[B4IRDebugUtils shared].currentLine=1179648;
 //BA.debugLineNum = 1179648;BA.debugLine="Public Sub PostString(Link As String, Text As Stri";
[B4IRDebugUtils shared].currentLine=1179649;
 //BA.debugLineNum = 1179649;BA.debugLine="PostBytes(Link, Text.GetBytes(\"UTF8\"))";
[__ref _postbytes:nil :_link :[_text GetBytes:@"UTF8"]];
[B4IRDebugUtils shared].currentLine=1179650;
 //BA.debugLineNum = 1179650;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _class_globals:(b4i_httpjob*) __ref{
__ref = self;
self._main=[b4i_main new];
self._hamrahpay=[b4i_hamrahpay new];
self._payment_page=[b4i_payment_page new];
self._httputils2service=[b4i_httputils2service new];
self._mainpage=[b4i_mainpage new];
[B4IRDebugUtils shared].currentModule=@"httpjob";
[B4IRDebugUtils shared].currentLine=1048576;
 //BA.debugLineNum = 1048576;BA.debugLine="Sub Class_Globals";
[B4IRDebugUtils shared].currentLine=1048577;
 //BA.debugLineNum = 1048577;BA.debugLine="Public JobName As String";
self._jobname = @"";
[B4IRDebugUtils shared].currentLine=1048578;
 //BA.debugLineNum = 1048578;BA.debugLine="Public Success As Boolean";
self._success = false;
[B4IRDebugUtils shared].currentLine=1048579;
 //BA.debugLineNum = 1048579;BA.debugLine="Public Username, Password As String";
self._username = @"";
self._password = @"";
[B4IRDebugUtils shared].currentLine=1048580;
 //BA.debugLineNum = 1048580;BA.debugLine="Public ErrorMessage As String";
self._errormessage = @"";
[B4IRDebugUtils shared].currentLine=1048581;
 //BA.debugLineNum = 1048581;BA.debugLine="Private target As Object";
self._target = [NSObject new];
[B4IRDebugUtils shared].currentLine=1048582;
 //BA.debugLineNum = 1048582;BA.debugLine="Private req As HttpRequest";
self._req = [B4IHttpRequest new];
[B4IRDebugUtils shared].currentLine=1048583;
 //BA.debugLineNum = 1048583;BA.debugLine="Public Tag As Object";
self._tag = [NSObject new];
[B4IRDebugUtils shared].currentLine=1048584;
 //BA.debugLineNum = 1048584;BA.debugLine="Private res As HttpResponse";
self._res = [B4IHttpResponse new];
[B4IRDebugUtils shared].currentLine=1048585;
 //BA.debugLineNum = 1048585;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _complete:(b4i_httpjob*) __ref :(B4IHttpResponse*) _res1{
__ref = self;
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"complete"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"complete:" :@[_res1]]);
[B4IRDebugUtils shared].currentLine=1572864;
 //BA.debugLineNum = 1572864;BA.debugLine="Public Sub Complete (res1 As HttpResponse)";
[B4IRDebugUtils shared].currentLine=1572865;
 //BA.debugLineNum = 1572865;BA.debugLine="res = res1";
__ref._res = _res1;
[B4IRDebugUtils shared].currentLine=1572866;
 //BA.debugLineNum = 1572866;BA.debugLine="CallSub2(target, \"JobDone\", Me)";
[self.__c CallSubDebug2:self.bi :__ref._target :@"JobDone" :self];
[B4IRDebugUtils shared].currentLine=1572867;
 //BA.debugLineNum = 1572867;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _download:(b4i_httpjob*) __ref :(NSString*) _link{
__ref = self;
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"download"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"download:" :@[_link]]);
[B4IRDebugUtils shared].currentLine=1376256;
 //BA.debugLineNum = 1376256;BA.debugLine="Public Sub Download(Link As String)";
[B4IRDebugUtils shared].currentLine=1376257;
 //BA.debugLineNum = 1376257;BA.debugLine="req.InitializeGet(Link)";
[__ref._req InitializeGet:_link];
[B4IRDebugUtils shared].currentLine=1376258;
 //BA.debugLineNum = 1376258;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self.__c CallSubDelayed2:self.bi :(NSObject*)((self._httputils2service).object) :@"SubmitJob" :self];
[B4IRDebugUtils shared].currentLine=1376259;
 //BA.debugLineNum = 1376259;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _download2:(b4i_httpjob*) __ref :(NSString*) _link :(B4IArray*) _parameters{
__ref = self;
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"download2"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"download2::" :@[_link,_parameters]]);
B4IStringBuilder* _sb = nil;
iStringUtils* _su = nil;
int _i = 0;
[B4IRDebugUtils shared].currentLine=1441792;
 //BA.debugLineNum = 1441792;BA.debugLine="Public Sub Download2(Link As String, Parameters()";
[B4IRDebugUtils shared].currentLine=1441793;
 //BA.debugLineNum = 1441793;BA.debugLine="Dim sb As StringBuilder";
_sb = [B4IStringBuilder new];
[B4IRDebugUtils shared].currentLine=1441794;
 //BA.debugLineNum = 1441794;BA.debugLine="sb.Initialize";
[_sb Initialize];
[B4IRDebugUtils shared].currentLine=1441795;
 //BA.debugLineNum = 1441795;BA.debugLine="sb.Append(Link)";
[_sb Append:_link];
[B4IRDebugUtils shared].currentLine=1441796;
 //BA.debugLineNum = 1441796;BA.debugLine="If Parameters.Length > 0 Then sb.Append(\"?\")";
if (_parameters.Length>0) { 
[_sb Append:@"?"];};
[B4IRDebugUtils shared].currentLine=1441797;
 //BA.debugLineNum = 1441797;BA.debugLine="Dim su As StringUtils";
_su = [iStringUtils new];
[B4IRDebugUtils shared].currentLine=1441798;
 //BA.debugLineNum = 1441798;BA.debugLine="For i = 0 To Parameters.Length - 1 Step 2";
{
const int step6 = (int) (2);
const int limit6 = (int) (_parameters.Length-1);
for (_i = (int) (0) ; (step6 > 0 && _i <= limit6) || (step6 < 0 && _i >= limit6); _i = ((int)(0 + _i + step6)) ) {
[B4IRDebugUtils shared].currentLine=1441799;
 //BA.debugLineNum = 1441799;BA.debugLine="If i > 0 Then sb.Append(\"&\")";
if (_i>0) { 
[_sb Append:@"&"];};
[B4IRDebugUtils shared].currentLine=1441800;
 //BA.debugLineNum = 1441800;BA.debugLine="sb.Append(su.EncodeUrl(Parameters(i), \"UTF8\")).A";
[[_sb Append:[_su EncodeUrl:((NSString*)[_parameters getObjectFast:_i]) :@"UTF8"]] Append:@"="];
[B4IRDebugUtils shared].currentLine=1441801;
 //BA.debugLineNum = 1441801;BA.debugLine="sb.Append(su.EncodeUrl(Parameters(i + 1), \"UTF8\"";
[_sb Append:[_su EncodeUrl:((NSString*)[_parameters getObjectFast:(int) (_i+1)]) :@"UTF8"]];
 }
};
[B4IRDebugUtils shared].currentLine=1441803;
 //BA.debugLineNum = 1441803;BA.debugLine="req.InitializeGet(sb.ToString)";
[__ref._req InitializeGet:[_sb ToString]];
[B4IRDebugUtils shared].currentLine=1441804;
 //BA.debugLineNum = 1441804;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self.__c CallSubDelayed2:self.bi :(NSObject*)((self._httputils2service).object) :@"SubmitJob" :self];
[B4IRDebugUtils shared].currentLine=1441805;
 //BA.debugLineNum = 1441805;BA.debugLine="End Sub";
return @"";
}
- (B4IBitmap*)  _getbitmap:(b4i_httpjob*) __ref{
__ref = self;
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"getbitmap"])
	return ((B4IBitmap*) [B4IDebug delegate:self.bi :@"getbitmap" :nil]);
B4IBitmap* _b = nil;
[B4IRDebugUtils shared].currentLine=1835008;
 //BA.debugLineNum = 1835008;BA.debugLine="Public Sub GetBitmap As Bitmap";
[B4IRDebugUtils shared].currentLine=1835009;
 //BA.debugLineNum = 1835009;BA.debugLine="Dim b As Bitmap";
_b = [B4IBitmap new];
[B4IRDebugUtils shared].currentLine=1835010;
 //BA.debugLineNum = 1835010;BA.debugLine="b.Initialize2(res.GetInputStream)";
[_b Initialize2:[__ref._res GetInputStream]];
[B4IRDebugUtils shared].currentLine=1835011;
 //BA.debugLineNum = 1835011;BA.debugLine="Return b";
if (true) return _b;
[B4IRDebugUtils shared].currentLine=1835012;
 //BA.debugLineNum = 1835012;BA.debugLine="End Sub";
return nil;
}
- (B4IInputStream*)  _getinputstream:(b4i_httpjob*) __ref{
__ref = self;
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"getinputstream"])
	return ((B4IInputStream*) [B4IDebug delegate:self.bi :@"getinputstream" :nil]);
[B4IRDebugUtils shared].currentLine=1900544;
 //BA.debugLineNum = 1900544;BA.debugLine="Public Sub GetInputStream As InputStream";
[B4IRDebugUtils shared].currentLine=1900545;
 //BA.debugLineNum = 1900545;BA.debugLine="Return res.GetInputStream";
if (true) return [__ref._res GetInputStream];
[B4IRDebugUtils shared].currentLine=1900546;
 //BA.debugLineNum = 1900546;BA.debugLine="End Sub";
return nil;
}
- (B4IHttpRequest*)  _getrequest:(b4i_httpjob*) __ref{
__ref = self;
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"getrequest"])
	return ((B4IHttpRequest*) [B4IDebug delegate:self.bi :@"getrequest" :nil]);
[B4IRDebugUtils shared].currentLine=1507328;
 //BA.debugLineNum = 1507328;BA.debugLine="Public Sub GetRequest As HttpRequest";
[B4IRDebugUtils shared].currentLine=1507329;
 //BA.debugLineNum = 1507329;BA.debugLine="Return req";
if (true) return __ref._req;
[B4IRDebugUtils shared].currentLine=1507330;
 //BA.debugLineNum = 1507330;BA.debugLine="End Sub";
return nil;
}
- (NSString*)  _getstring2:(b4i_httpjob*) __ref :(NSString*) _encoding{
__ref = self;
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"getstring2"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"getstring2:" :@[_encoding]]);
[B4IRDebugUtils shared].currentLine=1769472;
 //BA.debugLineNum = 1769472;BA.debugLine="Public Sub GetString2(Encoding As String) As Strin";
[B4IRDebugUtils shared].currentLine=1769473;
 //BA.debugLineNum = 1769473;BA.debugLine="Return res.GetString2(Encoding)";
if (true) return [__ref._res GetString2:_encoding];
[B4IRDebugUtils shared].currentLine=1769474;
 //BA.debugLineNum = 1769474;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _postbytes:(b4i_httpjob*) __ref :(NSString*) _link :(B4IArray*) _data{
__ref = self;
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"postbytes"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"postbytes::" :@[_link,_data]]);
[B4IRDebugUtils shared].currentLine=1245184;
 //BA.debugLineNum = 1245184;BA.debugLine="Public Sub PostBytes(Link As String, Data() As Byt";
[B4IRDebugUtils shared].currentLine=1245185;
 //BA.debugLineNum = 1245185;BA.debugLine="req.InitializePost2(Link, Data)";
[__ref._req InitializePost2:_link :_data];
[B4IRDebugUtils shared].currentLine=1245186;
 //BA.debugLineNum = 1245186;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self.__c CallSubDelayed2:self.bi :(NSObject*)((self._httputils2service).object) :@"SubmitJob" :self];
[B4IRDebugUtils shared].currentLine=1245187;
 //BA.debugLineNum = 1245187;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _postfile:(b4i_httpjob*) __ref :(NSString*) _link :(NSString*) _dir :(NSString*) _filename{
__ref = self;
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"postfile"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"postfile:::" :@[_link,_dir,_filename]]);
[B4IRDebugUtils shared].currentLine=1310720;
 //BA.debugLineNum = 1310720;BA.debugLine="Public Sub PostFile(Link As String, Dir As String,";
[B4IRDebugUtils shared].currentLine=1310721;
 //BA.debugLineNum = 1310721;BA.debugLine="req.InitializePost(Link, Dir, FileName)";
[__ref._req InitializePost:_link :_dir :_filename];
[B4IRDebugUtils shared].currentLine=1310722;
 //BA.debugLineNum = 1310722;BA.debugLine="CallSubDelayed2(HttpUtils2Service, \"SubmitJob\", M";
[self.__c CallSubDelayed2:self.bi :(NSObject*)((self._httputils2service).object) :@"SubmitJob" :self];
[B4IRDebugUtils shared].currentLine=1310723;
 //BA.debugLineNum = 1310723;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _release:(b4i_httpjob*) __ref{
__ref = self;
[B4IRDebugUtils shared].currentModule=@"httpjob";
if ([B4IDebug shouldDelegate: @"release"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"release" :nil]);
[B4IRDebugUtils shared].currentLine=1638400;
 //BA.debugLineNum = 1638400;BA.debugLine="Public Sub Release";
[B4IRDebugUtils shared].currentLine=1638402;
 //BA.debugLineNum = 1638402;BA.debugLine="End Sub";
return @"";
}
@end