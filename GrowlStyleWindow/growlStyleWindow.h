//
//  growlStyleWindow.h
//  GrowlStyleWindow
//
//  Created by xu lian on 11-12-30.
//  Copyright (c) 2011 Beyondcow. All rights reserved.
//

#import <AppKit/AppKit.h>

@interface growlStyleWindow : NSWindow
{
    BOOL customShadow;
}
- (id)initWithContentRect:(NSRect)contentRect withView:(NSView*)view;
- (void)setCustomShadow:(BOOL)s;

@end
