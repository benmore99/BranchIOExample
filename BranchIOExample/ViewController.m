//
//  ViewController.m
//  BranchIOExample
//
//  Created by BURIN TECHAMA on 8/15/2559 BE.
//  Copyright © 2559 BURIN TECHAMA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showParam) name:@"showParam" object:nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)showParam{
    NSDictionary *param = [[NSDictionary alloc]init];
    param = [[NSUserDefaults standardUserDefaults]objectForKey:@"BranchIOParam"];
    _textView.text =[param description];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
