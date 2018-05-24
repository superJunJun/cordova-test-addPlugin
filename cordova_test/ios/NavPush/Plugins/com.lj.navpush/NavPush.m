//
//  NavPushClass.m
//  HelloWorld
//
//  Created by lijun on 2018/5/22.
//

#import "NavPush.h"

@implementation NavPush

- (void)navigationPush:(CDVInvokedUrlCommand*)command {
    UIViewController *nextVC = [[UIViewController alloc] init];

    UIViewController *currentVc = [self currentViewController];
    [currentVc.navigationController pushViewController:nextVC animated:YES];

}

//确定是哪个viewcontroller
-(UIViewController *)currentViewController{
    
    UIViewController * currVC = nil;
    UIViewController * Rootvc = [UIApplication sharedApplication].delegate.window.rootViewController ;
    do {
        if ([Rootvc isKindOfClass:[UINavigationController class]]) {
            UINavigationController * nav = (UINavigationController *)Rootvc;
            UIViewController * v = [nav.viewControllers lastObject];
            currVC = v;
            Rootvc = v.presentedViewController;
            continue;
        }else if([Rootvc isKindOfClass:[UITabBarController class]]){
            UITabBarController * tabVC = (UITabBarController *)Rootvc;
            currVC = tabVC;
            Rootvc = [tabVC.viewControllers objectAtIndex:tabVC.selectedIndex];
            continue;
        }
    } while (Rootvc!=nil);
    
    return currVC;
}

@end
