
#import "b4i_httputils2service.h"
#import "b4i_main.h"
#import "b4i_hamrahpay.h"
#import "b4i_payment_page.h"
#import "b4i_httpjob.h"
#import "b4i_mainpage.h"


@implementation b4i_httputils2service 


+ (instancetype)new {
    static b4i_httputils2service* shared = nil;
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


- (NSString*)  _completejob:(int) _taskid :(BOOL) _success :(NSString*) _errormessage :(B4IHttpResponse*) _res{
[B4IRDebugUtils shared].currentModule=@"httputils2service";
if ([B4IDebug shouldDelegate: @"completejob"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"completejob::::" :@[@(_taskid),@(_success),_errormessage,_res]]);
b4i_httpjob* _job = nil;
[B4IRDebugUtils shared].currentLine=2293760;
 //BA.debugLineNum = 2293760;BA.debugLine="Sub CompleteJob(TaskId As Int, success As Boolean,";
[B4IRDebugUtils shared].currentLine=2293761;
 //BA.debugLineNum = 2293761;BA.debugLine="Dim job As HttpJob";
_job = [b4i_httpjob new];
[B4IRDebugUtils shared].currentLine=2293762;
 //BA.debugLineNum = 2293762;BA.debugLine="job = TaskIdToJob.Get(TaskId)";
_job = (b4i_httpjob*)([self._taskidtojob Get:(NSObject*)(@(_taskid))]);
[B4IRDebugUtils shared].currentLine=2293763;
 //BA.debugLineNum = 2293763;BA.debugLine="TaskIdToJob.Remove(TaskId)";
[self._taskidtojob Remove:(NSObject*)(@(_taskid))];
[B4IRDebugUtils shared].currentLine=2293764;
 //BA.debugLineNum = 2293764;BA.debugLine="job.success = success";
_job._success = _success;
[B4IRDebugUtils shared].currentLine=2293765;
 //BA.debugLineNum = 2293765;BA.debugLine="job.errorMessage = errorMessage";
_job._errormessage = _errormessage;
[B4IRDebugUtils shared].currentLine=2293766;
 //BA.debugLineNum = 2293766;BA.debugLine="job.Complete(res)";
[_job _complete:nil :_res];
[B4IRDebugUtils shared].currentLine=2293767;
 //BA.debugLineNum = 2293767;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _hc_responseerror:(B4IHttpResponse*) _response :(NSString*) _reason :(int) _statuscode :(int) _taskid{
[B4IRDebugUtils shared].currentModule=@"httputils2service";
if ([B4IDebug shouldDelegate: @"hc_responseerror"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"hc_responseerror::::" :@[_response,_reason,@(_statuscode),@(_taskid)]]);
[B4IRDebugUtils shared].currentLine=2162688;
 //BA.debugLineNum = 2162688;BA.debugLine="Sub hc_ResponseError (Response As HttpResponse, Re";
[B4IRDebugUtils shared].currentLine=2162689;
 //BA.debugLineNum = 2162689;BA.debugLine="Log(\"Error response: \" & Response.GetString & \",";
[self.__c Log:[@[@"Error response: ",[_response GetString],@", status code: ",[self.bi NumberToString:@(_statuscode)]] componentsJoinedByString:@""]];
[B4IRDebugUtils shared].currentLine=2162690;
 //BA.debugLineNum = 2162690;BA.debugLine="CompleteJob(TaskId, False, Reason, Null)";
[self _completejob:_taskid :[self.__c False] :_reason :(B4IHttpResponse*)([self.__c Null])];
[B4IRDebugUtils shared].currentLine=2162691;
 //BA.debugLineNum = 2162691;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _hc_responsesuccess:(B4IHttpResponse*) _response :(int) _taskid{
[B4IRDebugUtils shared].currentModule=@"httputils2service";
if ([B4IDebug shouldDelegate: @"hc_responsesuccess"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"hc_responsesuccess::" :@[_response,@(_taskid)]]);
[B4IRDebugUtils shared].currentLine=2228224;
 //BA.debugLineNum = 2228224;BA.debugLine="Sub hc_ResponseSuccess (Response As HttpResponse,";
[B4IRDebugUtils shared].currentLine=2228225;
 //BA.debugLineNum = 2228225;BA.debugLine="CompleteJob(TaskId, True, \"\", Response)";
[self _completejob:_taskid :[self.__c True] :@"" :_response];
[B4IRDebugUtils shared].currentLine=2228226;
 //BA.debugLineNum = 2228226;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _initialize{
[B4IRDebugUtils shared].currentModule=@"httputils2service";
if ([B4IDebug shouldDelegate: @"initialize"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"initialize" :nil]);
[B4IRDebugUtils shared].currentLine=2031616;
 //BA.debugLineNum = 2031616;BA.debugLine="Private Sub initialize";
[B4IRDebugUtils shared].currentLine=2031617;
 //BA.debugLineNum = 2031617;BA.debugLine="hc.initialize(\"hc\")";
[self._hc Initialize:self.bi :@"hc"];
[B4IRDebugUtils shared].currentLine=2031618;
 //BA.debugLineNum = 2031618;BA.debugLine="TaskIdToJob.initialize";
[self._taskidtojob Initialize];
[B4IRDebugUtils shared].currentLine=2031619;
 //BA.debugLineNum = 2031619;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _process_globals{
self._main=[b4i_main new];
self._hamrahpay=[b4i_hamrahpay new];
self._payment_page=[b4i_payment_page new];
self._mainpage=[b4i_mainpage new];
[B4IRDebugUtils shared].currentModule=@"httputils2service";
if ([B4IDebug shouldDelegate: @"process_globals"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"process_globals" :nil]);
[B4IRDebugUtils shared].currentLine=1966080;
 //BA.debugLineNum = 1966080;BA.debugLine="Sub Process_Globals";
[B4IRDebugUtils shared].currentLine=1966081;
 //BA.debugLineNum = 1966081;BA.debugLine="Private hc As HttpClient";
self._hc = [B4IHttp new];
[B4IRDebugUtils shared].currentLine=1966082;
 //BA.debugLineNum = 1966082;BA.debugLine="Private TaskIdToJob As Map";
self._taskidtojob = [B4IMap new];
[B4IRDebugUtils shared].currentLine=1966083;
 //BA.debugLineNum = 1966083;BA.debugLine="Public TempFolder As String";
self._tempfolder = @"";
[B4IRDebugUtils shared].currentLine=1966084;
 //BA.debugLineNum = 1966084;BA.debugLine="Private taskCounter As Int";
self._taskcounter = 0;
[B4IRDebugUtils shared].currentLine=1966085;
 //BA.debugLineNum = 1966085;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _submitjob:(b4i_httpjob*) _job{
[B4IRDebugUtils shared].currentModule=@"httputils2service";
if ([B4IDebug shouldDelegate: @"submitjob"])
	return ((NSString*) [B4IDebug delegate:self.bi :@"submitjob:" :@[_job]]);
[B4IRDebugUtils shared].currentLine=2097152;
 //BA.debugLineNum = 2097152;BA.debugLine="Public Sub SubmitJob(job As HttpJob)";
[B4IRDebugUtils shared].currentLine=2097153;
 //BA.debugLineNum = 2097153;BA.debugLine="If hc.IsInitialized = False Then initialize";
if ([self._hc IsInitialized]==[self.__c False]) { 
[self _initialize];};
[B4IRDebugUtils shared].currentLine=2097154;
 //BA.debugLineNum = 2097154;BA.debugLine="taskCounter = taskCounter + 1";
self._taskcounter = (int) (self._taskcounter+1);
[B4IRDebugUtils shared].currentLine=2097155;
 //BA.debugLineNum = 2097155;BA.debugLine="TaskIdToJob.Put(taskCounter, job)";
[self._taskidtojob Put:(NSObject*)(@(self._taskcounter)) :(NSObject*)(_job)];
[B4IRDebugUtils shared].currentLine=2097156;
 //BA.debugLineNum = 2097156;BA.debugLine="If job.Username <> \"\" And job.Password <> \"\" Then";
if ([_job._username isEqual:@""] == false && [_job._password isEqual:@""] == false) { 
[B4IRDebugUtils shared].currentLine=2097157;
 //BA.debugLineNum = 2097157;BA.debugLine="hc.ExecuteCredentials(job.GetRequest, taskCounte";
[self._hc ExecuteCredentials:[_job _getrequest:nil] :self._taskcounter :_job._username :_job._password];
 }else {
[B4IRDebugUtils shared].currentLine=2097159;
 //BA.debugLineNum = 2097159;BA.debugLine="hc.Execute(job.GetRequest, taskCounter)";
[self._hc Execute:[_job _getrequest:nil] :self._taskcounter];
 };
[B4IRDebugUtils shared].currentLine=2097161;
 //BA.debugLineNum = 2097161;BA.debugLine="End Sub";
return @"";
}
@end