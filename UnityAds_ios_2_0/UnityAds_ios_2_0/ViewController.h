//
//  ViewController.h
//  UnityAds_ios_2_0
//
//  Created by Aylin on 2016. 10. 28..
//  Copyright © 2016년 Aylin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UnityAds/UnityAds.h"

@interface ViewController : UIViewController<UnityAdsDelegate>
- (IBAction)adsButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *adsButton;
@property (weak, nonatomic) IBOutlet UILabel *coinLabel;


@end

