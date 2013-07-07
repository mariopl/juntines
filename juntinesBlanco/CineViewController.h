//
//  CineViewController.h
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 13/03/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CineViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *titulo;
@property (weak, nonatomic) IBOutlet UILabel *descripcion;

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end
