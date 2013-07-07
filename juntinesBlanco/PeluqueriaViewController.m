//
//  PeluqueriaViewController.m
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 13/03/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import "PeluqueriaViewController.h"
#import "WebCalleDosViewController.h"

@interface PeluqueriaViewController ()

@end

@implementation PeluqueriaViewController

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
    self.view.backgroundColor = [UIColor colorWithRed:227.0f/255.0f green:248.0f/255.0f blue:197.0f/255.0f alpha:1.0f];
    _titulo.textColor = [UIColor colorWithRed:78.0f/255.0f green:130.0f/255.0f blue:44.0f/255.0f alpha:1.0f];
    _descripcion.textColor = [UIColor colorWithRed:78.0f/255.0f green:130.0f/255.0f blue:44.0f/255.0f alpha:1.0f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSString *url1 = @"http://www.juntines.com/calle/peluquerias";
    NSURLRequest *request1 = [NSURLRequest requestWithURL:[NSURL URLWithString:url1]];
    
    if ([segue.identifier isEqualToString:@"peluquerias"]) {
        [segue.destinationViewController setRequest:request1];
    }
}

@end
