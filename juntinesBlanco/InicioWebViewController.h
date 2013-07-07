//
//  InicioWebViewController.h
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 10/01/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InicioWebViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIWebView *webview;
@property (nonatomic, strong) NSURLRequest *request;
@property (weak, nonatomic) IBOutlet UIImageView *icono90;

-(IBAction)irInicio:(id)sender;

@end
