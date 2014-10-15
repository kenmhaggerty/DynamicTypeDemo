//
//  FontViewController.h
//  Fontbox
//
//  Created by Ken M. Haggerty on 10/13/14.
//  Copyright (c) 2014 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Public) //

#pragma mark - // IMPORTS (Public) //

#import <UIKit/UIKit.h>

#pragma mark - // PROTOCOLS //

@protocol FontDataSource <NSObject>
@required
@property (nonatomic, strong) NSString *fontName;
@optional
- (void)previousFont;
- (void)nextFont;
@end

#pragma mark - // DEFINITIONS (Public) //

@interface FontViewController : UIViewController
@end