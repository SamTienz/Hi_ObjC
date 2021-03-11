//
//  MainView.m
//  HiObjC
//
//  Created by Tien on 2018/4/17.
//  Copyright © 2018年 Tien. All rights reserved.
//

#import "MainView.h"

@implementation MainView
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
        self.backgroundColor = UIColor.whiteColor;
        self.btn = [[UIButton alloc] initWithFrame:CGRectMake(self.bounds.size.width/2 - 50, self.bounds.size.height*0.35, 100, 30)];
        self.btn.backgroundColor = UIColor.darkGrayColor;
        [self.btn setTitle:@"快點啦，快點算啦" forState:UIControlStateNormal];
        self.btn.titleLabel.adjustsFontSizeToFitWidth = true;
        self.weight = [[UITextField alloc]initWithFrame: CGRectMake(self.bounds.size.width/2 - 50, self.bounds.size.height*0.25, 100, 30)];
        self.weight.placeholder = @"體重(KG)";
        [self.weight setBorderStyle:UITextBorderStyleRoundedRect];
        self.height = [[UITextField alloc]initWithFrame: CGRectMake(self.bounds.size.width/2 - 50, self.bounds.size.height*0.3, 100, 30)];
        [self.height setBorderStyle:UITextBorderStyleRoundedRect];
        self.height.placeholder = @"身高(CM)";
        self.result = [[UITextView alloc]initWithFrame:CGRectMake(self.bounds.size.width/2 - 50, self.bounds.size.height*0.4, 100, 30)];
        self.result.text = @"BMI:";
        self.result.editable = false;
        [self addSubview:self.weight];
        [self addSubview:self.height];
        [self addSubview:self.btn];
        [self addSubview:self.result];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
