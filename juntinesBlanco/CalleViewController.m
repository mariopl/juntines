//
//  CalleViewController.m
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 22/01/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import "CalleViewController.h"

@interface CalleViewController ()

@end

@implementation CalleViewController

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
//tienda ropa
    NSArray *imageRopa = [[NSArray alloc] initWithObjects:
                            [UIImage imageNamed:@"local11.png"],
                            [UIImage imageNamed:@"local12.png"],
                            [UIImage imageNamed:@"local13.png"],
                            [UIImage imageNamed:@"local14.png"],
                            nil];
    
    _ropa.animationImages = [NSArray arrayWithArray:imageRopa];
    _ropa.animationDuration = 8;
    _ropa.animationRepeatCount = 999;
    [_ropa startAnimating];
//cometa
    NSArray *imageCometa = [[NSArray alloc] initWithObjects:
                              [UIImage imageNamed:@"cometa1.png"],
                              [UIImage imageNamed:@"cometa2.png"],
                              [UIImage imageNamed:@"cometa3.png"],
                              [UIImage imageNamed:@"cometa4.png"],
                              [UIImage imageNamed:@"cometa5.png"],
                              nil];
    
    _cometa.animationImages = [NSArray arrayWithArray:imageCometa];
    _cometa.animationDuration = 4;
    _cometa.animationRepeatCount = 999;
    [_cometa startAnimating];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:30];
    [UIView setAnimationRepeatCount:99];
    
    _cometa.alpha = 1.0;
    
    CGRect _cometaFrame = _cometa.frame;
    _cometaFrame.origin.x = 1200;
    _cometaFrame.origin.y = -500;
    _cometa.frame = _cometaFrame;
    
    [UIView commitAnimations];    

//semaforo
    NSArray *imageSemaforo = [[NSArray alloc] initWithObjects:
                                [UIImage imageNamed:@"semaforo1.png"],
                                [UIImage imageNamed:@"semaforo1.png"],
                                [UIImage imageNamed:@"semaforo1.png"],
                                [UIImage imageNamed:@"semaforo2.png"],
                                [UIImage imageNamed:@"semaforo3.png"],
                                [UIImage imageNamed:@"semaforo3.png"],
                                [UIImage imageNamed:@"semaforo3.png"],
                                nil];
    
    _semaforo.animationImages = [NSArray arrayWithArray:imageSemaforo];
    _semaforo.animationDuration = 15;
    _semaforo.animationRepeatCount = 999;
    [_semaforo startAnimating];
    
//movimiento de tren
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:25];
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
    
//movimiento del sol
        [UIView beginAnimations:@"advancedAnimations" context:nil];
        [UIView setAnimationDuration:200];
        [UIView setAnimationRepeatCount:99];
        
        _sol.alpha = 1.0;
        
        CGRect _solFrame = _sol.frame;
        _solFrame.origin.x = 1090;
        _solFrame.origin.y = -100;
        _sol.frame = _solFrame;
        
        [UIView commitAnimations];
        
//movimiento avión
    NSArray *imageAvion = [[NSArray alloc] initWithObjects:
                                [UIImage imageNamed:@"avionAustralia1.png"],
                                [UIImage imageNamed:@"avionAustralia2.png"],
                                [UIImage imageNamed:@"avionAustralia3.png"],
                                [UIImage imageNamed:@"avionChina1.png"],
                                [UIImage imageNamed:@"avionChina2.png"],
                                [UIImage imageNamed:@"avionChina3.png"],
                                [UIImage imageNamed:@"avionEspaña1.png"],
                                [UIImage imageNamed:@"avionEspaña2.png"],
                                [UIImage imageNamed:@"avionEspaña3.png"],
                                [UIImage imageNamed:@"avionItalia1.png"],
                                [UIImage imageNamed:@"avionItalia2.png"],
                                [UIImage imageNamed:@"avionItalia3.png"],
                                nil];
        
        _avion.animationImages = [NSArray arrayWithArray:imageAvion];
        _avion.animationDuration = 10;
        _avion.animationRepeatCount = 99;
        [_avion startAnimating];
        
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:55];
    [UIView setAnimationRepeatCount:99];
        
        _avion.alpha = 1.0;
        
        CGRect _avionFrame = _avion.frame;
        _avionFrame.origin.x = 11000;
        _avionFrame.origin.y = -500;
        _avion.frame = _avionFrame;
        
        [UIView commitAnimations];
        
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
        
//Animación cometa
    NSArray *imageCometa = [[NSArray alloc] initWithObjects:
                               [UIImage imageNamed:@"cometa1.png"],
                               [UIImage imageNamed:@"cometa2.png"],
                            [UIImage imageNamed:@"cometa1.png"],
                            [UIImage imageNamed:@"cometa2.png"],
                            [UIImage imageNamed:@"cometa3.png"],
                               [UIImage imageNamed:@"cometa4.png"],
                               [UIImage imageNamed:@"cometa3.png"],
                               [UIImage imageNamed:@"cometa4.png"],
                            [UIImage imageNamed:@"cometa5.png"],
                            [UIImage imageNamed:@"cometa4.png"],
                            [UIImage imageNamed:@"cometa5.png"],
                               nil];
        
        _cometa.animationImages = [NSArray arrayWithArray:imageCometa];
        _cometa.animationDuration = 8;
        _cometa.animationRepeatCount = 99;
        [_cometa startAnimating];
        
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
}
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
}


