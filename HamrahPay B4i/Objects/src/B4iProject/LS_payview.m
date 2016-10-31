
#import "iCore.h"
@interface LS_payview:NSObject
@end

@implementation LS_payview

- (void)LS_general:(B4ILayoutData*)views :(int)width :(int)height{
[B4ILayoutBuilder setScaleRate:0.3];
//BA.debugLineNum = 2;BA.debugLine="AutoScaleAll"[payview/General script]
[B4ILayoutBuilder scaleAll:views :width :height];

}
@end