//
//  TNImageView.m
//  ThinningLib_Example
//
//  Created by 刘志伟 on 2021/1/6.
//  Copyright © 2021 MisterZhiWei. All rights reserved.
//

#import "TNImageView.h"

@implementation TNImageView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        [self addSubviews];
        [self makeSubviewsConstraint];
    }
    return self;
}

- (void)addSubviews {
    NSBundle *cbundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [cbundle pathForResource:@"ThinningLib" ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    
    UIImageView *left = [[UIImageView alloc] initWithFrame:CGRectMake(10, 50, 100, 100)];
    [left setBackgroundColor:UIColor.redColor];
    left.image = [UIImage imageNamed:@"icon_kebiao_p" inBundle:bundle compatibleWithTraitCollection:nil];
    [self addSubview:left];
    
//    UIImageView *right = [[UIImageView alloc] initWithFrame:CGRectMake(200, 50, 100, 100)];
//    [right setBackgroundColor:UIColor.blueColor];
//    
//    
//    right.image = [UIImage imageNamed:@"home_page_icon_me" inBundle:bundle compatibleWithTraitCollection:nil];
//    [self addSubview:right];
}

#pragma mark - 约束
- (void)makeSubviewsConstraint {
    
}
#pragma mark - event

#pragma mark - getter

@end
