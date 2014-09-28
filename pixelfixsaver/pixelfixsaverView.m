//
//  pixelfixsaverView.m
//  pixelfixsaver
//
//  Created by Lukas Schauer on 28/09/14.
//  Copyright (c) 2014 Lukas Schauer. All rights reserved.
//

#import "pixelfixsaverView.h"

@implementation pixelfixsaverView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/10.0];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    alpha = 1;
    if (background_round == 1) {
        red = 1;
        green = 0;
        blue = 0;
    }else if (background_round == 2) {
        red = 0;
        green = 1;
        blue = 0;
    }else{
        red = 0;
        green = 0;
        blue = 1;
        background_round = 0;
    }
    background_round++;
    [[NSColor colorWithRed:red green:green blue:blue alpha:alpha] set];
    NSRect rect;
    rect.size = [self bounds].size;
    NSRectFill(rect);
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
