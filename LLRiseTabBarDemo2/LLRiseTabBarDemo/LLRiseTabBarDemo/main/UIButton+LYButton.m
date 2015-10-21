//
//  UIButton+LYButton.m
//  LLRiseTabBarDemo
//
//  Created by LianLeven on 15/10/21.
//  Copyright © 2015年 lichangwen. All rights reserved.
//

#import "UIButton+LYButton.h"

@implementation UIButton (LYButton)
- (void)setTitlePositionWithType:(ButtonTitlePostionType)type {
    switch (type) {
        case ButtonTitlePostionTypeBottom: {
            CGFloat spacing = 2.0;
            CGSize imageSize = self.imageView.frame.size;
            self.titleEdgeInsets = UIEdgeInsetsMake(0.0, - imageSize.width, - (imageSize.height + spacing) - 26, 0.0);
            CGSize titleSize = self.titleLabel.frame.size;
            self.imageEdgeInsets = UIEdgeInsetsMake(-(titleSize.height + spacing), 0.0, 0.0, - titleSize.width);
            break;
        }
        case ButtonTitlePostionTypeRight: {
            break;
        }
            
        default:
            break;
    }
}
@end
