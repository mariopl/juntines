//
//  CalleDosViewController.m
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 20/02/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import "CalleDosViewController.h"

@interface CalleDosViewController ()

@end

@implementation CalleDosViewController

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
    
//local decoracion
    NSArray *imageDecoracion = [[NSArray alloc] initWithObjects:
                                [UIImage imageNamed:@"decoracion1.png"],
                                [UIImage imageNamed:@"decoracion2.png"],
                                [UIImage imageNamed:@"decoracion3.png"],
                                [UIImage imageNamed:@"decoracion4.png"],
                                nil];
    
    _decoracion.animationImages = [NSArray arrayWithArray:imageDecoracion];
    _decoracion.animationDuration = 10;
    _decoracion.animationRepeatCount = 999;
    [_decoracion startAnimating];

//globo
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:15];

    
    _globo.alpha = 1.0;
    _globo.animationRepeatCount = 999;
    
    CGRect _globoFrame = _globo.frame;
    _globoFrame.origin.y = -400;
    _globoFrame.origin.x = 400;
    _globo.frame = _globoFrame;
    
    [UIView commitAnimations];
    
    NSArray *imageGlobo = [[NSArray alloc] initWithObjects:
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo1.png"],
                           [UIImage imageNamed:@"globo2.png"],
                           [UIImage imageNamed:@"globo2.png"],
                           [UIImage imageNamed:@"globo2.png"],
                           [UIImage imageNamed:@"globo3.png"],
                           [UIImage imageNamed:NULL],
                           nil];
    _globo.animationImages = [NSArray arrayWithArray:imageGlobo];
    _globo.animationDuration = 5;
    _globo.animationRepeatCount = 999;
    [_globo startAnimating];
    
//Avión lejano
    NSArray *imageAvionLejano = [[NSArray alloc] initWithObjects:
                                 [UIImage imageNamed:@"avionAustralia11.png"],
                                 [UIImage imageNamed:@"avionAustralia12.png"],
                                 [UIImage imageNamed:@"avionAustralia13.png"],
                                 [UIImage imageNamed:@"avionChina11.png"],
                                 [UIImage imageNamed:@"avionChina12.png"],
                                 [UIImage imageNamed:@"avionChina13.png"],
                                 [UIImage imageNamed:@"avionEspaña11.png"],
                                 [UIImage imageNamed:@"avionEspaña12.png"],
                                 [UIImage imageNamed:@"avionEspaña13.png"],
                                 [UIImage imageNamed:@"avionItalia11.png"],
                                 [UIImage imageNamed:@"avionItalia12.png"],
                                 [UIImage imageNamed:@"avionItalia13.png"],
                                 nil];
    
    _avionLejano.animationImages = [NSArray arrayWithArray:imageAvionLejano];
    _avionLejano.animationDuration = 10;
    _avionLejano.animationRepeatCount = 99;
    [_avionLejano startAnimating];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:100];
    [UIView setAnimationRepeatCount:99];
    
    _avionLejano.alpha = 1.0;
    
    CGRect _avionLejanoFrame = _avionLejano.frame;
    _avionLejanoFrame.origin.x = -200;
    _avionLejano.frame = _avionLejanoFrame;
    
    [UIView commitAnimations];

//movimiento del sol
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:150];
    [UIView setAnimationRepeatCount:99];
    
    _sol.alpha = 1.0;
    
    CGRect _solFrame = _sol.frame;
    _solFrame.origin.x = 1010;
    _solFrame.origin.y = 50;
    _sol.frame = _solFrame;
    
    [UIView commitAnimations];

