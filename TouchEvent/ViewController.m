//
//  ViewController.m
//  TouchEvent
//
//  Created by dengbin on 14/9/18.
//  Copyright (c) 2014年 IUAIJIA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    _textFiled=[[UITextField alloc] initWithFrame:CGRectMake(0, 100, 320, 40)];
    _textFiled.backgroundColor=[UIColor whiteColor];
    _textFiled.clearButtonMode=UITextFieldViewModeAlways;
    [self.view addSubview:_textFiled];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)onScreenTouch:(NSNotification *)notification
{
    UIEvent *event=[notification.userInfo objectForKey:@"data"];
    
    NSLog(@"touch screen!!!!!");
    CGPoint pt = [[[[event allTouches] allObjects] objectAtIndex:0] locationInView:_textFiled];
    NSLog(@"pt.x=%f, pt.y=%f", pt.x, pt.y);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
