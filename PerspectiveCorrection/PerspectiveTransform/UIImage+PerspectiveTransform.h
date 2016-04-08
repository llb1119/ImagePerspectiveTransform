//
//  UIImage+PerspectiveTransform.h
//
//  Created by liulb on 16/4/6.
//  Copyright © 2016年 liulibo. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef struct SquarePoint {
    CGPoint p0;
    CGPoint p1;
    CGPoint p2;
    CGPoint p3;
} SquarePoint;
@interface UIImage (PerspectiveTransform)
/**
 *  get perspective transformed image
 *
 *  @return image
 */
- (UIImage *)getTransformImage;
/**
 *  get square points
 *
 *  @return SquarePoint
 */
- (SquarePoint)getSquare;
@end
