//
//  growlStyleWindow.m
//  GrowlStyleWindow
//
//  Created by xu lian on 11-12-30.
//  Copyright (c) 2011 Beyondcow. All rights reserved.
//

#import "growlStyleWindow.h"

@interface growlStyleWindow(p)
- (NSColor*)styleBackground;
@end

@implementation growlStyleWindow

- (id)initWithContentRect:(NSRect)contentRect withView:(NSView*)view
{
    if (self=[super initWithContentRect:contentRect styleMask:NSBorderlessWindowMask backing:NSBackingStoreBuffered defer:YES]) {
        customShadow=NO;
        [view setAutoresizingMask:NSViewWidthSizable|NSViewHeightSizable];
        [[self contentView] addSubview:view];
        [self setOpaque:NO];
        [self setHasShadow:YES];
        [self setMovableByWindowBackground:YES];
        [self setBackgroundColor:[self styleBackground]];
    }
    return self;
}

- (BOOL)canBecomeKeyWindow
{
    return YES;
}

- (BOOL)canBecomeMainWindow
{
    return YES;
}

- (void)setCustomShadow:(BOOL)s;
{
    customShadow=s;
    if (customShadow) {
        [self setHasShadow:NO];

    }else{
        [self setHasShadow:YES];
    }
    [self setBackgroundColor:[self styleBackground]];
}

- (NSColor*)styleBackground
{
    NSImage *image=[[[NSImage alloc] initWithSize:self.frame.size] autorelease];
    [image lockFocus];
    NSRect r=NSMakeRect(0, 0, self.frame.size.width, self.frame.size.height);
    r=NSInsetRect(r, 20, 20);
    if (customShadow) {
        NSShadow *shadow=[[[NSShadow alloc] init] autorelease];
        [shadow setShadowColor:[NSColor blackColor]];
        [shadow setShadowBlurRadius:9];
        [shadow setShadowOffset:NSMakeSize(5, -5)];
        [shadow set];
    }
    NSBezierPath *p=[NSBezierPath bezierPathWithRoundedRect:r xRadius:8 yRadius:8];
    [[NSColor colorWithDeviceWhite:0 alpha:customShadow?0.6:0.8] set];
    [p fill];
    [image unlockFocus];
    return [NSColor colorWithPatternImage:image];
}

@end