//nubes
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:200];
    [UIView setAnimationDelegate:self];
    _nube1.alpha = 1.0;
    CGRect _nube1Frame = _nube1.frame;
    _nube1Frame.origin.x = -1775;
    _nube1.frame = _nube1Frame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:200];
    [UIView setAnimationRepeatCount:99];
    _nube11.alpha = 1.0;
    CGRect _nube11Frame = _nube11.frame;
    _nube11Frame.origin.x = -240;
    _nube11.frame = _nube11Frame;
    
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:200];
    _nube2.alpha = 1.0;
    CGRect _nube2Frame = _nube2.frame;
    _nube2Frame.origin.x = -1304;
    _nube2.frame = _nube2Frame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:173.5];
    [UIView setAnimationRepeatCount:99];
    _nube12.alpha = 1.0;
    CGRect _nube12Frame = _nube12.frame;
    _nube12Frame.origin.x = -217;
    _nube12.frame = _nube12Frame;
    [UIView commitAnimations];
    
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:120];
    _nube4.alpha = 1.0;
    CGRect _nube4Frame = _nube4.frame;
    _nube4Frame.origin.x = -804;
    _nube4.frame = _nube4Frame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:120];
    _nube3.alpha = 1.0;
    CGRect _nube3Frame = _nube3.frame;
    _nube3Frame.origin.x = -1225;
    _nube3.frame = _nube3Frame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:120];
    [UIView setAnimationRepeatCount:99];
    _nube5.alpha = 1.0;
    CGRect _nube5Frame = _nube5.frame;
    _nube5Frame.origin.x = -240;
    _nube5.frame = _nube5Frame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:207];
    [UIView setAnimationRepeatCount:99];
    _nube14.alpha = 1.0;
    CGRect _nube14Frame = _nube14.frame;
    _nube14Frame.origin.x = -804;
    _nube14.frame = _nube14Frame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:207];
    [UIView setAnimationRepeatCount:99];
    _nube13.alpha = 1.0;
    CGRect _nube13Frame = _nube13.frame;
    _nube13Frame.origin.x = -1225;
    _nube13.frame = _nube13Frame;
    [UIView commitAnimations];
    
