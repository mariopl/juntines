//
//  WebViewController.h
//  juntinesBlanco
//
//  Created by Mario Pierre-Louis Marín on 28/01/13.
//  Copyright (c) 2013 Mario Pierre-Louis Marín. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIWebView *webview;
@property (nonatomic, strong) NSURLRequest *request;

@end
