//
//  FirstVC.m
//  ProtocolDemo
//
//  Created by wangpf on 2019/5/21.
//  Copyright © 2019 wpf. All rights reserved.
//

#import "FirstVC.h"

#import "MediatorManager.h"
#import "SecondProtocol.h"

@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self gotoSecond:@"987"];
    // Do any additional setup after loading the view.
}

- (void)gotoSecond:(NSString *)userID {
    //    id obj = [[MediatorManager sharedInstance] fetchService:@protocol(SecondProtocol)];
    //    id obj = [MediatorManager moduleInstanceFromProtocol:@protocol(SecondProtocol)];
    id obj = PRGetModuleInstance(SecondProtocol);
    UIViewController *secondVC = [obj homePage:userID];
    if ([secondVC isKindOfClass:[UIViewController class]]) {
        NSLog(@"FirstVC 准备调用 secondVC");
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
