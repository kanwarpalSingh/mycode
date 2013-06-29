//
//  menuController.m
//  slidingViews
//
//  Created by ML on 28/06/13.
//  Copyright (c) 2013 ML. All rights reserved.
//

#import "menuController.h"

@interface menuController ()

@end

@implementation menuController

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
    sideViewController *sideView = [[sideViewController alloc]initWithNibName:@"sideViewController" bundle:nil];
    UINavigationController *navCon = [[UINavigationController alloc]initWithRootViewController:sideView];
    UIBarButtonItem *barBtn =[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(barBtnClicked:)];
    [navCon.navigationItem setRightBarButtonItem:barBtn];
    sliderViewController *slider = [[sliderViewController alloc]initWithNibName:@"sliderViewController" bundle:nil];
    //[self.view insertSubview:navCon.view atIndex:0];
    [self.view insertSubview:slider.view atIndex:0];
    [self.view insertSubview:navCon.view atIndex:1];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
