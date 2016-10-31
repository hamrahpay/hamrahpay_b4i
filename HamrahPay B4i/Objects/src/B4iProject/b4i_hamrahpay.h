#import "iCore.h"
#import "iPhone.h"
#import "iHUD.h"
#import "iHttp.h"
#import "iJSON.h"
#import "iNetwork.h"
#import "iNet.h"
#import "iStringUtils.h"
#import "iDebug2.h"
@class b4i_main;
@class b4i_payment_page;
@class b4i_httputils2service;
@class b4i_mainpage;
@class b4i_httpjob;
@interface b4i_hamrahpay : B4IStaticModule
- (NSString*)  _activate_app;
- (NSString*)  _getvendoridentifier;
- (NSString*)  _jobdone:(b4i_httpjob*) _job;
- (NSString*)  _pay_request;
- (NSString*)  _payment:(B4IMap*) _res_map;
- (NSString*)  _process_globals;
@property (nonatomic)B4IApplicationWrapper* _app;
@property (nonatomic)b4i_httpjob* _pay_req;
@property (nonatomic)b4i_httpjob* _pay_verify;
@property (nonatomic)iHUD* _hud1;
@property (nonatomic)BOOL _pay_status;
@property (nonatomic)NSString* _pay_request_url;
@property (nonatomic)NSString* _pay_verify_url;
@property (nonatomic)NSString* _pay_code;
@property (nonatomic)NSString* _pay_url;
@property (nonatomic)NSString* _status;
@property (nonatomic)BOOL _error;
@property (nonatomic)NSString* _mail;
@property (nonatomic)NSString* _verification_type;
@property (nonatomic)NSString* _product_sku;
@property (nonatomic)b4i_main* _main;
@property (nonatomic)b4i_payment_page* _payment_page;
@property (nonatomic)b4i_httputils2service* _httputils2service;
@property (nonatomic)b4i_mainpage* _mainpage;
- (NSString*)  _verify:(B4IMap*) _verify_map;
- (NSString*)  _verify_payment:(NSString*) _pay_code_param :(NSString*) _sku;
@end
