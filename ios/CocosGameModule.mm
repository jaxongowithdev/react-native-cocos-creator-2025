#import "CocosGameModule.h"
#import "ViewController.h"  // Đảm bảo header search paths đã đúng

@implementation CocosGameModule

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(showCocosGame)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    UIViewController *gameVC = [[ViewController alloc] init];
    gameVC.modalPresentationStyle = UIModalPresentationFullScreen;
    UIViewController *rootVC = [UIApplication sharedApplication].delegate.window.rootViewController;
    [rootVC presentViewController:gameVC animated:YES completion:nil];
  });
}

@end