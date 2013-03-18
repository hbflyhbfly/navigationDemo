//
//  SecondViewController.m
//  navigationDemo
//
//  Created by 周飞 on 13-3-14.
//  Copyright (c) 2013年 周飞. All rights reserved.
//

#import "SecondViewController.h"
#import "ThridViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

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
    [self setTitle:@"second"];
    UIView *secondView = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]applicationFrame]];
    secondView.backgroundColor = [UIColor darkGrayColor];
    self.view = secondView;
    //隐藏导航控制栏
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(90, 100, 140, 40);
    [button setTitle:@"hidden" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(hidden) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    //压入新的视图控制器
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(90, 300, 140, 40);
    [button1 setTitle:@"push" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
}

-(void)hidden
{
    //导航控制隐藏
    if (self.navigationController.toolbarHidden) {
        [self.navigationController setNavigationBarHidden:NO animated:YES];
        [self.navigationController setToolbarHidden:NO animated:YES];
    } else {
        [self.navigationController setNavigationBarHidden:YES animated:YES];
        [self.navigationController setToolbarHidden:YES animated:YES];
    }
    //[self.navigationController setNavigationBarHidden:YES animated:YES];
    
}

-(void)push
{
    ThridViewController *thirdViewCOntroller = [[ThridViewController alloc]init];
    [self.navigationController pushViewController:thirdViewCOntroller animated:YES];
}

-(void)viewWillAppear:(BOOL)animated
{
    //默认是隐藏的
    [self.navigationController setToolbarHidden:NO animated:YES];
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
