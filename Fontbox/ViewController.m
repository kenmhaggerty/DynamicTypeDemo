//
//  ViewController.m
//  Fontbox
//
//  Created by Ken M. Haggerty on 10/13/14.
//  Copyright (c) 2014 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "ViewController.h"
#import "AKDebugger.h"
#import "AKSystemInfo.h"

#pragma mark - // DEFINITIONS (Private) //

#define CONTENT_SIZE_ARRAY [NSArray arrayWithObjects:UIContentSizeCategoryExtraSmall, UIContentSizeCategorySmall, UIContentSizeCategoryMedium, UIContentSizeCategoryLarge, UIContentSizeCategoryExtraLarge, UIContentSizeCategoryExtraExtraLarge, UIContentSizeCategoryExtraExtraExtraLarge, UIContentSizeCategoryAccessibilityMedium, UIContentSizeCategoryAccessibilityLarge, UIContentSizeCategoryAccessibilityExtraLarge, UIContentSizeCategoryAccessibilityExtraExtraLarge, UIContentSizeCategoryAccessibilityExtraExtraExtraLarge, nil]

@interface ViewController ()
@property (nonatomic, strong) IBOutlet UILabel *labelHeadline;
@property (nonatomic, strong) IBOutlet UILabel *labelSubheadline;
@property (nonatomic, strong) IBOutlet UILabel *labelBody;
@property (nonatomic, strong) IBOutlet UILabel *labelFootnote;
@property (nonatomic, strong) IBOutlet UILabel *labelCaption1;
@property (nonatomic, strong) IBOutlet UILabel *labelCaption2;
@property (nonatomic, strong) IBOutlet UILabel *labelCurrentSize;
@property (nonatomic, strong) NSString *preferredContentSizeCategory;
- (void)setup;
- (void)teardown;
- (IBAction)buttonActionDecrease:(id)sender;
- (IBAction)buttonActionIncrease:(id)sender;
- (void)preferredContentSizeCategoryDidChange:(NSNotification *)notification;
@end

@implementation ViewController

#pragma mark - // SETTERS AND GETTERS //

@synthesize labelHeadline = _labelHeadline;
@synthesize labelSubheadline = _labelSubheadline;
@synthesize labelBody = _labelBody;
@synthesize labelFootnote = _labelFootnote;
@synthesize labelCaption1 = _labelCaption1;
@synthesize labelCaption2 = _labelCaption2;
@synthesize preferredContentSizeCategory = preferredContentSizeCategory;

#pragma mark - // INITS AND LOADS //

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        [self setup];
    }
    else if ([AKDebugger printForMethod:METHOD_NAME logType:AKWarning methodType:AKSetup rules:RULES_CLASS]) NSLog(@"[WARNING] self is nil for %s", __PRETTY_FUNCTION__);
    return self;
}

- (void)awakeFromNib
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super awakeFromNib];
    [self setup];
}

- (void)viewDidLoad
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self teardown];
}

#pragma mark - // PUBLIC METHODS //

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if ([object isEqual:self])
    {
        if ([keyPath isEqualToString:NSStringFromSelector(@selector(preferredContentSizeCategory))])
        {
            [self.labelHeadline setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleHeadline]];
            [self.labelSubheadline setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline]];
            [self.labelBody setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
            [self.labelFootnote setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleFootnote]];
            [self.labelCaption1 setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleCaption1]];
            [self.labelCaption2 setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleCaption2]];
            [self.labelCurrentSize setText:[NSString stringWithFormat:@"%lu", [CONTENT_SIZE_ARRAY indexOfObject:self.preferredContentSizeCategory]+1]];
        }
    }
}

#pragma mark - // PRIVATE METHODS //

- (void)setup
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if ([AKSystemInfo iOSVersion] >= 7.0)
    {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(preferredContentSizeCategoryDidChange:) name:UIContentSizeCategoryDidChangeNotification object:nil];
        [self addObserver:self forKeyPath:NSStringFromSelector(@selector(preferredContentSizeCategory)) options:NSKeyValueObservingOptionOld context:NULL];
        [self setPreferredContentSizeCategory:[[UIApplication sharedApplication] preferredContentSizeCategory]];
    }
}

- (void)teardown
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if ([AKSystemInfo iOSVersion] >= 7.0)
    {
        [[NSNotificationCenter defaultCenter] removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:nil];
        [self removeObserver:self forKeyPath:NSStringFromSelector(@selector(preferredContentSizeCategory))];
    }
}

- (IBAction)buttonActionDecrease:(id)sender
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    NSUInteger indexOfCurrentContentSize = [CONTENT_SIZE_ARRAY indexOfObject:self.preferredContentSizeCategory];
    if (indexOfCurrentContentSize > 0) [self setPreferredContentSizeCategory:[CONTENT_SIZE_ARRAY objectAtIndex:--indexOfCurrentContentSize]];
}

- (IBAction)buttonActionIncrease:(id)sender
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    NSUInteger indexOfCurrentContentSize = [CONTENT_SIZE_ARRAY indexOfObject:self.preferredContentSizeCategory];
    if (indexOfCurrentContentSize < [CONTENT_SIZE_ARRAY count]-1) [self setPreferredContentSizeCategory:[CONTENT_SIZE_ARRAY objectAtIndex:++indexOfCurrentContentSize]];
}

- (void)preferredContentSizeCategoryDidChange:(NSNotification *)notification
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self setPreferredContentSizeCategory:[[UIApplication sharedApplication] preferredContentSizeCategory]];
}

@end