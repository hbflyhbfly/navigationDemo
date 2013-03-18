//
//  AppDelegate.h
//  navigationDemo
//
//  Created by 周飞 on 13-3-14.
//  Copyright (c) 2013年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@end

@interface UINavigationBar (SetBackGround)
-(void)drawRect:(CGRect)rect;
@end