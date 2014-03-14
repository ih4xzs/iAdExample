//
//  SecondViewController.m
//  TabbediAd
//
//  Created by Daniboy on 3/14/14.
//  Copyright (c) 2014 Daniboy. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end
    NSString *arrayUrlStrings[4] = {@"http://1.bp.blogspot.com/_p0ZTd1mmzMU/TIQXL67HhZI/AAAAAAAAAHY/6Q9jQ12Ifhk/s320/your_ad_here.png",@"http://mobilesitelinkexchange.com/wp-content/uploads/2011/12/320x50mobile_standard1.jpg",@"http://www.distinctivegames.com/wp-content/uploads/320x50-LIVE-banner.png", @"https://www.google.com/help/hc/images/mobile300-50b.png"};
    NSURL *url;
    NSURL *url2;
    NSURL *url3;
    NSData *data;
    NSData *data2;
    NSData *data3;
@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self charge];

}

-(void) charge{
    url = [NSURL URLWithString:arrayUrlStrings[(arc4random()%4)]];
    url2 = [NSURL URLWithString:arrayUrlStrings[(arc4random()%4)]];
    url3 = [NSURL URLWithString:arrayUrlStrings[(arc4random()%4)]];
    
    data = [NSData dataWithContentsOfURL:url];
    data2 = [NSData dataWithContentsOfURL:url2];
    data3 = [NSData dataWithContentsOfURL:url3];
    
    self.imageOne.image = [UIImage imageWithData:data];
    self.imageTwo.image = [UIImage imageWithData:data2];
    self.imageThree.image = [UIImage imageWithData:data3];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)refreshAd:(id)sender {
    [self charge];
}

@end
