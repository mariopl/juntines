//
//  OnlineViewController.m
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 07/02/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import "OnlineViewController.h"

@interface OnlineViewController ()

@end

@implementation OnlineViewController

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
//Animación monoLapiz
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:25
     ];
    [UIView setAnimationRepeatCount:99];
        
    _monoLapiz.alpha = 1.0;
        
    CGRect _monoLapizFrame = _monoLapiz.frame;
    _monoLapizFrame.origin.x = 2000;
        _monoLapiz.frame = _monoLapizFrame;
        
    [UIView commitAnimations];
    
    NSMutableArray *imageMonoLapiz = [[NSMutableArray alloc] initWithCapacity:3];
    int n;
    for (n=1; n<=3; n++) {
        [imageMonoLapiz addObject:[UIImage imageNamed:[NSString stringWithFormat:@"monoLapiz%d.png", n]]];
        _monoLapiz.animationImages = [NSArray arrayWithArray:imageMonoLapiz];
        _monoLapiz.animationDuration = 1;
        _monoLapiz.animationRepeatCount = 99;
        [_monoLapiz startAnimating];

//Animación ovni
    NSArray *imageOvni = [[NSArray alloc] initWithObjects:
                              [UIImage imageNamed:@"ovni1.png"],
                              [UIImage imageNamed:@"ovni2.png"],
                              [UIImage imageNamed:@"ovni3.png"],
                              [UIImage imageNamed:@"ovni3.png"],
                              [UIImage imageNamed:@"ovni3.png"],
                              [UIImage imageNamed:@"ovni3.png"],
                              [UIImage imageNamed:@"ovni2.png"],
                              [UIImage imageNamed:@"ovni1.png"],
                              [UIImage imageNamed:@"ovni1.png"],
                              nil];
        
        _ovni.animationImages = [NSArray arrayWithArray:imageOvni];
        _ovni.animationDuration = 10;
        _ovni.animationRepeatCount = 99;
        [_ovni startAnimating];
        
//Animación neneEspacio
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:20];
    [UIView setAnimationRepeatAutoreverses:YES];//20
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatCount:99];
        
        _neneEspacio.alpha = 1.0;
        
        CGRect _neneEspacioFrame = _neneEspacio.frame;
        _neneEspacioFrame.origin.x = 512;
        _neneEspacioFrame.origin.y = 130;
        _neneEspacio.frame = _neneEspacioFrame;
        
        [UIView commitAnimations];
        
        
       
    NSMutableArray *imageNeneEspacio = [[NSMutableArray alloc] initWithCapacity:3];
    int j;
    for (j=1; j<=3; j++) {
        [imageNeneEspacio addObject:[UIImage imageNamed:[NSString stringWithFormat:@"neneEspacio%d.png", j]]];
        _neneEspacio.animationImages = [NSArray arrayWithArray:imageNeneEspacio];
        _neneEspacio.animationDuration = 3;
        _neneEspacio.animationRepeatCount = 99;
        [_neneEspacio startAnimating];
    }
    
//Animación marcianoIdiomas
    NSMutableArray *imageMarcianoIdiomas = [[NSMutableArray alloc] initWithCapacity:3];
    int i;
    for (i=1; i<=3; i++) {
        [imageMarcianoIdiomas addObject:[UIImage imageNamed:[NSString stringWithFormat:@"marcianoIdiomas%d.png", i]]];
        _marcianoIdiomas.animationImages = [NSArray arrayWithArray:imageMarcianoIdiomas];
        _marcianoIdiomas.animationDuration = 3;
        _marcianoIdiomas.animationRepeatCount = 99;
        [_marcianoIdiomas  startAnimating];
    }
    
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:8.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:999];
    
    [_marcianoIdiomas setAlpha:1.0];
    [_marcianoIdiomas setTransform:CGAffineTransformMakeScale(1.5, 1.5)];
    
    [UIView commitAnimations];
    
//Animación tv
    NSMutableArray *imageArrayTv = [[NSMutableArray alloc] initWithCapacity:4];
    int m;
    for (m=1; m<=4; m++) {
        [imageArrayTv addObject:[UIImage imageNamed:[NSString stringWithFormat:@"tv%d.png", m]]];
        _tv.animationImages = [NSArray arrayWithArray:imageArrayTv];
        _tv.animationDuration = 2;
        _tv.animationRepeatCount = 999;
        [_tv   startAnimating];
    }}
    
//lucecitas flotando
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:8.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:999];
    [_lucecitas setAlpha:1.0];
    [_lucecitas setTransform:CGAffineTransformMakeScale(1.5, 1.5)];
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:30];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationDelay:10];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatCount:999];
    CGRect _lucecitasFrame = _lucecitas.frame;
    _lucecitasFrame.origin.x = 312;
    _lucecitas.frame = _lucecitasFrame;
    [UIView commitAnimations];
    
    NSArray *imageLucecitas = [[NSArray alloc] initWithObjects:
                          [UIImage imageNamed:@"lucecitas1.png"],
                          [UIImage imageNamed:@"lucecitas2.png"],
                          [UIImage imageNamed:@"lucecitas3.png"],
                          [UIImage imageNamed:@"lucecitas4.png"],
                          nil];
    
    _lucecitas.animationImages = [NSArray arrayWithArray:imageLucecitas];
    _lucecitas.animationDuration = 20;
    _lucecitas.animationRepeatCount = 99;
    [_lucecitas startAnimating];
    
