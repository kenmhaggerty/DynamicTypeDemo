//
//  FontsManager.h
//  Fontbox
//
//  Created by Ken M. Haggerty on 10/15/14.
//  Copyright (c) 2014 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Public) //

#pragma mark - // IMPORTS (Public) //

#import <Foundation/Foundation.h>

#pragma mark - // PROTOCOLS //

#pragma mark - // DEFINITIONS (Public) //

#define NOTIFICATION_FONT_NAME_DID_CHANGE @"FontboxDidChangeFontName"

@interface FontsManager : NSObject
+ (NSArray *)fontNames;
+ (NSString *)currentFont;
+ (void)setCurrentFont:(NSString *)fontName;
+ (void)switchToPreviousFont;
+ (void)switchToNextFont;
@end