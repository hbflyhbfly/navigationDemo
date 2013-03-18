//
//  ThridViewController.m
//  navigationDemo
//
//  Created by 周飞 on 13-3-15.
//  Copyright (c) 2013年 周飞. All rights reserved.
//

#import "ThridViewController.h"
@interface ThridViewController ()

@end

@implementation ThridViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)loadView
{
    [self setTitle:@"third"];
    UIView *thirdView = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]applicationFrame]];
    thirdView.backgroundColor = [UIColor darkGrayColor];
    self.view = thirdView;
    //压入新的视图控制器
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(90, 100, 140, 40);
    [button1 setTitle:@"push" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    //返回上个视图控制器
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(90, 150, 140, 40);
    [button2 setTitle:@"back" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    //返回根视图控制器
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3.frame = CGRectMake(90, 200, 140, 40);
    [button3 setTitle:@"root" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(root) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    //返回指定视图控制器
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button4.frame = CGRectMake(90, 250, 140, 40);
    [button4 setTitle:@"index" forState:UIControlStateNormal];
    [button4 addTarget:self action:@selector(index) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button4];
}

-(void)push
{
    ThridViewController *thridViewController = [[ThridViewController alloc]init];
    [self.navigationController pushViewController:thridViewController animated:YES];
}
-(void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)root
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(void)index
{
    UIViewController *second = [[self.navigationController viewControllers]objectAtIndex:1];
    [self.navigationController popToViewController:second animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
