#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary<NSString *, __kindof NSObject *> *)launchOptions {
  // Initialize Google Mobile Ads SDK.
  [GADMobileAds.sharedInstance startWithCompletionHandler:nil];
  // Although the Google Mobile Ads SDK might not be fully initialized at this point,
  // we should still load the app open ad so it becomes ready to show when the splash
  // screen dismisses.
  [AppOpenAdManager.sharedInstance loadAd];
  return YES;
}

- (void) applicationDidBecomeActive:(UIApplication *)application {
  NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF.isKeyWindow == YES"];
  UIWindow *keyWindow = [[application.windows filteredArrayUsingPredicate:predicate] firstObject];
  UIViewController *rootViewController = keyWindow.rootViewController;
  // Do not show app open ad if the current view controller is SplashViewController.
  if (!rootViewController ||
      [rootViewController isKindOfClass:[SplashViewController class]]) {
    return;
  }
  [AppOpenAdManager.sharedInstance showAdIfAvailable:rootViewController];
}

@end
