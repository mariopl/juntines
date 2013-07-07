//
//  OnlineViewController.h
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 07/02/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OnlineViewController : UIViewController{
}

@property (weak, nonatomic) IBOutlet UIImageView *neneEspacio;
@property (weak, nonatomic) IBOutlet UIImageView *marcianoSopla;
@property (weak, nonatomic) IBOutlet UIImageView *ovni;
@property (weak, nonatomic) IBOutlet UIImageView *marcianoIdiomas;
@property (weak, nonatomic) IBOutlet UIImageView *tv;
@property (weak, nonatomic) IBOutlet UIImageView *monoLapiz;
@property (weak, nonatomic) IBOutlet UIImageView *lucecitas;
@property (weak, nonatomic) IBOutlet UIImageView *naranja;

-(IBAction)trasladar:(id)sender;
-(IBAction)soplar2:(id)sender;
-(IBAction)verOvni:(id)sender;
-(IBAction)verMono:(id)sender;
-(IBAction)tocarNene:(id)sender;

@end
