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
@class b4i_hamrahpay;
@class b4i_httputils2service;
@class b4i_mainpage;
@class b4i_httpjob;
@interface b4i_payment_page : B4IStaticModule
- (NSString*)  _button1_click;
- (NSString*)  _process_globals;
@property (nonatomic)B4IPage* _paymentpage;
@property (nonatomic)B4IApplicationWrapper* _app;
@property (nonatomic)B4IWebViewWrapper* _webview1;
@property (nonatomic)B4ILabelWrapper* _addressbar;
@property (nonatomic)b4i_main* _main;
@property (nonatomic)b4i_hamrahpay* _hamrahpay;
@property (nonatomic)b4i_httputils2service* _httputils2service;
@property (nonatomic)b4i_mainpage* _mainpage;
- (NSString*)  _showpageme:(NSString*) _url;
- (BOOL)  _webview1_overrideurl:(NSString*) _url;
@end
