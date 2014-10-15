//
//  TableViewController.h
//  Fontbox
//
//  Created by Ken M. Haggerty on 10/14/14.
//  Copyright (c) 2014 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Public) //

#pragma mark - // IMPORTS (Public) //

#import <UIKit/UIKit.h>
#import "FontViewController.h"

#pragma mark - // PROTOCOLS //

#pragma mark - // DEFINITIONS (Public) //

@interface TableViewController : UITableViewController <FontDataSource>
@property (nonatomic, strong) NSString *fontName;
- (void)previousFont;
- (void)nextFont;
@end