//
//  TableViewController.m
//  Fontbox
//
//  Created by Ken M. Haggerty on 10/14/14.
//  Copyright (c) 2014 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "TableViewController.h"
#import "AKDebugger.h"
#import "AKSystemInfo.h"

#pragma mark - // DEFINITIONS (Private) //

#define CELL_REUSE_IDENTIFIER @"FontNameCell"

@interface TableViewController ()
@property (nonatomic, strong) NSArray *fontNames;
- (void)setup;
- (void)teardown;
@end

@implementation TableViewController

#pragma mark - // SETTERS AND GETTERS //

@synthesize fontNames = _fontNames;

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

#pragma mark - // INITS AND LOADS //

- (id)initWithStyle:(UITableViewStyle)style
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    self = [super initWithStyle:style];
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
}

- (void)dealloc
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self teardown];
}

#pragma mark - // PUBLIC METHODS //

#pragma mark - // DELEGATED METHODS (UITableViewDataSource) //

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return self.fontNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_REUSE_IDENTIFIER forIndexPath:indexPath];
    [cell.textLabel setText:[self.fontNames objectAtIndex:indexPath.row]];
    return cell;
}

#pragma mark - // DELEGATED METHODS (UITableViewDelegate) //

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

- (void)setup
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self setClearsSelectionOnViewWillAppear:NO];
    [self.tableView setContentInset:UIEdgeInsetsMake([AKSystemInfo statusBarHeight], self.tableView.contentInset.left, self.tableView.contentInset.bottom, self.tableView.contentInset.right)];
    [self.tableView setScrollIndicatorInsets:UIEdgeInsetsMake([AKSystemInfo statusBarHeight], self.tableView.contentInset.left, self.tableView.contentInset.bottom, self.tableView.contentInset.right)];
}

- (void)teardown
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end