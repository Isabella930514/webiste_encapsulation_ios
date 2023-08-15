//
//  SplashViewController.h
//  test
//
//  Created by xiaochen zhu on 20/03/22.
//
#import "AppOpenAdManager.h"
#import <UIKit/UIKit.h>

@interface SplashViewController : UIViewController <AppOpenAdManagerDelegate>

/// The text indicating number of seconds left to show app open ad.
@property (weak, nonatomic) IBOutlet UILabel *splashScreenLabel;

@end
