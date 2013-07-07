//
//  CalleDosViewController.h
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 20/02/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioToolbox/AudioToolbox.h"

@interface CalleDosViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *sol;
@property (weak, nonatomic) IBOutlet UIImageView *avionLejano;
@property (weak, nonatomic) IBOutlet UIImageView *nube1;
@property (weak, nonatomic) IBOutlet UIImageView *nube2;
@property (weak, nonatomic) IBOutlet UIImageView *nube3;
@property (weak, nonatomic) IBOutlet UIImageView *nube4;
@property (weak, nonatomic) IBOutlet UIImageView *nube5;
@property (weak, nonatomic) IBOutlet UIImageView *nube11;
@property (weak, nonatomic) IBOutlet UIImageView *nube13;
@property (weak, nonatomic) IBOutlet UIImageView *nube14;
@property (weak, nonatomic) IBOutlet UIImageView *nube12;
@property (weak, nonatomic) IBOutlet UIImageView *pajaro1;
@property (weak, nonatomic) IBOutlet UIImageView *pajaro2;
@property (weak, nonatomic) IBOutlet UIImageView *pajaro3;
@property (weak, nonatomic) IBOutlet UIImageView *pajaro4;
@property (weak, nonatomic) IBOutlet UIImageView *pajaro5;
@property (weak, nonatomic) IBOutlet UIImageView *tren;
@property (weak, nonatomic) IBOutlet UIImageView *conejoUno;
@property (weak, nonatomic) IBOutlet UIImageView *conejoDos;
@property (weak, nonatomic) IBOutlet UIImageView *sombreroTeatro;
@property (weak, nonatomic) IBOutlet UIImageView *conejoTres;
@property (weak, nonatomic) IBOutlet UIImageView *conejoCuatro;
@property (weak, nonatomic) IBOutlet UIImageView *conejoCinco;
@property (weak, nonatomic) IBOutlet UIImageView *coche;
@property (weak, nonatomic) IBOutlet UIImageView *carrito;
@property (weak, nonatomic) IBOutlet UIImageView *sombreroCocina;
@property (weak, nonatomic) IBOutlet UIImageView *globo;
@property (weak, nonatomic) IBOutlet UIImageView *pincel;
@property (weak, nonatomic) IBOutlet UIImageView *libreria;
@property (weak, nonatomic) IBOutlet UIImageView *peine;
@property (weak, nonatomic) IBOutlet UIImageView *decoracion;
@property (weak, nonatomic) IBOutlet UIImageView *gato;


- (IBAction)dilatartren:(id)sender;
- (IBAction)verTeatro:(id)sender;
- (IBAction)tocarAvion:(id)sender;
- (IBAction)playSound:(id)sender;
- (IBAction)moverCarrito:(id)sender;
- (IBAction)verSombrero:(id)sender;
- (IBAction)verTalleres:(id)sender;
- (IBAction)verLibreria:(id)sender;
- (IBAction)verPeluqueria:(id)sender;
- (IBAction)tocarGato:(id)sender;





@end
