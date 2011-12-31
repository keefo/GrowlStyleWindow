//
//  AppDelegate.m
//  GrowlStyleWindow
//
//  Created by xu lian on 11-12-30.
//  Copyright (c) 2011 Beyondcow. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize view1 = _view1;
@synthesize view2 = _view2;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    float x=[[NSScreen mainScreen] frame].size.width/2.0;
    float y=[[NSScreen mainScreen] frame].size.height/2.0;
    growlStyleWindow *win1=[[growlStyleWindow alloc] initWithContentRect:NSMakeRect(x, y, 210, 110) withView:_view1];
    [win1 setLevel:NSFloatingWindowLevel];
    [win1 setCustomShadow:NO];
    
    growlStyleWindow *win2=[[growlStyleWindow alloc] initWithContentRect:NSMakeRect(x, y+130, 210, 110) withView:_view2];
    [win2 setLevel:NSFloatingWindowLevel];
    [win2 setCustomShadow:YES];
    
    [win1 orderFront:self];
    [win2 orderFront:self];
}

@end
