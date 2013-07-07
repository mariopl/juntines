//
//  CMusicaViewController.m
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 14/03/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import "CMusicaViewController.h"
#import "WebCasaDosViewController.h"

@interface CMusicaViewController ()

@end

@implementation CMusicaViewController

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
    self.view.backgroundColor = [UIColor colorWithRed:253.0f/255.0f green:227.0f/255.0f blue:223.0f/255.0f alpha:1.0f];
    _titulo.textColor = [UIColor colorWithRed:175.0f/255.0f green:28.0f/255.0f blue:19.0f/255.0f alpha:1.0f];
    _descripcion.textColor = [UIColor colorWithRed:175.0f/255.0f green:28.0f/255.0f blue:19.0f/255.0f alpha:1.0f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSString *url1 = @"http://www.juntines.com/online/musica-online";
    NSURLRequest *request1 = [NSURLRequest requestWithURL:[NSURL URLWithString:url1]];
    
    if ([segue.identifier isEqualToString:@"musica"]) {
        [segue.destinationViewController setRequest:request1];
    }
}

@end
