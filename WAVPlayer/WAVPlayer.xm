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

UIView *noCrash;
%hook WAMessageAudioSliceView
-(void)playAudio:(id)arg1{
WaP=self;

%orig;
}
- (void)updateDurationView{
WaP=self;
%orig;
}

%end

@interface WAPttPlaybackController:UIView<UIGestureRecognizerDelegate>
+(void)ppp;
+(void)test;
@end
%hook WAPttPlaybackController


%new
- (void)handleHoldGesture:(UIGestureRecognizer *)touches {
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


-(bool)playPTTForCellData:(id)arg2 {
[newView removeFromSuperview];

[chat reloadSliceViews];

playing=1;
for(int i=0; i < [cellData count];i++){
if(cellData[i] == arg2){
chat = cellData[i+1];
}
}

//[%c(WAPttPlaybackController) ppp];
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
lpHandler.minimumPressDuration = 0; //seconds
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
return %orig;
}


%end


%hook WAMessageContainerView

-(id)cellData{
[cellData addObject:%orig];
[cellData addObject:self];
return %orig;
}

%end

%ctor{
cellData = [[NSMutableArray alloc] init];

}

%hook UIView
-(void)removeFromSuperview{
if(self == newView){
add=1;
playing=0;
    
}
%orig;
}
%end

%hook WAChatViewController
-(void)viewDidDisappear:(bool)arg2 {
dis=arg2;
cvc=self;

if(!playing){

%orig;
}
}
%end


%hook WAMessageBubbleSubview

- (void)performGestureHandlerIfPossible:(id)arg1{
    if(!playing){
        
        %orig;
    }
}

- (void)touchesDidEnd{
    if(!playing){
        
        %orig;
    }
}
- (void)touches:(id)arg1 didBeginWithHighlight:(_Bool)arg2{
    if(!playing){
        
        %orig;
    }
}
- (void)touchesWillBegin:(id)arg1{
    if(!playing){
        
        %orig;
    }
}

%end


%hook WAChatListViewController
-(void)viewDidLoad{
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
                                     message:@"\nTo Dismiss the player just swipe\zxznfrom three dots on the left to the right."
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
        return %orig;
    }
    else {
        
        
        return %orig;
    }
}
