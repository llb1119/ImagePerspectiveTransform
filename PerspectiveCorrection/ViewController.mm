//
//  ViewController.mm
//
//  Created by liulb on 16/4/6.
//  Copyright © 2016年 liulibo. All rights reserved.
//

#import "UIImage+PerspectiveTransform.h"

#import "ViewController.h"
@interface ViewController ()
@property(weak, nonatomic) IBOutlet UIImageView *srcImageView;
@property(weak, nonatomic) IBOutlet UIImageView *dstImageView;
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self showPic];
}
- (void)showPic {
    UIImage *srcImage = [UIImage imageNamed:@"business_card1"];
    self.srcImageView.image = srcImage;
    self.srcImageView.contentMode = UIViewContentModeScaleToFill;
    UIImage *dstImage = [srcImage getTransformImage];
    self.dstImageView.image = dstImage;
    self.dstImageView.contentMode = UIViewContentModeScaleAspectFit;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
