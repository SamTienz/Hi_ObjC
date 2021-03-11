//
//  ViewController.m
//  HiObjC
//
//  Created by Tien on 2018/4/13.
//  Copyright © 2018年 Tien. All rights reserved.
//

#import "ViewController.h"
#import "MainView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mainview = [[MainView alloc] initWithFrame:self.view.frame];
    [self.mainview.btn addTarget:self action:@selector(okBtnAction) forControlEvents:UIControlEventTouchUpInside];
    self.view = _mainview;
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)okBtnAction{
    float weight = [self.mainview.weight.text floatValue];
    float height = [self.mainview.height.text floatValue]/100;
    float bmi = 0.0;
    height = height * height;
    bmi = weight/height;
    self.mainview.result.text = [NSString stringWithFormat:@"BMI:%f",bmi];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
