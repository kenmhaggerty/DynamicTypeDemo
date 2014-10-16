//
//  FontViewController.m
//  Fontbox
//
//  Created by Ken M. Haggerty on 10/13/14.
//  Copyright (c) 2014 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "FontViewController.h"
#import "AKDebugger.h"
#import "AKSystemInfo.h"
#import "FontsManager.h"
#import "UIFont+Dynamic.h"

#pragma mark - // DEFINITIONS (Private) //

#define DEFAULT_FONT_SIZE_IOS_6 16.0

@interface FontViewController ()
@property (nonatomic, strong) NSString *currentFont;
@property (nonatomic, strong) IBOutlet UILabel *labelHeadlineLeft;
@property (nonatomic, strong) IBOutlet UILabel *labelSubheadlineLeft;
@property (nonatomic, strong) IBOutlet UILabel *labelBodyLeft;
@property (nonatomic, strong) IBOutlet UILabel *labelFootnoteLeft;
@property (nonatomic, strong) IBOutlet UILabel *labelCaption1Left;
@property (nonatomic, strong) IBOutlet UILabel *labelCaption2Left;
@property (nonatomic, strong) IBOutlet UILabel *labelHeadlineRight;
@property (nonatomic, strong) IBOutlet UILabel *labelSubheadlineRight;
@property (nonatomic, strong) IBOutlet UILabel *labelBodyRight;
@property (nonatomic, strong) IBOutlet UILabel *labelFootnoteRight;
@property (nonatomic, strong) IBOutlet UILabel *labelCaption1Right;
@property (nonatomic, strong) IBOutlet UILabel *labelCaption2Right;
@property (nonatomic, strong) IBOutlet UILabel *labelPreferredContentSizeCategory;
@property (nonatomic, strong) IBOutlet UILabel *labelFontName;
@property (nonatomic, strong) NSString *preferredContentSizeCategory;
- (void)setup;
- (void)teardown;
- (void)currentFontDidChange:(NSNotification *)notification;
- (IBAction)buttonActionLeft:(id)sender;
- (IBAction)buttonActionRight:(id)sender;
- (void)preferredContentSizeCategoryDidChange:(NSNotification *)notification;
- (void)refreshLeftLabels;
- (void)refreshRightLabelsWithFont:(NSString *)fontName;
@end

@implementation FontViewController

#pragma mark - // SETTERS AND GETTERS //

@synthesize currentFont = _currentFont;
@synthesize labelHeadlineLeft = _labelHeadlineLeft;
@synthesize labelSubheadlineLeft = _labelSubheadlineLeft;
@synthesize labelBodyLeft = _labelBodyLeft;
@synthesize labelFootnoteLeft = _labelFootnoteLeft;
@synthesize labelCaption1Left = _labelCaption1Left;
@synthesize labelCaption2Left = _labelCaption2Left;
@synthesize labelHeadlineRight = _labelHeadlineRight;
@synthesize labelSubheadlineRight = _labelSubheadlineRight;
@synthesize labelBodyRight = _labelBodyRight;
@synthesize labelFootnoteRight = _labelFootnoteRight;
@synthesize labelCaption1Right = _labelCaption1Right;
@synthesize labelCaption2Right = _labelCaption2Right;
@synthesize labelPreferredContentSizeCategory = _labelPreferredContentSizeCategory;
@synthesize labelFontName = _labelFontName;
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
    if ([AKSystemInfo iOSVersion] >= 7.0) [self setPreferredContentSizeCategory:[[UIApplication sharedApplication] preferredContentSizeCategory]];
    [self.labelPreferredContentSizeCategory setNumberOfLines:1];
    [self.labelPreferredContentSizeCategory setLineBreakMode:NSLineBreakByTruncatingHead];
    [self.labelPreferredContentSizeCategory setAdjustsFontSizeToFitWidth:YES];
    [self.labelFontName setNumberOfLines:1];
    [self.labelFontName setLineBreakMode:NSLineBreakByTruncatingHead];
    [self.labelFontName setAdjustsFontSizeToFitWidth:YES];
    [self setCurrentFont:[FontsManager currentFont]];
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
            [self refreshLeftLabels];
            [self refreshRightLabelsWithFont:self.currentFont];
            [self.labelPreferredContentSizeCategory setText:self.preferredContentSizeCategory];
        }
        else if ([keyPath isEqualToString:NSStringFromSelector(@selector(currentFont))])
        {
            [self refreshRightLabelsWithFont:self.currentFont];
            [self.labelFontName setText:self.currentFont];
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
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(currentFontDidChange:) name:NOTIFICATION_FONT_NAME_DID_CHANGE object:nil];
    [self addObserver:self forKeyPath:NSStringFromSelector(@selector(currentFont)) options:NSKeyValueObservingOptionOld context:NULL];
}

