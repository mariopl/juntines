//
//  WebOnlineDosViewController.m
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 14/03/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import "WebOnlineDosViewController.h"

@interface WebOnlineDosViewController ()

@end

@implementation WebOnlineDosViewController

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
    [self.webview loadRequest:self.request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
