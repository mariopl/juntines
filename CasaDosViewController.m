//
//  CasaDosViewController.m
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 01/03/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import "CasaDosViewController.h"

@interface CasaDosViewController ()

@end

@implementation CasaDosViewController

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
//marcianos
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:2];
    [UIView setAnimationRepeatCount:1];
    [UIView  setAnimationDelay:2];
    
    _marcianos.alpha = 1.0;
    
    CGRect _marcianosFrame = _marcianos.frame;
    _marcianosFrame.origin.x = 512;
    _marcianos.frame = _marcianosFrame;
    
    [UIView commitAnimations];

    NSArray *imageMarcianos = [[NSArray alloc] initWithObjects:
                          [UIImage imageNamed:@"marcianos1.png"],
                          [UIImage imageNamed:@"marcianos1.png"],
                          [UIImage imageNamed:@"marcianos1.png"],
                          [UIImage imageNamed:@"marcianos1.png"],
                          [UIImage imageNamed:@"marcianos2.png"],
                          [UIImage imageNamed:@"marcianos3.png"],
                          [UIImage imageNamed:@"marcianos4.png"],
                          nil];
    
    _marcianos.animationImages = [NSArray arrayWithArray:imageMarcianos];
    _marcianos.animationDuration = 4;
    _marcianos.animationRepeatCount = 1;
    [_marcianos startAnimating];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)arrancarPoster:(id)sender{
    NSArray *imagePoster = [[NSArray alloc] initWithObjects:
                            [UIImage imageNamed:@"poster2.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster3.png"],
                            [UIImage imageNamed:@"poster2.png"],
                            [UIImage imageNamed:@"poster1.png"],
                            nil];
    
    _poster.animationImages = [NSArray arrayWithArray:imagePoster];
    _poster.animationDuration = 3;
    _poster.animationRepeatCount = 1;
    [_poster startAnimating];
}

- (IBAction)hacerInventos:(UIButton *)sender {
        sender.selected = !sender.isSelected;

    
}


- (IBAction)abrirVentana:(id)sender {
    NSArray *imageVentana = [[NSArray alloc] initWithObjects:
                            [UIImage imageNamed:@"ventana2.png"],
                            [UIImage imageNamed:@"ventana3.png"],
                            [UIImage imageNamed:@"ventana3.png"],
                            [UIImage imageNamed:@"ventana3.png"],
                            [UIImage imageNamed:@"ventana3.png"],
                            [UIImage imageNamed:@"ventana3.png"],
                            [UIImage imageNamed:@"ventana3.png"],
                            [UIImage imageNamed:@"ventana3.png"],
                            [UIImage imageNamed:@"ventana3.png"],
                            [UIImage imageNamed:@"ventana3.png"],
                            [UIImage imageNamed:@"ventana3.png"],
                            [UIImage imageNamed:@"ventana2.png"],
                            [UIImage imageNamed:@"ventana2.png"],
                            [UIImage imageNamed:@"ventana2.png"],
                            [UIImage imageNamed:@"ventana1.png"],
                            nil];
    
    _ventana.animationImages = [NSArray arrayWithArray:imageVentana];
    _ventana.animationDuration = 8;
    _ventana.animationRepeatCount = 1;
    [_ventana startAnimating];
}

- (IBAction)volarAvion:(id)sender {
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    _avionPapel.alpha = 1.0;
    
    
    CGRect _imageViewFrame = _avionPapel.frame;
    _imageViewFrame.origin.x =-200;
    _imageViewFrame.origin.y = 400;
    _avionPapel.frame = _imageViewFrame;
    [UIView commitAnimations];
}

- (IBAction)verLetrasYNumeros:(id)sender {
    NSArray *imageLetras = [[NSArray alloc] initWithObjects:
                            [UIImage imageNamed:@"letras3.png"],
                            [UIImage imageNamed:@"letras4.png"],
                            [UIImage imageNamed:@"letras5.png"],
                            [UIImage imageNamed:@"letras6.png"],
                            [UIImage imageNamed:@"letras7.png"],
                            [UIImage imageNamed:@"letras8.png"],
                            [UIImage imageNamed:@"letras9.png"],
                            [UIImage imageNamed:@"letras10.png"],
                            [UIImage imageNamed:@"letras10.png"],
                            [UIImage imageNamed:@"letras10.png"],
                            [UIImage imageNamed:@"letras10.png"],
                            [UIImage imageNamed:@"letras10.png"],
                            [UIImage imageNamed:@"letras10.png"],
                            
                            nil];
    
    _letras.animationImages = [NSArray arrayWithArray:imageLetras];
    _letras.animationDuration = 6;
    _letras.animationRepeatCount = 1;
    [_letras startAnimating];
    
    NSArray *imageNum = [[NSArray alloc] initWithObjects:
                            [UIImage imageNamed:@"num3.png"],
                            [UIImage imageNamed:@"num4.png"],
                            [UIImage imageNamed:@"num5.png"],
                            [UIImage imageNamed:@"num6.png"],
                            [UIImage imageNamed:@"num7.png"],
                            [UIImage imageNamed:@"num8.png"],
                            [UIImage imageNamed:@"num9.png"],
                            [UIImage imageNamed:@"num10.png"],
                            [UIImage imageNamed:@"num11.png"],
                            [UIImage imageNamed:@"num11.png"],
                            [UIImage imageNamed:@"num11.png"],
                            [UIImage imageNamed:@"num11.png"],
                            [UIImage imageNamed:@"num11.png"],
                            [UIImage imageNamed:@"num11.png"],
                            nil];
    
    _numeros.animationImages = [NSArray arrayWithArray:imageNum];
    _numeros.animationDuration = 6;
    _numeros.animationRepeatCount = 1;
    [_numeros startAnimating];
}

- (IBAction)playSound:(id)sender{
    SystemSoundID soundID;
    NSString *buttonName=[sender currentTitle];
    NSString *soundFile=[[NSBundle mainBundle]
                         pathForResource:buttonName ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], & soundID);
    AudioServicesPlaySystemSound(soundID);
}

@end
