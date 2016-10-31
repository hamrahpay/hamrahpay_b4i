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
@class b4i_payment_page;
@class b4i_httputils2service;
@class b4i_httpjob;
@interface b4i_mainpage : B4IStaticModule
- (NSString*)  _buttonpay_click;
- (NSString*)  _process_globals;
@property (nonatomic)B4IPage* _page1;
@property (nonatomic)B4IApplicationWrapper* _app;
@property (nonatomic)B4INavigationControllerWrapper* _nc;
@property (nonatomic)B4INavigationControllerWrapper* _navcontrol;
@property (nonatomic)iHUD* _hud1;
@property (nonatomic)B4IButtonWrapper* _buttonpay;
@property (nonatomic)B4ILabelWrapper* _label1;
@property (nonatomic)b4i_main* _main;
@property (nonatomic)b4i_hamrahpay* _hamrahpay;
@property (nonatomic)b4i_payment_page* _payment_page;
@property (nonatomic)b4i_httputils2service* _httputils2service;
- (NSString*)  _showpageme;
@end
