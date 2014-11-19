//
//  TestScriptMessageHandler.h
//  WKWebViewTransparencyTest
//
//  Created by Steven Nicklin on 18/11/2014.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface TestScriptMessageHandler : NSObject <WKScriptMessageHandler>

- (void)userContentController:(WKUserContentController *)userContentController
      didReceiveScriptMessage:(WKScriptMessage *)message;

@end