//Animación planeta naranja
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:50];
    [UIView setAnimationRepeatAutoreverses:YES];//20
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatCount:99];
    
    _naranja.alpha = 1.0;
    
    CGRect _naranjaFrame = _naranja.frame;
    _naranjaFrame.origin.x = 150;
    _naranja.frame = _naranjaFrame;
    
    [UIView commitAnimations];
    
    NSMutableArray *imageNaranja = [[NSMutableArray alloc] initWithCapacity:2];
    int p;
    for (p=1; p<=2; p++) {
        [imageNaranja addObject:[UIImage imageNamed:[NSString stringWithFormat:@"naranja%d.png", p]]];
        _naranja.animationImages = [NSArray arrayWithArray:imageNaranja];
        _naranja.animationDuration = 8;
        [_naranja startAnimating];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)trasladar:(id)sender{
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:5];
    _marcianoSopla.alpha = 1.0;
    
    
    CGRect _imageViewFrame = _marcianoSopla.frame;
    _imageViewFrame.origin.x =25;
    _imageViewFrame.origin.y = 400;
    _marcianoSopla.frame = _imageViewFrame;
    [UIView commitAnimations];
    
    NSMutableArray *imageArrayCacerola = [[NSMutableArray alloc] initWithCapacity:6];
    int i;
    for (i=1; i<=3; i++) {
        [imageArrayCacerola addObject:[UIImage imageNamed:[NSString stringWithFormat:@"marcianoSopla%d.png", i]]];
        _marcianoSopla.animationImages = [NSArray arrayWithArray:imageArrayCacerola];
        _marcianoSopla.animationDuration = 0.5;
        _marcianoSopla.animationRepeatCount = 4;
        [_marcianoSopla   startAnimating];
    }
}

- (IBAction)soplar2:(id)sender{
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:5];
    _marcianoSopla.alpha = 1.0;
    
    
    CGRect _imageViewFrame = _marcianoSopla.frame;
    _imageViewFrame.origin.x = 645;
    _imageViewFrame.origin.y = 560;
    _marcianoSopla.frame = _imageViewFrame;
    [UIView commitAnimations];
    
    NSMutableArray *imageArrayCacerola = [[NSMutableArray alloc] initWithCapacity:6];
    int i;
    for (i=1; i<=3; i++) {
        [imageArrayCacerola addObject:[UIImage imageNamed:[NSString stringWithFormat:@"marcianoSopla1%d.png", i]]];
        _marcianoSopla.animationImages = [NSArray arrayWithArray:imageArrayCacerola];
        _marcianoSopla.animationDuration = 0.5;
        _marcianoSopla.animationRepeatCount = 7;
        [_marcianoSopla   startAnimating];
    }
}


-(IBAction)verOvni:(id)sender{
    
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(dilatarFin:)];
    
    [_ovni setAlpha:1.0];
    [_ovni setTransform:CGAffineTransformMakeScale(0.5, .5)];
    [UIView commitAnimations];    
}

-(IBAction)dilatarFin:(id)sender{
    [UIView beginAnimations:@"Dilatation Fin" context:nil];
    [UIView setAnimationDuration:0.5];
    [_ovni setAlpha:1.0];
    [_ovni setTransform:CGAffineTransformIdentity];
    [UIView commitAnimations];
    
}

-(IBAction)verMono:(id)sender{
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(monoFin:)];
    
    [_monoLapiz setAlpha:1.0];
    [_monoLapiz setTransform:CGAffineTransformMakeScale(2, 2)];
    [UIView commitAnimations];
    
}

-(IBAction)monoFin:(id)sender{
    
    [UIView beginAnimations:@"Dilatation Fin" context:nil];
    [UIView setAnimationDuration:0.5];
    [_monoLapiz setAlpha:1.0];
    [_monoLapiz setTransform:CGAffineTransformIdentity];
    [UIView commitAnimations];
}

-(IBAction)tocarNene:(id)sender{
    
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(neneFin:)];
    
    [_neneEspacio setAlpha:1.0];
    [_neneEspacio setTransform:CGAffineTransformMakeScale(2, 2)];
    [UIView commitAnimations];
    
}

-(IBAction)neneFin:(id)sender{
    [UIView beginAnimations:@"Dilatation Fin" context:nil];
    [UIView setAnimationDuration:0.5];
    [_neneEspacio setAlpha:1.0];
    [_neneEspacio setTransform:CGAffineTransformIdentity];
    [UIView commitAnimations];
}

@end
