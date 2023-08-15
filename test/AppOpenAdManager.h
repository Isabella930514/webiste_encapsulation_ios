#import <GoogleMobileAds/GoogleMobileAds.h>
#import <UIKit/UIKit.h>

@protocol AppOpenAdManagerDelegate <NSObject>
/// Method to be invoked when an app open ad is complete (i.e. dismissed or fails to show).
- (void)adDidComplete;
@end

@interface AppOpenAdManager : NSObject <GADFullScreenContentDelegate>

@property (nonatomic, weak) id <AppOpenAdManagerDelegate> _Nullable delegate;

+ (nonnull AppOpenAdManager *)sharedInstance;
- (void)loadAd;
- (void)showAdIfAvailable:(nonnull UIViewController*)viewController;

@end
