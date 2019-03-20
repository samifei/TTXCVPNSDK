//
//  ViewController.m
//  TTXCVPNSDK
//
//  Created by ttxc on 2019/3/20.
//  Copyright © 2019 http://www.jianshu.com/u/84d0142cbec9. All rights reserved.
//

#import "ViewController.h"
#import "L4Proxy.h"
#import "CertHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self VPNSDKConnection];
}

-(void)VPNSDKConnection
{
    int iPort = 443;
    NSString *desip = @"mnews.spic.com.cn";
    int vpnResult = -1;
    vpnResult = [[L4Proxy sharedInstance] L4Proxy_ShakeHands_With_VPN:desip IPPort:iPort username:nil password:nil];
    NSLog(@"vpn链接成功---%d",vpnResult);
    int ListenPort = [[L4Proxy sharedInstance] startLocalListen:@"10.80.160.81:20080"];
    NSLog(@"vpn链接成功---获取监听端口 =%d",ListenPort);

}

@end
