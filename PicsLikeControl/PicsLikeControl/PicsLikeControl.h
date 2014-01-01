//
//  PicLikeControl.h
//  PicsLikeControl
//
//  Created by Tu You on 13-12-27.
//  Copyright (c) 2013年 Tu You. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PicsLikeControlDelegate <NSObject>

- (void)controlTappedAtIndex:(int)index;

@end

@interface PicsLikeControl : UIView <UIGestureRecognizerDelegate>

@property (nonatomic, weak) id <PicsLikeControlDelegate> delegate;

/**
 *  initialization
 *
 *  @param frame         frame of the view
 *  @param image         default image for the button above
 *  @param behindImage   defautt image for the button below
 *
 *  @return PicsLikeControl
 */

- (id)initWithFrame:(CGRect)frame
         frontImage:(UIImage *)image
        behindImage:(UIImage *)behindImage;

/**
 *  initialization
 *
 *  @param frame         frame of the view
 *  @param multiImages   a series of images for the series of button
 *
 *  @return PicsLikeControl
 */
- (id)initWithFrame:(CGRect)frame
        multiImages:(NSArray *)multiImages;

@end
