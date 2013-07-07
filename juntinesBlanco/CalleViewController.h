//
//  CalleViewController.h
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 22/01/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioToolbox/AudioToolbox.h"

@interface CalleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *tren;
@property (weak, nonatomic) IBOutlet UIImageView *avion;
@property (weak, nonatomic) IBOutlet UIImageView *coche;
@property (weak, nonatomic) IBOutlet UIImageView *cometa;
@property (weak, nonatomic) IBOutlet UIImageView *jirafa;
@property (weak, nonatomic) IBOutlet UIImageView *sol;
@property (weak, nonatomic) IBOutlet UIImageView *nube1;
@property (weak, nonatomic) IBOutlet UIImageView *nube2;
@property (weak, nonatomic) IBOutlet UIImageView *nube3;
@property (weak, nonatomic) IBOutlet UIImageView *nube4;
@property (weak, nonatomic) IBOutlet UIImageView *nube5;
@property (weak, nonatomic) IBOutlet UIImageView *nube11;
@property (weak, nonatomic) IBOutlet UIImageView *nube13;
@property (weak, nonatomic) IBOutlet UIImageView *nube14;
@property (weak, nonatomic) IBOutlet UIImageView *nube12;
@property (weak, nonatomic) IBOutlet UIImageView *avionLejano;
@property (weak, nonatomic) IBOutlet UIImageView *palomitas;
@property (weak, nonatomic) IBOutlet UIImageView *semaforo;
@property (weak, nonatomic) IBOutlet UIImageView *puertaCasa;
@property (weak, nonatomic) IBOutlet UIImageView *ropa;
@property (weak, nonatomic) IBOutlet UIImageView *perro;

- (IBAction)moverCoche:(id)sender;
- (IBAction)jirafaCamina:(id)sender;
- (IBAction)playSound:(id)sender;
- (IBAction)atrasCoche:(id)sender;
- (IBAction)tocarPalomitas:(id)sender;
- (IBAction)tocarAvion:(id)sender;
- (IBAction)tocarPerro:(id)sender;

@end
