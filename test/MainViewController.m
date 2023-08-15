////
////  ViewController.m
////  test
////
////  Created by xiaochen zhu on 20/03/22.
////
//
//#import "ViewController.h"
//
//@interface ViewController ()
//
//@end
//
//@implementation ViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//
//    self.webView.delegate = self;
//    NSString *stringURL = @"http://rentalnz.co.nz";
//    NSURL *URL = [NSURL URLWithString:stringURL];
//    NSURLRequest *requestURL =[NSURLRequest requestWithURL:URL];
//    [self.webView loadRequest:requestURL];
//
//}
//- (void)didReceiveMemoryWarning{
//
//    [super didReceiveMemoryWarning];
//
//}
//-(void)webViewDidStartLoad:(UIWebView *)webView{
//    [self.activityIndicator startAnimating];
//}
//
//-(void)webViewDidFinishLoad:(UIWebView *)webView{
//    [self.activityIndicator stopAnimating];
//    self.activityIndicator.hidesWhenStopped = YES;
//}
//
//
//@end
#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView *webView = [[UIWebView alloc]init];
    self.webView.delegate = self;
    NSString *stringURL = @"http://rentalnz.co.nz";
    NSURL *URL = [NSURL URLWithString:stringURL];
    NSURLRequest *requestURL =[NSURLRequest requestWithURL:URL];
    [self.webView loadRequest:requestURL];

}
@end
