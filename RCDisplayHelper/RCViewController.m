//
//  RCViewController.m
//  RCDisplayHelper
//
//  Created by Looping on 14-4-15.
//  Copyright (c) 2014年 RidgeCorn. All rights reserved.
//

#import "RCViewController.h"
#import "RCView.h"
#import "RCDisplayHelper.h"

@interface RCViewController ()

@end

@implementation RCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.view addSubview:({
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        [label setBackgroundColor:[UIColor redColor]];
        
        [label setTextAlignment:NSTextAlignmentCenter];

        RCView *view = [[RCView alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
        
        [view setLabel:label];
        
        [RCDisplayHelper displayData:@{@"note": @"haha"} inView:view withMapping:@{@"label.text": @"note"}];

        view;
    })];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
