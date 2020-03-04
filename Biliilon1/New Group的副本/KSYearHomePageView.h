//
//  KSYearHomePageView.h
//  Biliilon1
//
//  Created by 杨倩 on 2020/3/3.
//  Copyright © 2020 杨倩. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


//定义button交给代理处理
@protocol KSHomePageViewDelegate <NSObject>

- (void)doClickEditNewTarget:(UIButton *)btn;
- (void)doClickYearTarget:(UIButton *)btn;
- (void)doClickQuarterTarget:(UIButton *)btn;
- (void)doClickMonthTarget:(UIButton *)btn;
- (void)doClickDayTarget:(UIButton *)btn;

@end

@interface KSYearHomePageView : UIView

//
@property (nonatomic,weak) id<KSHomePageViewDelegate> homePageViewDelegate;

@end

NS_ASSUME_NONNULL_END
