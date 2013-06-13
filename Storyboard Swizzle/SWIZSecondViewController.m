//
//  SWIZSecondViewController.m
//  Storyboard Swizzle
//
//  Created by Alex M on 4/17/13.
//  Copyright (c) 2013 Sabbatical Software. All rights reserved.
//

#import "SWIZSecondViewController.h"

@interface SWIZSecondViewController ()

@end

@implementation SWIZSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ((UIViewController *)segue.destinationViewController).hidesBottomBarWhenPushed = YES;
}

@end
