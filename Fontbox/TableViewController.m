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
#import "FontsManager.h"

#pragma mark - // DEFINITIONS (Private) //

#define CELL_REUSE_IDENTIFIER @"FontNameCell"

@interface TableViewController ()
@property (nonatomic, strong) NSString *currentFont;
- (void)setup;
- (void)teardown;
- (void)currentFontDidChange:(NSNotification *)notification;
@end

@implementation TableViewController

#pragma mark - // SETTERS AND GETTERS //

@synthesize currentFont = _currentFont;

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
    
    return [FontsManager fontNames].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_REUSE_IDENTIFIER forIndexPath:indexPath];
    [cell.textLabel setText:[[FontsManager fontNames] objectAtIndex:indexPath.row]];
    return cell;
}

#pragma mark - // DELEGATED METHODS (UITableViewDelegate) //

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return indexPath;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (indexPath.row < [FontsManager fontNames].count)
    {
        [FontsManager setCurrentFont:[[FontsManager fontNames] objectAtIndex:indexPath.row]];
        [[tableView cellForRowAtIndexPath:indexPath] setHighlighted:YES];
    }
}

- (NSIndexPath *)tableView:(UITableView *)tableView willDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return indexPath;
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [[tableView cellForRowAtIndexPath:indexPath] setHighlighted:NO];
}

#pragma mark - // OVERWRITTEN METHODS //

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if ([object isEqual:self])
    {
        if ([keyPath isEqualToString:NSStringFromSelector(@selector(currentFont))])
        {
            NSArray *fontNames = [FontsManager fontNames];
            if ([fontNames containsObject:self.currentFont])
            {
                NSIndexPath *indexPathOld = [NSIndexPath indexPathForRow:[fontNames indexOfObject:[change valueForKey:NSKeyValueChangeOldKey]] inSection:0];
                [self.tableView deselectRowAtIndexPath:indexPathOld animated:NO];
                indexPathOld = [self.tableView.delegate tableView:self.tableView willDeselectRowAtIndexPath:indexPathOld];
                [self.tableView.delegate tableView:self.tableView didDeselectRowAtIndexPath:indexPathOld];
                NSIndexPath *indexPathNew = [NSIndexPath indexPathForRow:[fontNames indexOfObject:self.currentFont] inSection:0];
                [self.tableView selectRowAtIndexPath:indexPathNew animated:NO scrollPosition:UITableViewScrollPositionNone];
                indexPathNew = [self.tableView.delegate tableView:self.tableView willSelectRowAtIndexPath:indexPathNew];
                [self.tableView.delegate tableView:self.tableView didSelectRowAtIndexPath:indexPathNew];
                [self.tableView scrollToRowAtIndexPath:indexPathNew atScrollPosition:UITableViewScrollPositionMiddle animated:YES];
            }
        }
    }
}

#pragma mark - // PRIVATE METHODS //

- (void)setup
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self setClearsSelectionOnViewWillAppear:NO];
    [self.tableView setContentInset:UIEdgeInsetsMake([AKSystemInfo statusBarHeight], self.tableView.contentInset.left, self.tableView.contentInset.bottom, self.tableView.contentInset.right)];
    [self.tableView setScrollIndicatorInsets:UIEdgeInsetsMake([AKSystemInfo statusBarHeight], self.tableView.contentInset.left, self.tableView.contentInset.bottom, self.tableView.contentInset.right)];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(currentFontDidChange:) name:NOTIFICATION_FONT_NAME_DID_CHANGE object:nil];
    [self addObserver:self forKeyPath:NSStringFromSelector(@selector(currentFont)) options:NSKeyValueObservingOptionOld context:NULL];
}

- (void)teardown
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:NOTIFICATION_FONT_NAME_DID_CHANGE object:nil];
    [self removeObserver:self forKeyPath:NSStringFromSelector(@selector(currentFont)) context:NULL];
}

- (void)currentFontDidChange:(NSNotification *)notification
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self setCurrentFont:[FontsManager currentFont]];
}

@end