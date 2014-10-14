//
//  UIFont+Dynamic.m
//  Fontbox
//
//  Created by Ken M. Haggerty on 10/14/14.
//  Copyright (c) 2014 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "UIFont+Dynamic.h"
#import "AKDebugger.h"

#pragma mark - // DEFINITIONS (Private) //

@implementation UIFont (Dynamic)

#pragma mark - // SETTERS AND GETTERS //

#pragma mark - // INITS AND LOADS //

#pragma mark - // PUBLIC METHODS //

+ (UIFont *)preferredFontWithName:(NSString *)fontName textStyle:(NSString *)style
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    UIFont *preferredFont = nil;
    NSString *preferredContentSizeCategory = [[UIApplication sharedApplication] preferredContentSizeCategory];
    if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryExtraSmall])
    {
        if ([style isEqualToString:UIFontTextStyleHeadline])
        {
            preferredFont = [[UIFont fontWithName:fontName size:14.0] boldFont];
        }
        else if ([style isEqualToString:UIFontTextStyleSubheadline])
        {
            preferredFont = [UIFont fontWithName:fontName size:12.0];
        }
        else if ([style isEqualToString:UIFontTextStyleBody])
        {
            preferredFont = [UIFont fontWithName:fontName size:14.0];
        }
        else if ([style isEqualToString:UIFontTextStyleFootnote])
        {
            preferredFont = [UIFont fontWithName:fontName size:12.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption1])
        {
            preferredFont = [UIFont fontWithName:fontName size:11.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption2])
        {
            preferredFont = [UIFont fontWithName:fontName size:11.0];
        }
        else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown style %@ for %s", style, __PRETTY_FUNCTION__);
    }
    else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategorySmall])
    {
        if ([style isEqualToString:UIFontTextStyleHeadline])
        {
            preferredFont = [[UIFont fontWithName:fontName size:15.0] boldFont];
        }
        else if ([style isEqualToString:UIFontTextStyleSubheadline])
        {
            preferredFont = [UIFont fontWithName:fontName size:13.0];
        }
        else if ([style isEqualToString:UIFontTextStyleBody])
        {
            preferredFont = [UIFont fontWithName:fontName size:15.0];
        }
        else if ([style isEqualToString:UIFontTextStyleFootnote])
        {
            preferredFont = [UIFont fontWithName:fontName size:12.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption1])
        {
            preferredFont = [UIFont fontWithName:fontName size:11.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption2])
        {
            preferredFont = [UIFont fontWithName:fontName size:11.0];
        }
        else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown style %@ for %s", style, __PRETTY_FUNCTION__);
    }
    else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryMedium])
    {
        if ([style isEqualToString:UIFontTextStyleHeadline])
        {
            preferredFont = [[UIFont fontWithName:fontName size:16.0] boldFont];
        }
        else if ([style isEqualToString:UIFontTextStyleSubheadline])
        {
            preferredFont = [UIFont fontWithName:fontName size:14.0];
        }
        else if ([style isEqualToString:UIFontTextStyleBody])
        {
            preferredFont = [UIFont fontWithName:fontName size:16.0];
        }
        else if ([style isEqualToString:UIFontTextStyleFootnote])
        {
            preferredFont = [UIFont fontWithName:fontName size:12.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption1])
        {
            preferredFont = [UIFont fontWithName:fontName size:11.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption2])
        {
            preferredFont = [UIFont fontWithName:fontName size:11.0];
        }
        else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown style %@ for %s", style, __PRETTY_FUNCTION__);
    }
    else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryLarge])
    {
        if ([style isEqualToString:UIFontTextStyleHeadline])
        {
            preferredFont = [[UIFont fontWithName:fontName size:17.0] boldFont];
        }
        else if ([style isEqualToString:UIFontTextStyleSubheadline])
        {
            preferredFont = [UIFont fontWithName:fontName size:15.0];
        }
        else if ([style isEqualToString:UIFontTextStyleBody])
        {
            preferredFont = [UIFont fontWithName:fontName size:17.0];
        }
        else if ([style isEqualToString:UIFontTextStyleFootnote])
        {
            preferredFont = [UIFont fontWithName:fontName size:13.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption1])
        {
            preferredFont = [UIFont fontWithName:fontName size:12.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption2])
        {
            preferredFont = [UIFont fontWithName:fontName size:11.0];
        }
        else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown style %@ for %s", style, __PRETTY_FUNCTION__);
    }
    else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryExtraLarge])
    {
        if ([style isEqualToString:UIFontTextStyleHeadline])
        {
            preferredFont = [[UIFont fontWithName:fontName size:19.0] boldFont];
        }
        else if ([style isEqualToString:UIFontTextStyleSubheadline])
        {
            preferredFont = [UIFont fontWithName:fontName size:17.0];
        }
        else if ([style isEqualToString:UIFontTextStyleBody])
        {
            preferredFont = [UIFont fontWithName:fontName size:19.0];
        }
        else if ([style isEqualToString:UIFontTextStyleFootnote])
        {
            preferredFont = [UIFont fontWithName:fontName size:15.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption1])
        {
            preferredFont = [UIFont fontWithName:fontName size:14.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption2])
        {
            preferredFont = [UIFont fontWithName:fontName size:13.0];
        }
        else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown style %@ for %s", style, __PRETTY_FUNCTION__);
    }
    else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryExtraExtraLarge])
    {
        if ([style isEqualToString:UIFontTextStyleHeadline])
        {
            preferredFont = [[UIFont fontWithName:fontName size:21.0] boldFont];
        }
        else if ([style isEqualToString:UIFontTextStyleSubheadline])
        {
            preferredFont = [UIFont fontWithName:fontName size:19.0];
        }
        else if ([style isEqualToString:UIFontTextStyleBody])
        {
            preferredFont = [UIFont fontWithName:fontName size:21.0];
        }
        else if ([style isEqualToString:UIFontTextStyleFootnote])
        {
            preferredFont = [UIFont fontWithName:fontName size:17.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption1])
        {
            preferredFont = [UIFont fontWithName:fontName size:16.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption2])
        {
            preferredFont = [UIFont fontWithName:fontName size:15.0];
        }
        else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown style %@ for %s", style, __PRETTY_FUNCTION__);
    }
    else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge])
    {
        if ([style isEqualToString:UIFontTextStyleHeadline])
        {
            preferredFont = [[UIFont fontWithName:fontName size:23.0] boldFont];
        }
        else if ([style isEqualToString:UIFontTextStyleSubheadline])
        {
            preferredFont = [UIFont fontWithName:fontName size:21.0];
        }
        else if ([style isEqualToString:UIFontTextStyleBody])
        {
            preferredFont = [UIFont fontWithName:fontName size:23.0];
        }
        else if ([style isEqualToString:UIFontTextStyleFootnote])
        {
            preferredFont = [UIFont fontWithName:fontName size:19.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption1])
        {
            preferredFont = [UIFont fontWithName:fontName size:18.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption2])
        {
            preferredFont = [UIFont fontWithName:fontName size:17.0];
        }
        else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown style %@ for %s", style, __PRETTY_FUNCTION__);
    }
    else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryAccessibilityMedium])
    {
        if ([style isEqualToString:UIFontTextStyleHeadline])
        {
            preferredFont = [[UIFont fontWithName:fontName size:23.0] boldFont];
        }
        else if ([style isEqualToString:UIFontTextStyleSubheadline])
        {
            preferredFont = [UIFont fontWithName:fontName size:21.0];
        }
        else if ([style isEqualToString:UIFontTextStyleBody])
        {
            preferredFont = [UIFont fontWithName:fontName size:28.0];
        }
        else if ([style isEqualToString:UIFontTextStyleFootnote])
        {
            preferredFont = [UIFont fontWithName:fontName size:19.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption1])
        {
            preferredFont = [UIFont fontWithName:fontName size:18.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption2])
        {
            preferredFont = [UIFont fontWithName:fontName size:17.0];
        }
        else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown style %@ for %s", style, __PRETTY_FUNCTION__);
    }
    else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryAccessibilityLarge])
    {
        if ([style isEqualToString:UIFontTextStyleHeadline])
        {
            preferredFont = [[UIFont fontWithName:fontName size:23.0] boldFont];
        }
        else if ([style isEqualToString:UIFontTextStyleSubheadline])
        {
            preferredFont = [UIFont fontWithName:fontName size:21.0];
        }
        else if ([style isEqualToString:UIFontTextStyleBody])
        {
            preferredFont = [UIFont fontWithName:fontName size:33.0];
        }
        else if ([style isEqualToString:UIFontTextStyleFootnote])
        {
            preferredFont = [UIFont fontWithName:fontName size:19.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption1])
        {
            preferredFont = [UIFont fontWithName:fontName size:18.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption2])
        {
            preferredFont = [UIFont fontWithName:fontName size:17.0];
        }
        else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown style %@ for %s", style, __PRETTY_FUNCTION__);
    }
    else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryAccessibilityExtraLarge])
    {
        if ([style isEqualToString:UIFontTextStyleHeadline])
        {
            preferredFont = [[UIFont fontWithName:fontName size:23.0] boldFont];
        }
        else if ([style isEqualToString:UIFontTextStyleSubheadline])
        {
            preferredFont = [UIFont fontWithName:fontName size:21.0];
        }
        else if ([style isEqualToString:UIFontTextStyleBody])
        {
            preferredFont = [UIFont fontWithName:fontName size:40.0];
        }
        else if ([style isEqualToString:UIFontTextStyleFootnote])
        {
            preferredFont = [UIFont fontWithName:fontName size:19.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption1])
        {
            preferredFont = [UIFont fontWithName:fontName size:18.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption2])
        {
            preferredFont = [UIFont fontWithName:fontName size:17.0];
        }
        else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown style %@ for %s", style, __PRETTY_FUNCTION__);
    }
    else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryAccessibilityExtraExtraLarge])
    {
        if ([style isEqualToString:UIFontTextStyleHeadline])
        {
            preferredFont = [[UIFont fontWithName:fontName size:23.0] boldFont];
        }
        else if ([style isEqualToString:UIFontTextStyleSubheadline])
        {
            preferredFont = [UIFont fontWithName:fontName size:21.0];
        }
        else if ([style isEqualToString:UIFontTextStyleBody])
        {
            preferredFont = [UIFont fontWithName:fontName size:47.0];
        }
        else if ([style isEqualToString:UIFontTextStyleFootnote])
        {
            preferredFont = [UIFont fontWithName:fontName size:19.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption1])
        {
            preferredFont = [UIFont fontWithName:fontName size:18.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption2])
        {
            preferredFont = [UIFont fontWithName:fontName size:17.0];
        }
        else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown style %@ for %s", style, __PRETTY_FUNCTION__);
    }
    else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryAccessibilityExtraExtraExtraLarge])
    {
        if ([style isEqualToString:UIFontTextStyleHeadline])
        {
            preferredFont = [[UIFont fontWithName:fontName size:23.0] boldFont];
        }
        else if ([style isEqualToString:UIFontTextStyleSubheadline])
        {
            preferredFont = [UIFont fontWithName:fontName size:21.0];
        }
        else if ([style isEqualToString:UIFontTextStyleBody])
        {
            preferredFont = [UIFont fontWithName:fontName size:53.0];
        }
        else if ([style isEqualToString:UIFontTextStyleFootnote])
        {
            preferredFont = [UIFont fontWithName:fontName size:19.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption1])
        {
            preferredFont = [UIFont fontWithName:fontName size:18.0];
        }
        else if ([style isEqualToString:UIFontTextStyleCaption2])
        {
            preferredFont = [UIFont fontWithName:fontName size:17.0];
        }
        else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown style %@ for %s", style, __PRETTY_FUNCTION__);
    }
    else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKGetter rules:RULES_CLASS]) NSLog(@"[WARNING] Unknown preferredContentSizeCategory %@ for %s", preferredContentSizeCategory, __PRETTY_FUNCTION__);
    return preferredFont;
}

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

@end