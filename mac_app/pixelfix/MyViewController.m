//
//  MyViewController.m
//  pixelfix
//
//  Created by Lukas Schauer on 27/09/14.
//  Copyright (c) 2014 Lukas Schauer. All rights reserved.
//

#import "MyViewController.h"

@interface MyView ()

@end

@implementation MyView

- (void)awakeFromNib {
    NSLog(@"init timer");
    timer = [[NSTimer scheduledTimerWithTimeInterval : .1f target:self selector:@selector(timerTick:) userInfo : nil repeats:YES] init];
}

- (void)drawRect:(NSRect)dirtyRect {
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
    NSRectFill(dirtyRect);
}

- (void) timerTick : (NSTimer *) t
{
    NSLog(@"hass");
    // this doesn't call drawRect when timer is set up in buttonPressed method
    [self setNeedsDisplay : YES];
}

@end
