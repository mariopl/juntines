//
//  InicioWebViewController.m
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 10/01/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import "InicioWebViewController.h"

@interface InicioWebViewController ()

@end

@implementation InicioWebViewController

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
    [self.webview loadRequest:self.request];
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)irInicio:(id)sender{
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(dilatarFin:)];
    
    [_icono90 setAlpha:1.0];
    [_icono90 setTransform:CGAffineTransformMakeScale(7, 7)];
    [UIView commitAnimations];
    
}

-(IBAction)dilatarFin:(id)sender{
    [UIView beginAnimations:@"Dilatation Fin" context:nil];
    [UIView setAnimationDuration:0.5];
    [_icono90 setAlpha:1.0];
    [_icono90 setTransform:CGAffineTransformIdentity];
    [UIView commitAnimations];
}

@end
