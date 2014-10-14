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

#define DEFAULT_FONT_SIZE_FOR_RIGHT_LABELS 12.0

@interface ViewController ()
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
@property (nonatomic, strong) IBOutlet UILabel *labelFontSizeForRightLabels;
@property (nonatomic, strong) NSString *preferredContentSizeCategory;
@property (nonatomic) CGFloat fontSizeForRightLabels;
- (void)setup;
- (void)teardown;
- (IBAction)buttonActionDecrease:(id)sender;
- (IBAction)buttonActionIncrease:(id)sender;
- (void)preferredContentSizeCategoryDidChange:(NSNotification *)notification;
@end

@implementation ViewController

#pragma mark - // SETTERS AND GETTERS //

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
@synthesize labelFontSizeForRightLabels = _labelFontSizeForRightLabels;
@synthesize preferredContentSizeCategory = preferredContentSizeCategory;
@synthesize fontSizeForRightLabels = _fontSizeForRightLabels;

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
    [self setPreferredContentSizeCategory:[[UIApplication sharedApplication] preferredContentSizeCategory]];
    [self setFontSizeForRightLabels:DEFAULT_FONT_SIZE_FOR_RIGHT_LABELS];
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
            [self.labelHeadlineLeft setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleHeadline]];
            [self.labelSubheadlineLeft setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline]];
            [self.labelBodyLeft setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
            [self.labelFootnoteLeft setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleFootnote]];
            [self.labelCaption1Left setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleCaption1]];
            [self.labelCaption2Left setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleCaption2]];
            [self.labelPreferredContentSizeCategory setText:self.preferredContentSizeCategory];
        }
        else if ([keyPath isEqualToString:NSStringFromSelector(@selector(fontSizeForRightLabels))])
        {
            [self.labelHeadlineRight setFont:[UIFont systemFontOfSize:self.fontSizeForRightLabels]];
            [self.labelSubheadlineRight setFont:[UIFont systemFontOfSize:self.fontSizeForRightLabels]];
            [self.labelBodyRight setFont:[UIFont systemFontOfSize:self.fontSizeForRightLabels]];
            [self.labelFootnoteRight setFont:[UIFont systemFontOfSize:self.fontSizeForRightLabels]];
            [self.labelCaption1Right setFont:[UIFont systemFontOfSize:self.fontSizeForRightLabels]];
            [self.labelCaption2Right setFont:[UIFont systemFontOfSize:self.fontSizeForRightLabels]];
            [self.labelFontSizeForRightLabels setText:[NSString stringWithFormat:@"Right Labels: %f pts", self.fontSizeForRightLabels]];
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
    [self addObserver:self forKeyPath:NSStringFromSelector(@selector(fontSizeForRightLabels)) options:NSKeyValueObservingOptionOld context:NULL];
}

- (void)teardown
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if ([AKSystemInfo iOSVersion] >= 7.0)
    {
        [[NSNotificationCenter defaultCenter] removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:nil];
        [self removeObserver:self forKeyPath:NSStringFromSelector(@selector(preferredContentSizeCategory))];
    }
    [self removeObserver:self forKeyPath:NSStringFromSelector(@selector(fontSizeForRightLabels)) context:NULL];
}

- (IBAction)buttonActionDecrease:(id)sender
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self setFontSizeForRightLabels:--self.fontSizeForRightLabels];
}

- (IBAction)buttonActionIncrease:(id)sender
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self setFontSizeForRightLabels:++self.fontSizeForRightLabels];
}

- (void)preferredContentSizeCategoryDidChange:(NSNotification *)notification
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self setPreferredContentSizeCategory:[[UIApplication sharedApplication] preferredContentSizeCategory]];
}

@end