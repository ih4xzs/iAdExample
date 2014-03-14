//
//  FirstViewController.h
//  TabbediAd
//
//  Created by Daniboy on 3/14/14.
//  Copyright (c) 2014 Daniboy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
@interface FirstViewController : UIViewController <ADBannerViewDelegate>
{
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (strong, nonatomic) IBOutlet UIImageView *imageFirst;

@end
