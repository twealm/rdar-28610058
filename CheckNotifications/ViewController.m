//
//  ViewController.m
//  CheckNotifications
//
//  Created by Illia Akhaiev on 10/4/16.
//  Copyright © 2016 Illia Akhaiev. All rights reserved.
//

#import "ViewController.h"
#import <UserNotifications/UserNotifications.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scheduleAction:(id)sender {
    
    UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];
    content.body = @"Un notifcation";
    content.sound = [UNNotificationSound defaultSound];
    content.userInfo = @{ @"will crash" : @"for realz" };
    
    UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:1 repeats:NO];
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:@"" content:content trigger:trigger];
    [[UNUserNotificationCenter currentNotificationCenter] addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
    }];
}

@end
