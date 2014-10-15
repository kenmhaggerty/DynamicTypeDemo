//
//  FontsManager.m
//  Fontbox
//
//  Created by Ken M. Haggerty on 10/15/14.
//  Copyright (c) 2014 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "FontsManager.h"
#import "AKDebugger.h"

#pragma mark - // DEFINITIONS (Private) //

#define DEFAULT_FONT_NAME @"HelveticaNeue"

@interface FontsManager ()
@property (nonatomic, strong) NSArray *fontNames;
@property (nonatomic, strong) NSString *currentFont;
+ (FontsManager *)sharedManager;
@end

@implementation FontsManager

#pragma mark - // SETTERS AND GETTERS //

@synthesize fontNames = _fontNames;
@synthesize currentFont = _currentFont;

- (NSArray *)fontNames
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (!_fontNames)
    {
        NSMutableArray *fontNamesMutable = [[NSMutableArray alloc] init];
        for (NSString *familyName in [UIFont familyNames])
        {
            for (NSString *fontName in [UIFont fontNamesForFamilyName:familyName]) [fontNamesMutable addObject:fontName];
        }
        [fontNamesMutable sortUsingSelector:@selector(compare:)];
        _fontNames = [NSArray arrayWithArray:fontNamesMutable];
    }
    return _fontNames;
}

- (void)setCurrentFont:(NSString *)currentFont
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (![_currentFont isEqualToString:currentFont])
    {
        _currentFont = currentFont;
        [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_FONT_NAME_DID_CHANGE object:currentFont];
    }
}

- (NSString *)currentFont
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (!_currentFont)
    {
        _currentFont = DEFAULT_FONT_NAME;
    }
    return _currentFont;
}

#pragma mark - // INITS AND LOADS //

#pragma mark - // PUBLIC METHODS //

+ (NSArray *)fontNames
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return [[FontsManager sharedManager] fontNames];
}

+ (NSString *)currentFont
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return [[FontsManager sharedManager] currentFont];
}

+ (void)setCurrentFont:(NSString *)fontName
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [[FontsManager sharedManager] setCurrentFont:fontName];
}

+ (void)switchToPreviousFont
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    NSArray *fontNames = [FontsManager fontNames];
    NSInteger index = [fontNames indexOfObject:[FontsManager currentFont]];
    if (index == 0) index = fontNames.count;
    [FontsManager setCurrentFont:[fontNames objectAtIndex:--index]];
}

+ (void)switchToNextFont
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    NSArray *fontNames = [FontsManager fontNames];
    NSInteger index = [fontNames indexOfObject:[FontsManager currentFont]]+1;
    if (index == fontNames.count) index = 0;
    [FontsManager setCurrentFont:[fontNames objectAtIndex:index]];
}

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

+ (FontsManager *)sharedManager
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    static FontsManager *_sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [[self alloc] init];
    });
    return _sharedManager;
}

@end