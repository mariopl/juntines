//
//  CasaViewController.m
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 08/02/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import "CasaViewController.h"

@interface CasaViewController ()

@end

@implementation CasaViewController

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
    
//PlantaReloj
    NSMutableArray *imagePlantaReloj = [[NSMutableArray alloc] initWithCapacity:3];
    int i;
    for (i=1; i<=3; i++) {
        [imagePlantaReloj addObject:[UIImage imageNamed:[NSString stringWithFormat:@"plantaReloj%d.png", i]]];
        _plantaReloj.animationImages = [NSArray arrayWithArray:imagePlantaReloj];
        _plantaReloj.animationDuration = 10;
        _plantaReloj.animationRepeatCount = 99;
        [_plantaReloj startAnimating];
        
    NSMutableArray *imageMueble = [[NSMutableArray alloc] initWithCapacity:4];
    int j;
    for (j=1; j<=4; j++) {
            [imageMueble addObject:[UIImage imageNamed:[NSString stringWithFormat:@"mueble%d.png", j]]];
            _mueble.animationImages = [NSArray arrayWithArray:imageMueble];
            _mueble.animationDuration = 2;
            _mueble.animationRepeatCount = 1;
            [_mueble startAnimating];
    }
}
//Animación cacerola
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:20];
    [UIView setAnimationRepeatAutoreverses:YES];//20
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatCount:99];

    _cacerola.alpha = 1.0;

    CGRect _cacerolaFrame = _cacerola.frame;
    _cacerolaFrame.origin.x = 512;
    _cacerola.frame = _cacerolaFrame;

    [UIView commitAnimations];

    NSMutableArray *imageArrayCacerola = [[NSMutableArray alloc] initWithCapacity:6];
    int c;
    for (c=1; c<6; c++) {
    [imageArrayCacerola addObject:[UIImage imageNamed:[NSString stringWithFormat:@"Cacerola%d.png", c]]];
    _cacerola.animationImages = [NSArray arrayWithArray:imageArrayCacerola];
    _cacerola.animationDuration = 2;
    _cacerola.animationRepeatCount = 999;
    [_cacerola  startAnimating];
    }

_luzFoco.hidden = YES;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)abrirHorno:(id)sender{
    
    NSArray *imageHorno = [[NSArray alloc] initWithObjects:
                           [UIImage imageNamed:@"horno2.png"],
                           [UIImage imageNamed:@"horno3.png"],
                           [UIImage imageNamed:@"horno3.png"],
                           [UIImage imageNamed:@"horno3.png"],
                           [UIImage imageNamed:@"horno3.png"],
                           [UIImage imageNamed:@"horno2.png"],
                           nil];
     
        _horno.animationImages = [NSArray arrayWithArray:imageHorno];
        _horno.animationDuration = 4;
        _horno.animationRepeatCount = 1;
        [_horno startAnimating];
}

-(IBAction)abrirMueble:(id)sender{
    
    NSArray *imageMueble = [[NSArray alloc] initWithObjects:
                           [UIImage imageNamed:@"mueble2.png"],
                           [UIImage imageNamed:@"mueble3.png"],
                           [UIImage imageNamed:@"mueble4.png"],
                           [UIImage imageNamed:@"mueble4.png"],
                           [UIImage imageNamed:@"mueble4.png"],
                           [UIImage imageNamed:@"mueble3.png"],
                           [UIImage imageNamed:@"mueble2.png"],
                           [UIImage imageNamed:@"mueble1.png"],
                                            nil];
    
    _mueble.animationImages = [NSArray arrayWithArray:imageMueble];
    _mueble.animationDuration = 4;
    _mueble.animationRepeatCount = 1;
    [_mueble startAnimating];
}


-(IBAction)cacerola:(id)sender{
    
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(dilatarFin:)];
    
    [_cacerola setAlpha:1.0];
    [_cacerola setTransform:CGAffineTransformMakeScale(2, 2)];
    [UIView commitAnimations];
    
}

-(IBAction)dilatarFin:(id)sender{
    [UIView beginAnimations:@"Dilatation Fin" context:nil];
    [UIView setAnimationDuration:0.5];
    [_cacerola setAlpha:1.0];
    [_cacerola setTransform:CGAffineTransformIdentity];
    [UIView commitAnimations];
}

- (IBAction)interruptor:(UIButton *)sender {
    
    sender.selected = !sender.isSelected;
  
}

- (IBAction)abrirPuerta:(id)sender {
    NSArray *imagePuerta = [[NSArray alloc] initWithObjects:
                            [UIImage imageNamed:@"door2.png"],
                            [UIImage imageNamed:@"door3.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door4.png"],
                            [UIImage imageNamed:@"door3.png"],
                            [UIImage imageNamed:@"door2.png"],
                            [UIImage imageNamed:@"door1.png"],
                            nil];
    
    _door.animationImages = [NSArray arrayWithArray:imagePuerta];
    _door.animationDuration = 8;
    _door.animationRepeatCount = 1;
    [_door startAnimating];
    
    NSArray *imageFlores = [[NSArray alloc] initWithObjects:
                            [UIImage imageNamed:@"flores1"],
                            [UIImage imageNamed:@"flores2"],
                            [UIImage imageNamed:@"flores3"],
                            nil];
    _flores.animationImages = [NSArray arrayWithArray:imageFlores];
    _flores.animationDuration = 8;
    _flores.animationRepeatCount = 1;
    [_flores startAnimating];
}

- (IBAction)encender:(UIButton *)sender {
      sender.selected = !sender.isSelected;
    if (_luzFoco.hidden == YES) {
        _luzFoco.hidden = NO;
    } else {
        _luzFoco.hidden = YES;
    }
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