- (IBAction)moverCoche:(id)sender{
    
    NSMutableArray *imageCoche = [[NSMutableArray alloc] initWithCapacity:3];
    int c;
    for (c=1; c<=3; c++) {
        [imageCoche addObject:[UIImage imageNamed:[NSString stringWithFormat:@"coche%d.png", c]]];
        _coche.animationImages = [NSArray arrayWithArray:imageCoche];
        _coche.animationDuration = 2;
        _coche.animationRepeatCount = 5;
        [_coche startAnimating];
}
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:10];
    [UIView setAnimationRepeatCount:0];
    
    _coche.alpha = 1.0;
    
    CGRect _cocheFrame = _coche.frame;
    _cocheFrame.origin.x = 800;
    _coche.frame = _cocheFrame;
    
    [UIView commitAnimations];
}

- (IBAction)atrasCoche:(id)sender{
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:10];
    [UIView setAnimationRepeatCount:0];
    
    _coche.alpha = 1.0;
    
    CGRect _cocheFrame = _coche.frame;
    _cocheFrame.origin.x = 50;
    _coche.frame = _cocheFrame;
    
    [UIView commitAnimations];
    
    NSMutableArray *imageCoche = [[NSMutableArray alloc] initWithCapacity:3];
    int c;
    for (c=1; c<=3; c++) {
        [imageCoche addObject:[UIImage imageNamed:[NSString stringWithFormat:@"coche1%d.png", c]]];
        _coche.animationImages = [NSArray arrayWithArray:imageCoche];
        _coche.animationDuration = 2;
        _coche.animationRepeatCount = 5;
        [_coche startAnimating];
    }
}

-(IBAction)jirafaCamina:(id)sender{
    NSArray *imageJirafa = [[NSArray alloc] initWithObjects:
                            [UIImage imageNamed:@"jirafa2.png"],
                            [UIImage imageNamed:@"jirafa3.png"],
                            [UIImage imageNamed:@"jirafa4.png"],
                            nil];
    
    _jirafa.animationImages = [NSArray arrayWithArray:imageJirafa];
    _jirafa.animationDuration = 1;
    _jirafa.animationRepeatCount = 10;
    [_jirafa startAnimating];
    
    [UIView beginAnimations:@"advancedAnimations" context:nil];
    [UIView setAnimationDuration:10];
    
    _jirafa.alpha = 1.0;
    
    CGRect _jirafaFrame = _jirafa.frame;
    _jirafaFrame.origin.x = 700;
    _jirafa.frame = _jirafaFrame;
    
    [UIView commitAnimations];
}

-(IBAction)tocarPalomitas:(id)sender{
    NSArray *imagePalomitas = [[NSArray alloc] initWithObjects:
                                    [UIImage imageNamed:@"palomitas2"],
                                    [UIImage imageNamed:@"palomitas3"],
                                    nil];
    _palomitas.animationImages = [NSArray arrayWithArray:imagePalomitas];
    _palomitas.animationDuration = 2;
    _palomitas.animationRepeatCount = 2;
    [_palomitas startAnimating];
}

-(IBAction)tocarAvion:(id)sender{
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(avionFin:)];
    
    [_avion setAlpha:1.0];
    [_avion setTransform:CGAffineTransformMakeScale(2, 2)];
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"Dilatation" context:nil];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(avionFin:)];
    
    [_avionLejano setAlpha:1.0];
    [_avionLejano setTransform:CGAffineTransformMakeScale(2, 2)];
    [UIView commitAnimations];
    
}

- (IBAction)tocarPerro:(id)sender {
    NSArray *imagePerro = [[NSArray alloc] initWithObjects:
                            [UIImage imageNamed:@"perro1.png"],
                            [UIImage imageNamed:@"perro2.png"],
                            [UIImage imageNamed:@"perro3.png"],
                            [UIImage imageNamed:@"perro4.png"],
                            [UIImage imageNamed:@"perro5.png"],
                            [UIImage imageNamed:@"perro6.png"],
                            [UIImage imageNamed:@"perro7.png"],
                            [UIImage imageNamed:@"perro7.png"],
                            [UIImage imageNamed:@"perro7.png"],
                            [UIImage imageNamed:@"perro7.png"],
                               nil];
    _perro.animationImages = [NSArray arrayWithArray:imagePerro];
    _perro.animationDuration = 6;
    _perro.animationRepeatCount = 2;
    [_perro startAnimating];
}

-(IBAction)avionFin:(id)sender{
    [UIView beginAnimations:@"Dilatation Fin" context:nil];
    [UIView setAnimationDuration:0.5];
    [_avion setAlpha:1.0];
    [_avion setTransform:CGAffineTransformIdentity];
    [UIView commitAnimations];
    
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

@end
