//
//  InicioViewController.h
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 22/01/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InicioViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *chicochica;
@property (weak, nonatomic) IBOutlet UIImageView *web;
@property (weak, nonatomic) IBOutlet UIImageView *juntines;
@property (weak, nonatomic) IBOutlet UILabel *jugando;
@property (weak, nonatomic) IBOutlet UILabel *navegando;

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
- (IBAction)ninos:(id)sender;
- (IBAction)accesoWeb:(id)sender;
- (IBAction)verWeb:(id)sender;

@end
