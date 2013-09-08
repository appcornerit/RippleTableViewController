//
//  RTCMasterViewController.m
//  RippleTableViewControllerExample
//
//  Created by Denis Berton
//  Copyright (c) 2013 clooket.com. All rights reserved.
//

#import "RTCTableViewController.h"

@interface RTCTableViewController () {
    NSMutableArray *_objects;
}
@end

@implementation RTCTableViewController

- (void)viewDidLoad
{
    self.rippleImageName = @"background.jpg";  //REQUIRED BEFORE CALL [super viewDidLoad]
    [super viewDidLoad];

    //Test purpose
    [self randomValues];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];    
}

#pragma mark - random datasource's values
- (void)randomValues
{
    _objects = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < 50; ++i) {
        [_objects addObject:[NSNumber numberWithInteger:i]];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSNumber *number = _objects[indexPath.row];
    cell.textLabel.text = [number stringValue];
    cell.textLabel.textColor = [UIColor whiteColor];
    return cell;
}

@end