//pajaros
    NSArray *imagePajaro1 = [[NSArray alloc] initWithObjects:
                                 [UIImage imageNamed:@"pajaro14.png"],
                                 [UIImage imageNamed:@"pajaro15.png"],
                                 [UIImage imageNamed:@"pajaro15.png"],
                                 [UIImage imageNamed:@"pajaro13.png"],
                                 nil];
    _pajaro1.animationImages = [NSArray arrayWithArray:imagePajaro1];
    _pajaro1.animationDuration = 1.5;
    _pajaro1.animationRepeatCount = 99;
    [_pajaro1 startAnimating];
    
    NSArray *imagePajaro2 = [[NSArray alloc] initWithObjects:
                             [UIImage imageNamed:@"pajaro15.png"],
                             [UIImage imageNamed:@"pajaro15.png"],
                             [UIImage imageNamed:@"pajaro15.png"],
                             [UIImage imageNamed:@"pajaro14.png"],
                             [UIImage imageNamed:@"pajaro13.png"],
                             nil];
    
    _pajaro2.animationImages = [NSArray arrayWithArray:imagePajaro2];
    _pajaro2.animationDuration = 2;
    _pajaro2.animationRepeatCount = 99;
    [_pajaro2 startAnimating];
    
    NSArray *imagePajaro3 = [[NSArray alloc] initWithObjects:
                             [UIImage imageNamed:@"pajaro14.png"],
                             [UIImage imageNamed:@"pajaro13.png"],
                             [UIImage imageNamed:@"pajaro15.png"],
                             [UIImage imageNamed:@"pajaro15.png"],
                             nil];
    
    _pajaro3.animationImages = [NSArray arrayWithArray:imagePajaro3];
    _pajaro3.animationDuration = 1.5;
    _pajaro3.animationRepeatCount = 99;
    [_pajaro3 startAnimating];
    
    NSArray *imagePajaro4 = [[NSArray alloc] initWithObjects:
                             [UIImage imageNamed:@"pajaro14.png"],
                              [UIImage imageNamed:@"pajaro15.png"],
                              [UIImage imageNamed:@"pajaro15.png"],
                              [UIImage imageNamed:@"pajaro13.png"],
                             nil];
    
    _pajaro4.animationImages = [NSArray arrayWithArray:imagePajaro4];
    _pajaro4.animationDuration = 1.5;
    _pajaro4.animationRepeatCount = 99;
    [_pajaro4 startAnimating];
    
    NSArray *imagePajaro5 = [[NSArray alloc] initWithObjects:
                             [UIImage imageNamed:@"pajaro15.png"],
                             [UIImage imageNamed:@"pajaro15.png"],
                             [UIImage imageNamed:@"pajaro14.png"],
                             [UIImage imageNamed:@"pajaro13.png"],
                             nil];
    
    _pajaro5.animationImages = [NSArray arrayWithArray:imagePajaro5];
    _pajaro5.animationDuration = 1.5;
    _pajaro5.animationRepeatCount = 99;
    [_pajaro5 startAnimating];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:30];
    [UIView setAnimationDelay:5];
    [UIView setAnimationRepeatCount:99];
    [UIView setAnimationDelegate:self];
    _pajaro1.alpha = 1.0;
    CGRect _pajaro1Frame = _pajaro1.frame;
    _pajaro1Frame.origin.x = -1300;//-80
    _pajaro1.frame = _pajaro1Frame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:30];
    [UIView setAnimationDelay:5];
    [UIView setAnimationRepeatCount:99];
    [UIView setAnimationDelegate:self];
    _pajaro2.alpha = 1.0;
    CGRect _pajaro2Frame = _pajaro2.frame;
    _pajaro2Frame.origin.x = -1345;//-125;
    _pajaro2.frame = _pajaro2Frame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:30];
    [UIView setAnimationDelay:5];
    [UIView setAnimationRepeatCount:99];
    [UIView setAnimationDelegate:self];
    _pajaro3.alpha = 1.0;
    CGRect _pajaro3Frame = _pajaro3.frame;
    _pajaro3Frame.origin.x = -1470;//-250;
    _pajaro3.frame = _pajaro3Frame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:30];
    [UIView setAnimationDelay:5];
    [UIView setAnimationRepeatCount:99];
    [UIView setAnimationDelegate:self];
    _pajaro4.alpha = 1.0;
    CGRect _pajaro4Frame = _pajaro4.frame;
    _pajaro4Frame.origin.x = -1420;//-200;
    _pajaro4.frame = _pajaro4Frame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:30];
    [UIView setAnimationDelay:5];
    [UIView setAnimationRepeatCount:99];
    [UIView setAnimationDelegate:self];
    _pajaro5.alpha = 1.0;
    CGRect _pajaro5Frame = _pajaro5.frame;
    _pajaro5Frame.origin.x = -1370;//-150;
    _pajaro5.frame = _pajaro5Frame;
    [UIView commitAnimations];
    
//movimiento de tren
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:20];
    [UIView setAnimationRepeatCount:99];
    
    _tren.alpha = 1.0;
    
    CGRect _trenFrame = _tren.frame;
    _trenFrame.origin.x = -1000;
    _tren.frame = _trenFrame;
    
    [UIView commitAnimations];
    
    NSMutableArray *imageTren = [[NSMutableArray alloc] initWithCapacity:4];
    int t;
    for (t=1; t<=4; t++) {
        [imageTren addObject:[UIImage imageNamed:[NSString stringWithFormat:@"tren%d.png", t]]];
        _tren.animationImages = [NSArray arrayWithArray:imageTren];
        _tren.animationDuration = 2;
        _tren.animationRepeatCount = 99;
        [_tren startAnimating];
    }
    
//movimiento coche
    NSMutableArray *imageCoche = [[NSMutableArray alloc] initWithCapacity:3];
    int c;
    for (c=1; c<=3; c++) {
        [imageCoche addObject:[UIImage imageNamed:[NSString stringWithFormat:@"coche%d.png", c]]];
        _coche.animationImages = [NSArray arrayWithArray:imageCoche];
        _coche.animationDuration = 2;
        _coche.animationRepeatCount = 999;
        [_coche startAnimating];
    }
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:20];
    [UIView setAnimationRepeatCount:999];
    
    _coche.alpha = 1.0;
    
    CGRect _cocheFrame = _coche.frame;
    _cocheFrame.origin.x = 1090;
    _coche.frame = _cocheFrame;
    
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)dilatartren:(id)sender{
    
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(trenFin:)];
    
    [_tren setAlpha:1.0];
    [_tren setTransform:CGAffineTransformMakeScale(2, 2)];
    [UIView commitAnimations];
    
}

