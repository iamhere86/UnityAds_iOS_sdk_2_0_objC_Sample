//
//  ViewController.m
//  UnityAds_ios_2_0
//
//  Created by Aylin on 2016. 10. 28..
//  Copyright © 2016년 Aylin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [UnityAds initialize:@"1171946" delegate:self testMode:false];
    _adsButton.hidden=true;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)adsButton:(id)sender {
    
    if ([UnityAds isReady:@"rewardedVideo"]) {
        [UnityAds show:self placementId:@"rewardedVideo"];
    }
}

- (void)unityAdsReady:(NSString *)placementId{
    _adsButton.hidden=false;
    
}

- (void)unityAdsDidError:(UnityAdsError)error withMessage:(NSString *)message{
    
}

- (void)unityAdsDidStart:(NSString *)placementId{
    
}
- (void)unityAdsDidFinish:(NSString *)placementId
          withFinishState:(UnityAdsFinishState)state{
    if (state!=kUnityAdsFinishStateSkipped){
        _coinLabel.text=@"coin:10";
    }
}

@end
