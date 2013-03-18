//
//  RootViewController.m
//  navigationDemo
//
//  Created by 周飞 on 13-3-14.
//  Copyright (c) 2013年 周飞. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

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
    [self setTitle:@"root"];
    UIView *baseView = [[UIView alloc]initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor grayColor];
    self.view = baseView;
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(90, 300, 140, 40);
    [button setTitle:@"push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    //UIToolBar
    UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 100, 320, 40)];
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self
                                                                              action:nil];
    UIBarButtonItem *editItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self
                                                                              action:nil];
    UIBarButtonItem *titleItem = [[UIBarButtonItem alloc]initWithTitle:@"Title" style:UIBarButtonItemStylePlain target:self action:nil];
    UIBarButtonItem *space = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    //空白填补
    NSArray *items = @[addItem,space,editItem,space,titleItem];
    [toolBar setItems:items animated:YES];
    //工具栏的隐藏和动画
    [self.navigationController setToolbarHidden:NO animated:NO];
    //才手动添加ToolBar
    //[self.view addSubview:toolBar];
    //这样不能实现
    //[self.navigationController.toolbar setItems:items animated:YES];
    //利用navigation
    [self setToolbarItems:items animated:YES];
    
    //UIDevice *d = [[UIDevice alloc]init];
    //NSLog(@"%@",d.systemVersion) ;
}

-(void)push
{
    SecondViewController * secondViewControl = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secondViewControl animated:(YES)];
    
}



-(void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"didShowViewController");
}

-(void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"willShowViewController");
}


-(void)viewWillAppear:(BOOL)animated
{
    //默认是隐藏的
    [self.navigationController setToolbarHidden:NO animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //设置UINavigation代理
    self.navigationController.delegate = self;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
