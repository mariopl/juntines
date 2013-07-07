//
//  CasaViewController.h
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 08/02/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioToolbox/AudioToolbox.h"

@interface CasaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *plantaReloj;
@property (weak, nonatomic) IBOutlet UIImageView *mueble;
@property (weak, nonatomic) IBOutlet UIImageView *horno;
@property (weak, nonatomic) IBOutlet UIImageView *cacerola;
@property (weak, nonatomic) IBOutlet UIImageView *door;
@property (weak, nonatomic) IBOutlet UIImageView *flores;
@property (weak, nonatomic) IBOutlet UIImageView *luzFoco;

-(IBAction)abrirHorno:(id)sender;
-(IBAction)abrirMueble:(id)sender;
-(IBAction)cacerola:(id)sender;
- (IBAction)abrirPuerta:(id)sender;
- (IBAction)encender:(UIButton *)sender;



@end
