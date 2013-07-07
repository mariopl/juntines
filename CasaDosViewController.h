//
//  CasaDosViewController.h
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 01/03/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioToolbox/AudioToolbox.h"

@interface CasaDosViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *poster;
@property (weak, nonatomic) IBOutlet UIImageView *letras;
@property (weak, nonatomic) IBOutlet UIImageView *ventana;
@property (weak, nonatomic) IBOutlet UIImageView *avionPapel;
@property (weak, nonatomic) IBOutlet UIImageView *numeros;
@property (weak, nonatomic) IBOutlet UIImageView *marcianos;


- (IBAction)arrancarPoster:(id)sender;
- (IBAction)hacerInventos:(UIButton *)sender;
- (IBAction)abrirVentana:(id)sender;
- (IBAction)volarAvion:(id)sender;
- (IBAction)verLetrasYNumeros:(id)sender;
- (IBAction)playSound:(id)sender;







@end
