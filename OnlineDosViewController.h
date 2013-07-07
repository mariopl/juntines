//
//  OnlineDosViewController.h
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 25/02/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioToolbox/AudioToolbox.h"

@interface OnlineDosViewController : UIViewController{
    
}

@property (weak, nonatomic) IBOutlet UIImageView *camara;
@property (weak, nonatomic) IBOutlet UILabel *FraseFoto;
@property (weak, nonatomic) IBOutlet UIImageView *oso;
@property (weak, nonatomic) IBOutlet UIImageView *canasto;
@property (weak, nonatomic) IBOutlet UIImageView *tobogan;
@property (weak, nonatomic) IBOutlet UIImageView *rubik;

-(IBAction)hacerFoto:(id)sender;
-(IBAction)tocarOso:(id)sender;
-(IBAction)verCanasto:(id)sender;
-(IBAction)playSound:(id)sender;
-(IBAction)pasarTobogan:(id)sender;
-(IBAction)verRubik:(id)sender;

@end
