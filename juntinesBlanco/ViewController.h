//
//  ViewController.h
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 09/01/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *pajarito;
@property (weak, nonatomic) IBOutlet UIImageView *libelula;
@property (weak, nonatomic) IBOutlet UIImageView *pajaritoDos;
@property (weak, nonatomic) IBOutlet UIImageView *pajaritoTres;
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
-(IBAction)pajaroVuela:(id)sender;

@end
