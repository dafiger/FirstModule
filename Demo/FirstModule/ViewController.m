//
//  ViewController.m
//  OCModuleDemo
//
//  Created by wangpf on 2019/6/3.
//  Copyright © 2019 dafiger. All rights reserved.
//

#import "ViewController.h"
#import "FirstProtocol.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self gotoFirst:@"123"];
    // Do any additional setup after loading the view.
}

- (void)gotoFirst:(NSString *)userID {
    //    id obj = [[MediatorManager sharedInstance] fetchService:@protocol(FirstProtocol)];
    //    id obj = [MediatorManager moduleInstanceFromProtocol:@protocol(FirstProtocol)];
    id obj = PRGetModuleInstance(FirstProtocol);
    UIViewController *firstVC = [obj homePage:userID];
    if ([firstVC isKindOfClass:[UIViewController class]]) {
        NSLog(@"找到 firstVC");
    }
}

@end
