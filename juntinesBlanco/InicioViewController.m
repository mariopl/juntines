//
//  InicioViewController.m
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 22/01/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import "InicioViewController.h"
#import "InicioWebViewController.h"
#import "WebViewController.h"
//#import "FondoInicio.h"

@interface InicioViewController ()

@end

@implementation InicioViewController

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
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:999];
    
    [_navegando setAlpha:1.0];
    [_navegando setTransform:CGAffineTransformMakeScale(1.2, 1.2)];
    [_jugando setAlpha:1.0];
    [_jugando setTransform:CGAffineTransformMakeScale(1.2, 1.2)];
    
    [UIView commitAnimations];
    NSArray *imageNinos = [[NSArray alloc] initWithObjects:
                           [UIImage imageNamed:@"chicaChico1.png"],
                           [UIImage imageNamed:@"chicaChico2.png"],
                           nil];
    _chicochica.animationImages = [NSArray arrayWithArray:imageNinos];
    _chicochica.animationDuration = 1;
    _chicochica.animationRepeatCount = 999;
    [_chicochica startAnimating];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //Add gradient background
    CAGradientLayer *bgLayer = [FondoInicio blueGradient];
	bgLayer.frame = self.view.bounds;
    [self.view.layer insertSublayer:bgLayer atIndex:0];
   
}*/

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSString *url1 = @"https://www.google.es";
    NSString *url2 = @"https://twitter.com/juntinesweb";
    NSString *url3 = @"http://www.facebook.com/pages/Juntines/122686981134620";

    
    
    NSURLRequest *request1 = [NSURLRequest requestWithURL:[NSURL URLWithString:url1]];
    NSURLRequest *request2 = [NSURLRequest requestWithURL:[NSURL URLWithString:url2]];
    NSURLRequest *request3 = [NSURLRequest requestWithURL:[NSURL URLWithString:url3]];

   
    
    if ([segue.identifier isEqualToString:@"adulto"]) {
        [segue.destinationViewController setRequest:request1];
    }
    if ([segue.identifier isEqualToString:@"twitter"]) {
        [segue.destinationViewController setRequest:request2];
    }
    if ([segue.identifier isEqualToString:@"facebook"]) {
        [segue.destinationViewController setRequest:request3];
    }
}

- (IBAction)ninos:(id)sender{
    
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(dilatarFin:)];
    
    [_chicochica setAlpha:1.0];
    [_chicochica setTransform:CGAffineTransformMakeScale(7, 7)];
    [UIView commitAnimations];
    
}

-(IBAction)dilatarFin:(id)sender{
    [UIView beginAnimations:@"Dilatation Fin" context:nil];
    [UIView setAnimationDuration:0.5];
    [_chicochica setAlpha:1.0];
    [_chicochica setTransform:CGAffineTransformIdentity];
    [UIView commitAnimations];
}

-(IBAction)accesoWeb:(id)sender{
    
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(dilatar2Fin:)];
    
    [_web setAlpha:1.0];
    [_web setTransform:CGAffineTransformMakeScale(7, 7)];
    [UIView commitAnimations];
    
}

-(IBAction)dilatar2Fin:(id)sender{
    [UIView beginAnimations:@"Dilatation Fin" context:nil];
    [UIView setAnimationDuration:0.5];
    [_web setAlpha:1.0];
    [_web setTransform:CGAffineTransformIdentity];
    [UIView commitAnimations];
}

-(IBAction)verWeb:(id)sender{
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:0.5];
    _juntines.alpha = 1.0;
    CGRect _juntinesFrame = _juntines.frame;
    _juntinesFrame.origin.x = 1200;
    _juntines.frame = _juntinesFrame;
    [UIView commitAnimations];
 
}
@end
