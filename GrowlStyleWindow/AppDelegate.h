//
//  AppDelegate.h
//  GrowlStyleWindow
//
//  Created by xu lian on 11-12-30.
//  Copyright (c) 2011 Beyondcow. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "growlStyleWindow.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property(assign) IBOutlet NSView *view1;
@property(assign) IBOutlet NSView *view2;

@end