-(IBAction)trenFin:(id)sender{
    [UIView beginAnimations:@"Dilatation Fin" context:nil];
    [UIView setAnimationDuration:0.5];
    [_tren setAlpha:1.0];
    [_tren setTransform:CGAffineTransformIdentity];
    [UIView commitAnimations];
}

-(IBAction)verTeatro:(id)sender{
    NSArray *imageSombrero = [[NSArray alloc] initWithObjects:
                            [UIImage imageNamed:@"sombrero2"],
                            [UIImage imageNamed:@"sombrero3"],
                            [UIImage imageNamed:@"sombrero4"],
                            nil];
    _sombreroTeatro.animationImages = [NSArray arrayWithArray:imageSombrero];
    _sombreroTeatro.animationDuration = 2;
    _sombreroTeatro.animationRepeatCount = 1;
    [_sombreroTeatro startAnimating];
    
    NSArray *imageConejoUno = [[NSArray alloc] initWithObjects:
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo4"],
                               [UIImage imageNamed:@"conejo5"],
                               [UIImage imageNamed:@"conejo6"],
                               [UIImage imageNamed:@"conejo7"],
                               [UIImage imageNamed:@"conejo8"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                              nil];
    _conejoUno.animationImages = [NSArray arrayWithArray:imageConejoUno];
    _conejoUno.animationDuration = 17.3;
    _conejoUno.animationRepeatCount = 1;
    [_conejoUno startAnimating];
    
    NSArray *imageConejoDos = [[NSArray alloc] initWithObjects:
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo4"],
                               [UIImage imageNamed:@"conejo5"],
                               [UIImage imageNamed:@"conejo6"],
                               [UIImage imageNamed:@"conejo7"],
                               [UIImage imageNamed:@"conejo8"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo2"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               [UIImage imageNamed:@"conejo3"],
                               nil];
    _conejoDos.animationImages = [NSArray arrayWithArray:imageConejoDos];
    _conejoDos.animationDuration = 17.3;
    _conejoDos.animationRepeatCount = 1;
    [_conejoDos startAnimating];
    
    NSArray *imageConejoTres = [[NSArray alloc] initWithObjects:
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo4"],
                                [UIImage imageNamed:@"conejo5"],
                                [UIImage imageNamed:@"conejo6"],
                                [UIImage imageNamed:@"conejo7"],
                                [UIImage imageNamed:@"conejo8"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo2"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo3"],
                                [UIImage imageNamed:@"conejo3"],
                               nil];
    _conejoTres.animationImages = [NSArray arrayWithArray:imageConejoTres];
    _conejoTres.animationDuration = 17.3;
    _conejoTres.animationRepeatCount = 1;
    [_conejoTres startAnimating];
    
    NSArray *imageConejoCuatro = [[NSArray alloc] initWithObjects:
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo4"],
                                  [UIImage imageNamed:@"conejo5"],
                                  [UIImage imageNamed:@"conejo6"],
                                  [UIImage imageNamed:@"conejo7"],
                                  [UIImage imageNamed:@"conejo8"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo2"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo3"],
                                  [UIImage imageNamed:@"conejo3"],
                                nil];
    _conejoCuatro.animationImages = [NSArray arrayWithArray:imageConejoCuatro];
    _conejoCuatro.animationDuration = 17.3;
    _conejoCuatro.animationRepeatCount = 1;
    [_conejoCuatro startAnimating];
    
    NSArray *imageConejoCinco = [[NSArray alloc] initWithObjects:
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo4"],
                                 [UIImage imageNamed:@"conejo5"],
                                 [UIImage imageNamed:@"conejo6"],
                                 [UIImage imageNamed:@"conejo7"],
                                 [UIImage imageNamed:@"conejo8"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo2"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo3"],
                                 [UIImage imageNamed:@"conejo3"],
                                  nil];
    
    _conejoCinco.animationImages = [NSArray arrayWithArray:imageConejoCinco];
    _conejoCinco.animationDuration = 17.3;
    _conejoCinco.animationRepeatCount = 1;
    [_conejoCinco startAnimating];
    
  
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:2];
    [UIView setAnimationDelay:1];
    [UIView setAnimationRepeatCount:1];
    
    _conejoUno.alpha = 1.0;
    
    CGRect _conejoUnoFrame = _conejoUno.frame;
    _conejoUnoFrame.origin.x = 330;
    _conejoUno.frame = _conejoUnoFrame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:2];
    [UIView setAnimationDelay:1];
    [UIView setAnimationRepeatCount:1];
    
    _conejoDos.alpha = 1.0;
    
    CGRect _conejoDosFrame = _conejoDos.frame;
    _conejoDosFrame.origin.x = 264;
    _conejoDos.frame = _conejoDosFrame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:2];
    [UIView setAnimationDelay:1];
    [UIView setAnimationRepeatCount:1];
    
    _conejoTres.alpha = 1.0;
    
    CGRect _conejoTresFrame = _conejoTres.frame;
    _conejoTresFrame.origin.x = 258;
    _conejoTres.frame = _conejoTresFrame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:2];
    [UIView setAnimationDelay:1];
    [UIView setAnimationRepeatCount:1];
    
    _conejoCuatro.alpha = 1.0;
    
    CGRect _conejoCuatroFrame = _conejoCuatro.frame;
    _conejoCuatroFrame.origin.x = 321;
    _conejoCuatro.frame = _conejoCuatroFrame;
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:2];
    [UIView setAnimationDelay:1];
    [UIView setAnimationRepeatCount:1];
    
    _conejoCinco.alpha = 1.0;
    
    CGRect _conejoCincoFrame = _conejoCinco.frame;
    _conejoCincoFrame.origin.x = 390;
    _conejoCinco.frame = _conejoCincoFrame;
    [UIView commitAnimations];
  
}

