//
//  AKDebuggerRules_Fontbox.m
//  Fontbox
//
//  Created by Ken M. Haggerty on 10/11/13.
//  Copyright (c) 2013 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "AKDebuggerRules_Fontbox.h"

#pragma mark - // DEFINITIONS (Private) //

// RULES (General) //

#define MASTER_ON NO

#define PRINT_CLASS_METHODS NO
#define PRINT_INSTANCE_METHODS YES
#define PRINT_SETUP_METHODS NO
#define PRINT_SETTERS NO
#define PRINT_GETTERS NO

#define PRINT_METHOD_NAMES YES
#define PRINT_WARNINGS YES
#define PRINT_INFO NO
#define PRINT_TESTS YES

// RULES (View Controllers) //

#define PRINT_VIEWCONTROLLERS YES
#define VIEWCONTROLLERS_TO_SKIP [NSSet setWithObjects:@"ExampleViewController", nil]

// RULES (Views) //

#define PRINT_VIEWS NO
#define VIEWS_TO_SKIP [NSSet setWithObjects:@"ExampleView", nil]

// RULES (Other) //

#define PRINT_OTHERCLASSES NO
#define CLASSES_TO_SKIP [NSSet setWithObjects:@"ExampleClass", nil]
#define METHODS_TO_SKIP [NSSet setWithObjects:@"exampleMethod", nil]
#define METHODS_TO_PRINT nil

// RULES (Categories) //

#define PRINT_CATEGORIES YES
#define CATEGORIES_TO_SKIP [NSSet setWithObjects:@"ExampleCategory", nil]

// FORMATTING //

// OTHER //

@implementation AKDebuggerRules_Fontbox

#pragma mark - // SETTERS AND GETTERS //

#pragma mark - // INITS AND LOADS //

#pragma mark - // PUBLIC METHODS (General) //

+ (BOOL)masterOn
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return MASTER_ON;
}

+ (BOOL)printClassMethods
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_CLASS_METHODS;
}

+ (BOOL)printInstanceMethods
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_INSTANCE_METHODS;
}

+ (BOOL)printSetupMethods
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_SETUP_METHODS;
}

+ (BOOL)printSetters
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_SETTERS;
}

+ (BOOL)printGetters
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_GETTERS;
}

+ (BOOL)printMethodNames
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_METHOD_NAMES;
}

+ (BOOL)printWarnings
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_WARNINGS;
}

+ (BOOL)printInfoLogs
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_INFO;
}

+ (BOOL)printTests
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_TESTS;
}

#pragma mark - // PUBLIC METHODS (View Controllers) //

+ (BOOL)printViewControllers
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_VIEWCONTROLLERS;
}

+ (NSSet *)viewControllersToSkip
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return VIEWCONTROLLERS_TO_SKIP;
}

#pragma mark - // PUBLIC METHODS (Views) //

+ (BOOL)printViews
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_VIEWS;
}

+ (NSSet *)viewsToSkip
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return VIEWS_TO_SKIP;
}

#pragma mark - // PUBLIC METHODS (Other) //

+ (BOOL)printOtherClasses
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_OTHERCLASSES;
}

+ (NSSet *)otherClassesToSkip
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return CLASSES_TO_SKIP;
}

+ (NSSet *)methodsToSkip
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return METHODS_TO_SKIP;
}

+ (NSSet *)methodsToPrint
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return METHODS_TO_PRINT;
}

#pragma mark - // PUBLIC METHODS (Categories) //

+ (BOOL)printCategories
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return PRINT_CATEGORIES;
}

+ (NSSet *)categoriesToSkip
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return CATEGORIES_TO_SKIP;
}

#pragma mark - // PUBLIC METHODS (Debugging) //

+ (BOOL)test
{
    if (PRINT_DEBUGGER) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return YES;
}

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

@end