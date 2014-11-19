//
//  WindowController.m
//  WKWebViewTransparencyTest
//
//  Created by Steven Nicklin on 18/11/2014.
//

#import "WindowController.h"

@interface WindowController ()

@end

@implementation WindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    [[self window] setBackgroundColor:[NSColor clearColor]];
    [[self window] setOpaque:NO];
    [[self window] setHasShadow:NO];
}

@end
