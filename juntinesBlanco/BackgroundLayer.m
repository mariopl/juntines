//
//  BackgroundLayer.m
//  Juntines1
//
//  Created by Mario Pierre-Louis Marín on 21/12/12.
//  Copyright (c) 2012 Mario Pierre-Louis Marín. All rights reserved.
//

#import "BackgroundLayer.h"

@implementation BackgroundLayer

//Metallic grey gradient background
+(CAGradientLayer*) greyGradient {
    
    UIColor *colorOne = [UIColor colorWithWhite:0.9 alpha:0.1];
    UIColor *colorTwo = [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.85 alpha:1.0];
    UIColor *colorThree     = [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.7 alpha:1.0];
    UIColor *colorFour = [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.4 alpha:1.0];

    NSArray *colors =  [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, colorThree.CGColor, colorFour.CGColor, nil];
    
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];//000
    NSNumber *stopTwo = [NSNumber numberWithFloat:0.92];//092
    NSNumber *stopThree     = [NSNumber numberWithFloat:0.99];//099
    NSNumber *stopFour = [NSNumber numberWithFloat:1.0];//100

    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, stopThree, stopFour, nil];
    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;

    return headerLayer;
}

//Blue gradient background
+(CAGradientLayer*) blueGradient {
    
    UIColor *colorOne = [UIColor colorWithRed:(55/255.0) green:(55/255.0) blue:(55/255.0) alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:(252/255.0)  green:(185/255.0)  blue:(20/255.0)  alpha:1.0];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.15
                         ];//0.0
    NSNumber *stopTwo = [NSNumber numberWithFloat:1.0];

    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, nil];

    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;

    return headerLayer;

}

@end
