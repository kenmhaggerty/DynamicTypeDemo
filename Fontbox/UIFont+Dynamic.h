//
//  UIFont+Dynamic.h
//  Fontbox
//
//  Created by Ken M. Haggerty on 10/14/14.
//  Copyright (c) 2014 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Public) //

#pragma mark - // IMPORTS (Public) //

#import <UIKit/UIKit.h>

#pragma mark - // PROTOCOLS //

@protocol Dynamic <NSObject>
@required
- (UIFont *)boldFont;
@end

#pragma mark - // DEFINITIONS (Public) //

@interface UIFont (Dynamic) <Dynamic>
+ (UIFont *)preferredFontWithName:(NSString *)fontName textStyle:(NSString *)style;
@end