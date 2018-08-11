//
//  main.m
//  Snip
//
//  Created by rz on 15/1/31.
//  Copyright (c) 2015年 isee15. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"
#import "CaptureHandler.h"

CaptureHandler* ch;

int main(int argc, const char *argv[]) {
    NSApplication* app = NSApplication.sharedApplication;
    AppDelegate* appDelegate = AppDelegate.new;
    app.delegate = appDelegate;
    ch = [[CaptureHandler alloc] init];
    (void)app.run;
    return 0;
}
