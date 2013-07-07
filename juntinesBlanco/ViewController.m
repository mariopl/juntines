//
//  ViewController.m
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 09/01/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"
//#import "FondoInicio.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

//movimiento libélula
    NSArray *imageLibelula = [[NSArray alloc] initWithObjects:
                           [UIImage imageNamed:@"libelula1.png"],
                           [UIImage imageNamed:@"libelula2.png"],
                              [UIImage imageNamed:@"libelula1.png"],
                              [UIImage imageNamed:@"libelula2.png"],
                              [UIImage imageNamed:@"libelula1.png"],
                              [UIImage imageNamed:@"libelula2.png"],
                              [UIImage imageNamed:@"libelula1.png"],
                              [UIImage imageNamed:@"libelula2.png"],
                           [UIImage imageNamed:@"libelula3.png"],
                           nil];
    
    _libelula.animationImages = [NSArray arrayWithArray:imageLibelula];
    _libelula.animationDuration = 2;
    _libelula.animationRepeatCount = 10;
    [_libelula startAnimating];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:8];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDelay:10];
    
    _libelula.alpha = 1.0;
    
    CGRect _libelulaFrame = _libelula.frame;
    _libelulaFrame.origin.x = 160;
    _libelulaFrame.origin.y = -200;
    _libelula.frame = _libelulaFrame;
    
    [UIView commitAnimations];

//PajaritoDos llegando
    NSArray *imagePajaritoDos = [[NSArray alloc] initWithObjects:
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro2.png"],
            
                              nil];
    
    _pajaritoDos.animationImages = [NSArray arrayWithArray:imagePajaritoDos];
    _pajaritoDos.animationDuration = 15;
    _pajaritoDos.animationRepeatCount = 1;
    [_pajaritoDos startAnimating];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:10];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDelay:5];
    
    _pajaritoDos.alpha = 1.0;
    
    CGRect _pajaritoDosFrame = _pajaritoDos.frame;
    _pajaritoDosFrame.origin.x = 400;
    _pajaritoDosFrame.origin.y = 636;
    _pajaritoDos.frame = _pajaritoDosFrame;
    
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSString *url1 = @"https://twitter.com/juntinesweb";
    NSString *url2 = @"http://www.facebook.com/pages/Juntines/122686981134620";
    
    NSURLRequest *request1 = [NSURLRequest requestWithURL:[NSURL URLWithString:url1]];
    NSURLRequest *request2 = [NSURLRequest requestWithURL:[NSURL URLWithString:url2]];
    
    if ([segue.identifier isEqualToString:@"twitter"]) {
        [segue.destinationViewController setRequest:request1];
    }
    if ([segue.identifier isEqualToString:@"facebook"]) {
        [segue.destinationViewController setRequest:request2];
    }
    
}

-(IBAction)pajaroVuela:(id)sender{
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:5];
    _pajarito.alpha = 1.0;
    
    
    CGRect _pajaritoFrame = _pajarito.frame;
    _pajaritoFrame.origin.x = 1024;
    _pajaritoFrame.origin.y = 200;
    _pajarito.frame = _pajaritoFrame;
    [UIView commitAnimations];
    
    NSArray *imagePajarito = [[NSArray alloc] initWithObjects:
                          [UIImage imageNamed:@"pajaro1.png"],
                          [UIImage imageNamed:@"pajaro2.png"],
                          [UIImage imageNamed:@"pajaro3.png"],
                          [UIImage imageNamed:@"pajaro4.png"],
                          [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                     
                          nil];
    
    _pajarito.animationImages = [NSArray arrayWithArray:imagePajarito];
    _pajarito.animationDuration = 5;
    _pajarito.animationRepeatCount = 1;
    [_pajarito startAnimating];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:5];
    _pajaritoDos.alpha = 1.0;
    
    
    CGRect _pajaritoDosFrame = _pajaritoDos.frame;
    _pajaritoDosFrame.origin.x = 2024;
    _pajaritoDosFrame.origin.y = 200;
    _pajaritoDos.frame = _pajaritoDosFrame;
    [UIView commitAnimations];
    
    NSArray *imagePajaritoDos = [[NSArray alloc] initWithObjects:
                              [UIImage imageNamed:@"pajaro1.png"],
                              [UIImage imageNamed:@"pajaro2.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              [UIImage imageNamed:@"pajaro3.png"],
                              [UIImage imageNamed:@"pajaro4.png"],
                              [UIImage imageNamed:@"pajaro5.png"],
                              
                              nil];
    
    _pajaritoDos.animationImages = [NSArray arrayWithArray:imagePajaritoDos];
    _pajaritoDos.animationDuration = 5;
    _pajaritoDos.animationRepeatCount = 1;
    [_pajaritoDos startAnimating];
    
//pajaritoTres
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:5];
    _pajaritoTres.alpha = 1.0;
    
    
    CGRect _pajaritoTresFrame = _pajaritoTres.frame;
    _pajaritoTresFrame.origin.x = 1050;
    _pajaritoTresFrame.origin.y = 200;
    _pajaritoTres.frame = _pajaritoTresFrame;
    [UIView commitAnimations];
    
    NSArray *imagePajaritoTres = [[NSArray alloc] initWithObjects:
                                 [UIImage imageNamed:@"pajaro3.png"],
                                 [UIImage imageNamed:@"pajaro4.png"],
                                 [UIImage imageNamed:@"pajaro5.png"],
                                 
                                 nil];
    
    _pajaritoTres.animationImages = [NSArray arrayWithArray:imagePajaritoTres];
    _pajaritoTres.animationDuration = 0.5;
    [_pajaritoTres startAnimating];

    
}

@end
