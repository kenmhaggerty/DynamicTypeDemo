//
//  AKDebuggerRules_Fontbox.h
//  Fontbox
//
//  Created by Ken M. Haggerty on 10/11/13.
//  Copyright (c) 2013 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Public) //

#pragma mark - // IMPORTS (Public) //

#import <Foundation/Foundation.h>
#import "AKDebugger.h"

#pragma mark - // PROTOCOLS //

#pragma mark - // DEFINITIONS (Public) //

@interface AKDebuggerRules_Fontbox : NSObject <AKDebuggerRules>

// RULES (General) //

+ (BOOL)masterOn;

+ (BOOL)printClassMethods;
+ (BOOL)printInstanceMethods;
+ (BOOL)printSetupMethods;
+ (BOOL)printSetters;
+ (BOOL)printGetters;
+ (BOOL)printMethodNames;
+ (BOOL)printWarnings;
+ (BOOL)printInfoLogs;
+ (BOOL)printTests;

// RULES (View Controllers) //

+ (BOOL)printViewControllers;
+ (NSSet *)viewControllersToSkip;

// RULES (Views) //

+ (BOOL)printViews;
+ (NSSet *)viewsToSkip;

// RULES (Other) //

+ (BOOL)printOtherClasses;
+ (NSSet *)otherClassesToSkip;
+ (NSSet *)methodsToSkip;
+ (NSSet *)methodsToPrint;

// RULES (Categories) //

+ (BOOL)printCategories;
+ (NSSet *)categoriesToSkip;

// DEBUGGING //

+ (BOOL)test;

@end