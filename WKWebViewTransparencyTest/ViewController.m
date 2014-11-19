//
//  ViewController.m
//  WKWebViewTransparencyTest
//
//  Created by Steven Nicklin on 18/11/2014.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
#import "WkWebViewWithSetDrawsBackground.h"
#import "TestScriptMessageHandler.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    WKWebViewConfiguration *configuration = [WKWebViewConfiguration new];
    
    // Add message handler for Javascript -> Objective-C communication.
    TestScriptMessageHandler *messageHandler = [TestScriptMessageHandler new];
    [configuration.userContentController addScriptMessageHandler:messageHandler name:@"test"];
    
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:configuration];
    [self setWebView:webView];
    [self.view addSubview:webView];
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"transparentPage" withExtension:@"html"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [webView _setDrawsTransparentBackground:YES];
    [webView loadRequest:urlRequest];
    [self performSelector:@selector(testScripts) withObject:nil afterDelay:2.0];
}

- (void) testScripts {
    // Send java script call for Objective-C -> Javascript communication.
    NSString *js = @"getTestMessage()";
    [self.webView evaluateJavaScript:js completionHandler:^(id val,NSError *error){
        NSLog(@"Completion: %@ : %@", val, error);
    }];
    // Should print out the test message.
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
