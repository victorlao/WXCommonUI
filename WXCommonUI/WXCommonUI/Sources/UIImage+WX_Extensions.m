//
//  UIImage+WX_Extensions.m
//  WXCommonUI
//
//  Created by laozhenqiang on 15/7/26.
//  Copyright (c) 2015年 lao. All rights reserved.
//

#import "UIImage+WX_Extensions.h"

@implementation UIImage (WX_Extensions)

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size
{
    if (CGSizeEqualToSize(size, CGSizeZero)) {
        return nil;
    }
    
    //Create a context of the appropriate size
    UIGraphicsBeginImageContext(size);
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    
    //Build a rect of appropriate size at origin 0,0
    CGRect fillRect = CGRectMake(0, 0, size.width, size.height);
    
    //Set the fill color
    CGContextSetFillColorWithColor(currentContext, color.CGColor);
    
    //Fill the color
    CGContextFillRect(currentContext, fillRect);
    
    //Snap the picture and close the context
    UIImage *colorImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return colorImage;
}

@end