- (void)teardown
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if ([AKSystemInfo iOSVersion] >= 7.0)
    {
        [[NSNotificationCenter defaultCenter] removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:nil];
        [self removeObserver:self forKeyPath:NSStringFromSelector(@selector(preferredContentSizeCategory))];
    }
    [[NSNotificationCenter defaultCenter] removeObserver:self name:NOTIFICATION_FONT_NAME_DID_CHANGE object:nil];
    [self removeObserver:self forKeyPath:NSStringFromSelector(@selector(currentFont)) context:NULL];
}

- (void)currentFontDidChange:(NSNotification *)notification
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self setCurrentFont:[FontsManager currentFont]];
}

- (IBAction)buttonActionLeft:(id)sender
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [FontsManager switchToPreviousFont];
}

- (IBAction)buttonActionRight:(id)sender
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [FontsManager switchToNextFont];
}

- (void)preferredContentSizeCategoryDidChange:(NSNotification *)notification
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self setPreferredContentSizeCategory:[[UIApplication sharedApplication] preferredContentSizeCategory]];
}

- (void)refreshLeftLabels
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self.labelHeadlineLeft setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleHeadline]];
    [self.labelSubheadlineLeft setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline]];
    [self.labelBodyLeft setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
    [self.labelFootnoteLeft setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleFootnote]];
    [self.labelCaption1Left setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleCaption1]];
    [self.labelCaption2Left setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleCaption2]];
}

- (void)refreshRightLabelsWithFont:(NSString *)fontName
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if ([AKSystemInfo iOSVersion] < 7.0)
    {
        [self.labelHeadlineRight setFont:[UIFont fontWithName:fontName size:DEFAULT_FONT_SIZE_IOS_6]];
        [self.labelSubheadlineRight setFont:[UIFont fontWithName:fontName size:DEFAULT_FONT_SIZE_IOS_6]];
        [self.labelBodyRight setFont:[UIFont fontWithName:fontName size:DEFAULT_FONT_SIZE_IOS_6]];
        [self.labelFootnoteRight setFont:[UIFont fontWithName:fontName size:DEFAULT_FONT_SIZE_IOS_6]];
        [self.labelCaption1Right setFont:[UIFont fontWithName:fontName size:DEFAULT_FONT_SIZE_IOS_6]];
        [self.labelCaption2Right setFont:[UIFont fontWithName:fontName size:DEFAULT_FONT_SIZE_IOS_6]];
    }
    else
    {
        [self.labelHeadlineRight setFont:[UIFont preferredFontWithName:fontName textStyle:UIFontTextStyleHeadline]];
        [self.labelSubheadlineRight setFont:[UIFont preferredFontWithName:fontName textStyle:UIFontTextStyleSubheadline]];
        [self.labelBodyRight setFont:[UIFont preferredFontWithName:fontName textStyle:UIFontTextStyleBody]];
        [self.labelFootnoteRight setFont:[UIFont preferredFontWithName:fontName textStyle:UIFontTextStyleFootnote]];
        [self.labelCaption1Right setFont:[UIFont preferredFontWithName:fontName textStyle:UIFontTextStyleCaption1]];
        [self.labelCaption2Right setFont:[UIFont preferredFontWithName:fontName textStyle:UIFontTextStyleCaption2]];
    }
}

@end