//
//  ViewController.m
//  各种测试
//
//  Created by Donnie Xie on 2017/5/30.
//  Copyright © 2017年 Donnie Xie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.view setBackgroundColor:[UIColor whiteColor]];
//    [self.view setBackgroundColor:[UIColor.whiteColor colorWithAlphaComponent:0.5f]];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.bounds) - 100, CGRectGetWidth(self.view.bounds), 100)];
//    [view setBackgroundColor:[UIColor whiteColor]];
    [view setBackgroundColor:[UIColor colorWithWhite:0.9f alpha:0.5f]];
//    [self.view addSubview:view];
//    [view setAlpha:0.2];
//    [view.layer setOpacity:0.5f];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, view.frame.size.width, 40)];
    label.textAlignment = NSTextAlignmentCenter;
    [label setBackgroundColor: [UIColor lightGrayColor]];
    [label setTextColor:[UIColor blackColor]];
    label.text = @"各种测试";
    [view addSubview:label];
    [_button.titleLabel setTextAlignment:NSTextAlignmentLeft];
    NSLog(@"%@",_button);
}
- (IBAction)pressed:(UIButton *)sender {
    if (_testView.hidden) {
//        [self.view setBackgroundColor:[UIColor colorWithWhite:1.0f alpha:0.9f]];
        [self.view setBackgroundColor:[UIColor.whiteColor colorWithAlphaComponent:0.9f]];
        _testView.hidden = NO;
    }else {
        _testView.hidden = YES;
        [self.view setBackgroundColor:[UIColor whiteColor]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