-(IBAction)tocarAvion:(id)sender{
    
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(avionFin:)];
    
    [_avionLejano setAlpha:1.0];
    [_avionLejano setTransform:CGAffineTransformMakeScale(2, 2)];
    [UIView commitAnimations];
    
}

-(IBAction)avionFin:(id)sender{
    
    [UIView beginAnimations:@"Dilatation Fin" context:nil];
    [UIView setAnimationDuration:0.5];
    [_avionLejano setAlpha:1.0];
    [_avionLejano setTransform:CGAffineTransformIdentity];
    [UIView commitAnimations];
}

-(IBAction)playSound:(id)sender{
    SystemSoundID soundID;
    NSString *buttonName=[sender currentTitle];
    NSString *soundFile=[[NSBundle mainBundle]
                         pathForResource:buttonName ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], & soundID);
    AudioServicesPlaySystemSound(soundID);
}

- (IBAction)moverCarrito:(id)sender {
    NSMutableArray *imageCarrito = [[NSMutableArray alloc] initWithCapacity:7];
        int h;
        for (h=1; h<=3; h++) {
            [imageCarrito addObject:[UIImage imageNamed:[NSString stringWithFormat:@"carrito%d.png", h]]];
            _carrito.animationImages = [NSArray arrayWithArray:imageCarrito];
            _carrito.animationDuration = 3;
            _carrito.animationRepeatCount = 1;
            [_carrito startAnimating];
    }
        
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(carritoFin:)];
        
        [_carrito setAlpha:1.0];
        [_carrito setTransform:CGAffineTransformMakeScale(3.8, 3.8)];
        [UIView commitAnimations];
        
    }

