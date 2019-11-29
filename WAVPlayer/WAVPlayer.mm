#line 1 "/Users/iTheGentle/Desktop/WAVPlayer/WAVPlayer/WAVPlayer.xm"
#import <UIKit/UIKit.h>
@interface WAChatListViewController:UIViewController
@end
@interface WAPttPlayer : NSObject
- (bool)playPTTAtPath:(id)arg1;
@end
@interface WAChatViewController:UIViewController
@end
@interface WAMessageAudioSlice
@property(nonatomic) long long currentDuration;
@end
@interface WAMessageContainerView
-(void)reloadSliceViews;
@end
@interface WAMessageAudioSliceView:UIView
- (BOOL)isDoubleTapGestureEnabled;
- (BOOL)allowsSwipeGestureAtPoint:(struct CGPoint)arg1;
@end
BOOL add=1;
WAMessageContainerView *chat;
float w;
UIView *newView;
NSMutableArray *cellData;
float y;
bool playing;
bool dis;
WAChatViewController *cvc;
WAMessageAudioSliceView *WaP;


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class UIView; @class WAMessageBubbleSubview; @class WAMessageAudioSliceView; @class WAChatListViewController; @class WAPttPlaybackController; @class WAChatViewController; @class WAMessageContainerView; 
static void (*_logos_orig$_ungrouped$WAMessageAudioSliceView$playAudio$)(_LOGOS_SELF_TYPE_NORMAL WAMessageAudioSliceView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$WAMessageAudioSliceView$playAudio$(_LOGOS_SELF_TYPE_NORMAL WAMessageAudioSliceView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$WAMessageAudioSliceView$updateDurationView)(_LOGOS_SELF_TYPE_NORMAL WAMessageAudioSliceView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$WAMessageAudioSliceView$updateDurationView(_LOGOS_SELF_TYPE_NORMAL WAMessageAudioSliceView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$WAPttPlaybackController$handleHoldGesture$(_LOGOS_SELF_TYPE_NORMAL WAPttPlaybackController* _LOGOS_SELF_CONST, SEL, UIGestureRecognizer *); static bool (*_logos_orig$_ungrouped$WAPttPlaybackController$playPTTForCellData$)(_LOGOS_SELF_TYPE_NORMAL WAPttPlaybackController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$WAPttPlaybackController$playPTTForCellData$(_LOGOS_SELF_TYPE_NORMAL WAPttPlaybackController* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$WAMessageContainerView$cellData)(_LOGOS_SELF_TYPE_NORMAL WAMessageContainerView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$WAMessageContainerView$cellData(_LOGOS_SELF_TYPE_NORMAL WAMessageContainerView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UIView$removeFromSuperview)(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UIView$removeFromSuperview(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$WAChatViewController$viewDidDisappear$)(_LOGOS_SELF_TYPE_NORMAL WAChatViewController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$WAChatViewController$viewDidDisappear$(_LOGOS_SELF_TYPE_NORMAL WAChatViewController* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$WAMessageBubbleSubview$performGestureHandlerIfPossible$)(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleSubview* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$WAMessageBubbleSubview$performGestureHandlerIfPossible$(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleSubview* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$WAMessageBubbleSubview$touchesDidEnd)(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleSubview* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$WAMessageBubbleSubview$touchesDidEnd(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleSubview* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$WAMessageBubbleSubview$touches$didBeginWithHighlight$)(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleSubview* _LOGOS_SELF_CONST, SEL, id, _Bool); static void _logos_method$_ungrouped$WAMessageBubbleSubview$touches$didBeginWithHighlight$(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleSubview* _LOGOS_SELF_CONST, SEL, id, _Bool); static void (*_logos_orig$_ungrouped$WAMessageBubbleSubview$touchesWillBegin$)(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleSubview* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$WAMessageBubbleSubview$touchesWillBegin$(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleSubview* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$WAChatListViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL WAChatListViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$WAChatListViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL WAChatListViewController* _LOGOS_SELF_CONST, SEL); 

#line 30 "/Users/iTheGentle/Desktop/WAVPlayer/WAVPlayer/WAVPlayer.xm"
UIView *noCrash;

static void _logos_method$_ungrouped$WAMessageAudioSliceView$playAudio$(_LOGOS_SELF_TYPE_NORMAL WAMessageAudioSliceView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
WaP=self;

_logos_orig$_ungrouped$WAMessageAudioSliceView$playAudio$(self, _cmd, arg1);
}
static void _logos_method$_ungrouped$WAMessageAudioSliceView$updateDurationView(_LOGOS_SELF_TYPE_NORMAL WAMessageAudioSliceView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
WaP=self;
_logos_orig$_ungrouped$WAMessageAudioSliceView$updateDurationView(self, _cmd);
}



@interface WAPttPlaybackController:UIView<UIGestureRecognizerDelegate>
+(void)ppp;
+(void)test;
@end




static void _logos_method$_ungrouped$WAPttPlaybackController$handleHoldGesture$(_LOGOS_SELF_TYPE_NORMAL WAPttPlaybackController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIGestureRecognizer * touches) {
UIWindow* window = [UIApplication sharedApplication].keyWindow;
window = [[UIApplication sharedApplication].windows objectAtIndex:0];

CGPoint location = [touches locationInView:[[window subviews] objectAtIndex:0]];
y=location.y;
newView.frame = CGRectMake(0,location.y,WaP.frame.size.width+50,w);
    newView.layer.cornerRadius = 5;
    newView.layer.masksToBounds = true;
newView.layer.opacity = 2-(location.x/100);
if(newView.layer.opacity < 0){
[newView removeFromSuperview];
[chat reloadSliceViews];
    [cvc viewDidDisappear:dis];
add=1;

}
}


static bool _logos_method$_ungrouped$WAPttPlaybackController$playPTTForCellData$(_LOGOS_SELF_TYPE_NORMAL WAPttPlaybackController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2) {
[newView removeFromSuperview];

[chat reloadSliceViews];

playing=1;
for(int i=0; i < [cellData count];i++){
if(cellData[i] == arg2){
chat = cellData[i+1];
}
}


if(add){

if(w<1){
w=WaP.frame.size.height;
}
if(y<1){
newView = [[UIView alloc] initWithFrame:CGRectMake(0,300,WaP.frame.size.width+50,WaP.frame.size.height)];
}
else{
newView = [[UIView alloc] initWithFrame:CGRectMake(0,y,WaP.frame.size.width+50,WaP.frame.size.height)];
}
UIView *Clips=[[UIView alloc] initWithFrame:CGRectMake(0,0,35,WaP.frame.size.height)];
Clips.backgroundColor=[UIColor colorWithRed:0.64 green:0.70 blue:0.73 alpha:1.0];
newView.backgroundColor=[UIColor colorWithRed:0.28 green:0.29 blue:0.30 alpha:1.0];
    newView.layer.cornerRadius = 5;
    newView.layer.masksToBounds = true;
    UIVisualEffect *blurEffect;
    blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    
    UIVisualEffectView *visualEffectView;
    visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    
    visualEffectView.frame = newView.bounds;
    [newView addSubview:visualEffectView];
newView.layer.opacity=0.8;
NSData *dots= [[NSData alloc] initWithBase64EncodedString:@"iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEwAACxMBAJqcGAAAAE1JREFUOI3tjzEKwCAQBMc8MIj5fx/P+4M2FovEQCpTOLCwzF5zsPkHCTAgA/HBl8FfgKs3oPbccqjexLv6Awgyznp961FeOGX86jfLaAuPHTLxcWmNAAAAAElFTkSuQmCC" options:0];
UIImage *icon = [[UIImage alloc] initWithData:dots];
UIImageView *img = [[UIImageView alloc] initWithImage:icon];
img.center = CGPointMake(Clips.frame.size.width/2,Clips.frame.size.height/2);
[newView addSubview:Clips];
[newView addSubview:img];
UILongPressGestureRecognizer *lpHandler = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleHoldGesture:)];
lpHandler.minimumPressDuration = 0; 
lpHandler.delegate = self;
WaP.frame=CGRectMake(40,0,WaP.frame.size.width,WaP.frame.size.height);
[newView addSubview:WaP];
[Clips addGestureRecognizer:lpHandler];
UIWindow* window = [UIApplication sharedApplication].keyWindow;
if (!window)
window = [[UIApplication sharedApplication].windows objectAtIndex:0];

[[[window subviews] objectAtIndex:0] addSubview:newView];
add=0;
}
return _logos_orig$_ungrouped$WAPttPlaybackController$playPTTForCellData$(self, _cmd, arg2);
}







static id _logos_method$_ungrouped$WAMessageContainerView$cellData(_LOGOS_SELF_TYPE_NORMAL WAMessageContainerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
[cellData addObject:_logos_orig$_ungrouped$WAMessageContainerView$cellData(self, _cmd)];
[cellData addObject:self];
return _logos_orig$_ungrouped$WAMessageContainerView$cellData(self, _cmd);
}



static __attribute__((constructor)) void _logosLocalCtor_436a2f8e(int __unused argc, char __unused **argv, char __unused **envp){
cellData = [[NSMutableArray alloc] init];

}


static void _logos_method$_ungrouped$UIView$removeFromSuperview(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
if(self == newView){
add=1;
playing=0;
    
}
_logos_orig$_ungrouped$UIView$removeFromSuperview(self, _cmd);
}



static void _logos_method$_ungrouped$WAChatViewController$viewDidDisappear$(_LOGOS_SELF_TYPE_NORMAL WAChatViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg2) {
dis=arg2;
cvc=self;

if(!playing){

_logos_orig$_ungrouped$WAChatViewController$viewDidDisappear$(self, _cmd, arg2);
}
}





static void _logos_method$_ungrouped$WAMessageBubbleSubview$performGestureHandlerIfPossible$(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleSubview* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    if(!playing){
        
        _logos_orig$_ungrouped$WAMessageBubbleSubview$performGestureHandlerIfPossible$(self, _cmd, arg1);
    }
}

static void _logos_method$_ungrouped$WAMessageBubbleSubview$touchesDidEnd(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleSubview* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if(!playing){
        
        _logos_orig$_ungrouped$WAMessageBubbleSubview$touchesDidEnd(self, _cmd);
    }
}
static void _logos_method$_ungrouped$WAMessageBubbleSubview$touches$didBeginWithHighlight$(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleSubview* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, _Bool arg2){
    if(!playing){
        
        _logos_orig$_ungrouped$WAMessageBubbleSubview$touches$didBeginWithHighlight$(self, _cmd, arg1, arg2);
    }
}
static void _logos_method$_ungrouped$WAMessageBubbleSubview$touchesWillBegin$(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleSubview* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    if(!playing){
        
        _logos_orig$_ungrouped$WAMessageBubbleSubview$touchesWillBegin$(self, _cmd, arg1);
    }
}





static void _logos_method$_ungrouped$WAChatListViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL WAChatListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSError * error = NULL;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *getPath = [documentsDirectory stringByAppendingPathComponent:@"1xx"];
    NSString *str = [[NSString alloc] initWithContentsOfFile:getPath];
    if([str isEqualToString:@"1"]){
        str = @"2";
        [str writeToFile:getPath atomically:NO encoding:NSUTF8StringEncoding error:&error];
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"🎻\n"
                                     message:@"\nTo Dismiss the player just swipe\nfrom three dots on the left to the right."
                                     preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* noButton = [UIAlertAction
                                   actionWithTitle:@"Okay"
                                   style:UIAlertActionStyleDefault
                                   handler:nil];
        [alert addAction:noButton];
        
        
        [self presentViewController:alert animated:YES completion:nil];
    }
    if(![[NSFileManager defaultManager] fileExistsAtPath:getPath]) {
        NSString *mn = @"1";
        
        [mn writeToFile:getPath atomically:NO encoding:NSUTF8StringEncoding error:&error];
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"🎻\n"
                                     message:@"\nOmg!, Look at these pretty eyes 😍\nThank You sweetie for using WAVPlayer tweak, Enjoy it [BBH].\nMY BEST REGARDS @iTheGentle."
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* yesButton = [UIAlertAction
                                    actionWithTitle:@"CheckMe On Twitter"
                                    style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction * action) {
                                        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"twitter://user?screen_name=ithegentle"]];
        
                                        
                                        
                                    }];
        UIAlertAction* noButton = [UIAlertAction
                                   actionWithTitle:@"Just Leave Me Alone"
                                   style:UIAlertActionStyleDefault
                                   handler:nil];
        [alert addAction:yesButton];
        [alert addAction:noButton];
        
        
        [self presentViewController:alert animated:YES completion:nil];
        return _logos_orig$_ungrouped$WAChatListViewController$viewDidLoad(self, _cmd);
    }
    else {
        
        
        return _logos_orig$_ungrouped$WAChatListViewController$viewDidLoad(self, _cmd);
    }
}
static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$WAMessageAudioSliceView = objc_getClass("WAMessageAudioSliceView"); MSHookMessageEx(_logos_class$_ungrouped$WAMessageAudioSliceView, @selector(playAudio:), (IMP)&_logos_method$_ungrouped$WAMessageAudioSliceView$playAudio$, (IMP*)&_logos_orig$_ungrouped$WAMessageAudioSliceView$playAudio$);MSHookMessageEx(_logos_class$_ungrouped$WAMessageAudioSliceView, @selector(updateDurationView), (IMP)&_logos_method$_ungrouped$WAMessageAudioSliceView$updateDurationView, (IMP*)&_logos_orig$_ungrouped$WAMessageAudioSliceView$updateDurationView);Class _logos_class$_ungrouped$WAPttPlaybackController = objc_getClass("WAPttPlaybackController"); { char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UIGestureRecognizer *), strlen(@encode(UIGestureRecognizer *))); i += strlen(@encode(UIGestureRecognizer *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$WAPttPlaybackController, @selector(handleHoldGesture:), (IMP)&_logos_method$_ungrouped$WAPttPlaybackController$handleHoldGesture$, _typeEncoding); }MSHookMessageEx(_logos_class$_ungrouped$WAPttPlaybackController, @selector(playPTTForCellData:), (IMP)&_logos_method$_ungrouped$WAPttPlaybackController$playPTTForCellData$, (IMP*)&_logos_orig$_ungrouped$WAPttPlaybackController$playPTTForCellData$);Class _logos_class$_ungrouped$WAMessageContainerView = objc_getClass("WAMessageContainerView"); MSHookMessageEx(_logos_class$_ungrouped$WAMessageContainerView, @selector(cellData), (IMP)&_logos_method$_ungrouped$WAMessageContainerView$cellData, (IMP*)&_logos_orig$_ungrouped$WAMessageContainerView$cellData);Class _logos_class$_ungrouped$UIView = objc_getClass("UIView"); MSHookMessageEx(_logos_class$_ungrouped$UIView, @selector(removeFromSuperview), (IMP)&_logos_method$_ungrouped$UIView$removeFromSuperview, (IMP*)&_logos_orig$_ungrouped$UIView$removeFromSuperview);Class _logos_class$_ungrouped$WAChatViewController = objc_getClass("WAChatViewController"); MSHookMessageEx(_logos_class$_ungrouped$WAChatViewController, @selector(viewDidDisappear:), (IMP)&_logos_method$_ungrouped$WAChatViewController$viewDidDisappear$, (IMP*)&_logos_orig$_ungrouped$WAChatViewController$viewDidDisappear$);Class _logos_class$_ungrouped$WAMessageBubbleSubview = objc_getClass("WAMessageBubbleSubview"); MSHookMessageEx(_logos_class$_ungrouped$WAMessageBubbleSubview, @selector(performGestureHandlerIfPossible:), (IMP)&_logos_method$_ungrouped$WAMessageBubbleSubview$performGestureHandlerIfPossible$, (IMP*)&_logos_orig$_ungrouped$WAMessageBubbleSubview$performGestureHandlerIfPossible$);MSHookMessageEx(_logos_class$_ungrouped$WAMessageBubbleSubview, @selector(touchesDidEnd), (IMP)&_logos_method$_ungrouped$WAMessageBubbleSubview$touchesDidEnd, (IMP*)&_logos_orig$_ungrouped$WAMessageBubbleSubview$touchesDidEnd);MSHookMessageEx(_logos_class$_ungrouped$WAMessageBubbleSubview, @selector(touches:didBeginWithHighlight:), (IMP)&_logos_method$_ungrouped$WAMessageBubbleSubview$touches$didBeginWithHighlight$, (IMP*)&_logos_orig$_ungrouped$WAMessageBubbleSubview$touches$didBeginWithHighlight$);MSHookMessageEx(_logos_class$_ungrouped$WAMessageBubbleSubview, @selector(touchesWillBegin:), (IMP)&_logos_method$_ungrouped$WAMessageBubbleSubview$touchesWillBegin$, (IMP*)&_logos_orig$_ungrouped$WAMessageBubbleSubview$touchesWillBegin$);Class _logos_class$_ungrouped$WAChatListViewController = objc_getClass("WAChatListViewController"); MSHookMessageEx(_logos_class$_ungrouped$WAChatListViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$WAChatListViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$WAChatListViewController$viewDidLoad);} }
#line 264 "/Users/iTheGentle/Desktop/WAVPlayer/WAVPlayer/WAVPlayer.xm"
