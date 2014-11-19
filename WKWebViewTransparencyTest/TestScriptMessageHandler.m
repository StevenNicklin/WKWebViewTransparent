//
//  TestScriptMessageHandler.m
//  WKWebViewTransparencyTest
//
//  Created by Steven Nicklin on 18/11/2014.
//

#import "TestScriptMessageHandler.h"

@implementation TestScriptMessageHandler

- (void)userContentController:(WKUserContentController *)userContentController
      didReceiveScriptMessage:(WKScriptMessage *)message
{
    NSLog(@"From Javascript: %@", message.body);
}

@end
