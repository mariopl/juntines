//
//  OnlineDosViewController.m
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 25/02/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import "OnlineDosViewController.h"

@interface OnlineDosViewController ()

@end

@implementation OnlineDosViewController

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
//canasto
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:2];
    [UIView setAnimationRepeatAutoreverses:YES];//20
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatCount:999];
    
    _canasto.alpha = 1.0;
    
    CGRect _canastoFrame = _canasto.frame;
    _canastoFrame.origin.y = 100;
    _canasto.frame = _canastoFrame;
    
    [UIView commitAnimations];
    
    NSMutableArray *imageCanasto = [[NSMutableArray alloc] initWithCapacity:3];
    int i;
    for (i=1; i<=3; i++) {
        [imageCanasto addObject:[UIImage imageNamed:[NSString stringWithFormat:@"canasto%d.png", i]]];
        _canasto.animationImages = [NSArray arrayWithArray:imageCanasto];
        _canasto.animationDuration = 6;
        _canasto.animationRepeatCount = 999;
        [_canasto  startAnimating];
    }
    
//camara
     [UIView beginAnimations:@"advancedAnimations" context:nil];
     [UIView setAnimationDuration:6];
     [UIView setAnimationRepeatCount:999];
     [UIView setAnimationRepeatAutoreverses:YES];
     _camara.transform = CGAffineTransformMakeRotation(M_PI/2);
     [UIView commitAnimations];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)hacerFoto:(id)sender{

    NSArray *imageCamara = [[NSArray alloc] initWithObjects:
                          [UIImage imageNamed:@"camara1"],
                          [UIImage imageNamed:@"camara1"],
                          [UIImage imageNamed:@"camara1"],
                          [UIImage imageNamed:@"camara1"],
                          [UIImage imageNamed:@"camara1"],
                          [UIImage imageNamed:@"camara1"],
                          [UIImage imageNamed:@"camara2"],
                          [UIImage imageNamed:@"camara3"],
                          [UIImage imageNamed:@"camara4"],
                          [UIImage imageNamed:@"camara5"],
                          [UIImage imageNamed:@"camara6"],
                          [UIImage imageNamed:@"camara7"],
                          [UIImage imageNamed:@"camara7"],
                          [UIImage imageNamed:@"camara7"],
                          [UIImage imageNamed:@"camara7"],
                          [UIImage imageNamed:@"camara7"],
                          [UIImage imageNamed:@"camara7"],
                          [UIImage imageNamed:@"camara7"],
                          [UIImage imageNamed:@"camara7"],
                          nil];
    
    _camara.animationImages = [NSArray arrayWithArray:imageCamara];
    _camara.animationDuration = 10;
    _camara.animationRepeatCount = 1;
    [_camara startAnimating];

    _FraseFoto.hidden = NO;
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:5];
    [UIView setAnimationDelay:5];
    _FraseFoto.alpha = 1.0;
    
    
    CGRect _FraseFotoFrame = _FraseFoto.frame;
    _FraseFotoFrame.origin.y = 800;
    _FraseFoto.frame = _FraseFotoFrame;

    [UIView commitAnimations];
    
   
}

-(IBAction)tocarOso:(id)sender{
    /*osito flotando
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:8.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:999];
    
    [_oso setAlpha:1.0];
    [_oso setTransform:CGAffineTransformMakeScale(1.5, 1.5)];
    la maquina se vuelve loca con este método*/
    NSArray *imageOso = [[NSArray alloc] initWithObjects:
                               [UIImage imageNamed:@"osoPercha1"],
                               [UIImage imageNamed:@"osoPercha3"],
                               [UIImage imageNamed:@"osoPercha2"],
                               nil];
    
    _oso.animationImages = [NSArray arrayWithArray:imageOso];
    _oso.animationDuration = 3;
    _oso.animationRepeatCount = 9;
    [_oso startAnimating];
}

-(IBAction)verCanasto:(id)sender{
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(canastoFin:)];
    
    [_canasto setAlpha:1.0];
    [_canasto setTransform:CGAffineTransformMakeScale(2, 2)];
    [UIView commitAnimations];
    
}

-(IBAction)canastoFin:(id)sender{
    [UIView beginAnimations:@"Dilatation Fin" context:nil];
    [UIView setAnimationDuration:0.5];
    [_canasto setAlpha:1.0];
    [_canasto setTransform:CGAffineTransformIdentity];
    [UIView commitAnimations];
}

-(IBAction)pasarTobogan:(id)sender{
    NSMutableArray *imageTobogan = [[NSMutableArray alloc] initWithCapacity:8];
    int t;
    for (t=1; t<=8; t++) {
        [imageTobogan addObject:[UIImage imageNamed:[NSString stringWithFormat:@"tobogan%d.png", t]]];
        _tobogan.animationImages = [NSArray arrayWithArray:imageTobogan];
        _tobogan.animationDuration = 3;
        _tobogan.animationRepeatCount = 1;
        [_tobogan  startAnimating];
    }
}

-(IBAction)verRubik:(id)sender{
    NSArray *imageLucecitas = [[NSArray alloc] initWithObjects:
                         [UIImage imageNamed:@"rubik1"],
                         [UIImage imageNamed:@"rubik2"],
                         [UIImage imageNamed:@"rubik3"],
                         [UIImage imageNamed:@"rubik2"],
                         [UIImage imageNamed:@"rubik1"],
                         [UIImage imageNamed:@"rubik2"],
                         [UIImage imageNamed:@"rubik3"],
                         [UIImage imageNamed:@"rubik2"],
                         [UIImage imageNamed:@"rubik1"],
                         [UIImage imageNamed:@"rubik2"],
                         [UIImage imageNamed:@"rubik3"],
                         [UIImage imageNamed:@"rubik2"],
                         [UIImage imageNamed:@"rubik1"],
                               nil];
    
    _rubik.animationImages = [NSArray arrayWithArray:imageLucecitas];
    _rubik.animationDuration = 6;
    _rubik.animationRepeatCount = 1;
    [_rubik startAnimating];
}

-(IBAction)playSound:(id)sender{
    SystemSoundID soundID;
    NSString *buttonName=[sender currentTitle];
    NSString *soundFile=[[NSBundle mainBundle]
                         pathForResource:buttonName ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], & soundID);
    AudioServicesPlaySystemSound(soundID);
}
@end
