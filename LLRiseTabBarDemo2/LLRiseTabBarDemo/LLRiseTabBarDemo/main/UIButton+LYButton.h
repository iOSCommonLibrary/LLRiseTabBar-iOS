//
//  UIButton+LYButton.h
//  LLRiseTabBarDemo
//
//  Created by LianLeven on 15/10/21.
//  Copyright © 2015年 lichangwen. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, ButtonTitlePostionType) {
    ButtonTitlePostionTypeBottom = 0,
    ButtonTitlePostionTypeRight   ,
    /*............*/
};
@interface UIButton (LYButton)

//设置button的标题在button的位置
- (void)setTitlePositionWithType:(ButtonTitlePostionType)type;

@end