- (IBAction)verSombrero:(id)sender {
    NSArray *imageSombreroCocina = [[NSArray alloc] initWithObjects:
                                    [UIImage imageNamed:@"sombreroCocina2"],
                                    [UIImage imageNamed:@"sombreroCocina3"],
                                    [UIImage imageNamed:@"sombreroCocina4"],
                                    [UIImage imageNamed:@"sombreroCocina4"],
                                    [UIImage imageNamed:@"sombreroCocina4"],
                                    [UIImage imageNamed:@"sombreroCocina4"],
                                    [UIImage imageNamed:@"sombreroCocina4"],
                                    [UIImage imageNamed:@"sombreroCocina4"],
                                    [UIImage imageNamed:@"sombreroCocina4"],
                                    nil];
    _sombreroCocina.animationImages = [NSArray arrayWithArray:imageSombreroCocina];
    _sombreroCocina.animationDuration = 4;
    _sombreroCocina.animationRepeatCount = 1;
    [_sombreroCocina startAnimating];

}

- (IBAction)verTalleres:(id)sender {
    NSArray *imageTalleres = [[NSArray alloc] initWithObjects:
                                [UIImage imageNamed:@"pincel2"],
                                [UIImage imageNamed:@"pincel3"],
                                [UIImage imageNamed:@"pincel3"],
                                [UIImage imageNamed:@"pincel3"],
                                nil];
    
    _pincel.animationImages = [NSArray arrayWithArray:imageTalleres];
    _pincel.animationDuration = 3;
    _pincel.animationRepeatCount = 1;
    [_pincel startAnimating];
}

- (IBAction)verLibreria:(id)sender {
    NSArray *imageLibreria = [[NSArray alloc] initWithObjects:
                              [UIImage imageNamed:@"libreria2"],
                              [UIImage imageNamed:@"libreria3"],
                              [UIImage imageNamed:@"libreria4"],
                              
                              [UIImage imageNamed:@"libreria4"],
                              [UIImage imageNamed:@"libreria4"],
                              [UIImage imageNamed:@"libreria4"],
                              [UIImage imageNamed:@"libreria4"],
                              
                              [UIImage imageNamed:@"libreria4"],
                              [UIImage imageNamed:@"libreria4"],
                              [UIImage imageNamed:@"libreria4"],
                              [UIImage imageNamed:@"libreria3"],
                              [UIImage imageNamed:@"libreria2"],
                              nil];
    _libreria.animationImages = [NSArray arrayWithArray:imageLibreria];
    _libreria.animationDuration = 4.5;
    _libreria.animationRepeatCount = 1;
    [_libreria startAnimating];
}

- (IBAction)verPeluqueria:(id)sender {
    NSArray *imagePeluqueria = [[NSArray alloc] initWithObjects:
                                [UIImage imageNamed:@"peine2"],
                                [UIImage imageNamed:@"peine3"],
                                [UIImage imageNamed:@"peine1"],
                                [UIImage imageNamed:@"peine2"],
                                [UIImage imageNamed:@"peine3"],
                                nil];
    
    _peine.animationImages = [NSArray arrayWithArray:imagePeluqueria];
    _peine.animationDuration = 3;
    _peine.animationRepeatCount = 2;
    [_peine startAnimating];
}

- (IBAction)tocarGato:(id)sender {
    NSArray *imageGato = [[NSArray alloc] initWithObjects:
                                [UIImage imageNamed:@"gato2"],
                                [UIImage imageNamed:@"gato3"],
                                [UIImage imageNamed:@"gato2"],
                              
                                nil];
    
    _gato.animationImages = [NSArray arrayWithArray:imageGato];
    _gato.animationDuration = 3;
    _gato.animationRepeatCount = 1;
    [_gato startAnimating];
    
}

-(IBAction)carritoFin:(id)sender{
        [UIView beginAnimations:@"Dilatation Fin" context:nil];
        [UIView setAnimationDuration:0.5];
        [_carrito setAlpha:1.0];
        [_carrito setTransform:CGAffineTransformIdentity];
        [UIView commitAnimations];
}


@end
