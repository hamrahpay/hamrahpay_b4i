#import "iCore.h"
#import "iPhone.h"
#import "iHUD.h"
#import "iHttp.h"
#import "iJSON.h"
#import "iNetwork.h"
#import "iNet.h"
#import "iStringUtils.h"
#import "iDebug2.h"
@class b4i_hamrahpay;
@class b4i_payment_page;
@class b4i_httputils2service;
@class b4i_mainpage;
@class b4i_httpjob;
@interface b4i_main : B4IStaticModule
- (NSString*)  _application_background;
- (NSString*)  _application_start:(B4INavigationControllerWrapper*) _nav;
- (NSString*)  _page1_resize:(int) _width :(int) _height;
- (NSString*)  _process_globals;
@property (nonatomic)B4IApplicationWrapper* _app;
@property (nonatomic)B4INavigationControllerWrapper* _navcontrol;
@property (nonatomic)b4i_hamrahpay* _hamrahpay;
@property (nonatomic)b4i_payment_page* _payment_page;
@property (nonatomic)b4i_httputils2service* _httputils2service;
@property (nonatomic)b4i_mainpage* _mainpage;
@end
