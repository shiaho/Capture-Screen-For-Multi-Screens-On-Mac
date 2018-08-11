//
//  CaptureHandler.m
//  Snip
//
//  Created by KeShihao on 2018/8/11.
//  Copyright © 2018年 KSH. All rights reserved.
//

#import "CaptureHandler.h"
#import <Cocoa/Cocoa.h>
#import "SnipManager.h"

@implementation CaptureHandler
- (instancetype)init
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onEndCapture:) name:kNotifyCaptureEnd object:nil];
    return self;
}

- (void)onEndCapture:(NSNotification *)notification {
    NSLog(@"onEndCapture~~~~~");
    NSPasteboard *pasteboard = [NSPasteboard generalPasteboard];
    NSArray *classArray = [NSArray arrayWithObject:[NSImage class]];
    NSDictionary *options = [NSDictionary dictionary];
    BOOL ok = [pasteboard canReadObjectForClasses:classArray options:options];
    if(!ok) {
        NSLog(@"Error: Clipboard doesn't seem to contain an image.");
    }
    exit(0);
}
@end
