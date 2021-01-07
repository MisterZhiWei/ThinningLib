//
//  TNViewController.m
//  ThinningLib
//
//  Created by MisterZhiWei on 12/25/2020.
//  Copyright (c) 2020 MisterZhiWei. All rights reserved.
//

#import "TNViewController.h"
#import <TNImageView.h>
@interface TNViewController ()

@end

@implementation TNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    TNImageView *imgView = [[TNImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:imgView];
    
    NSBundle *cbundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [cbundle pathForResource:@"ThinningLib/ThinningLib" ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    
    UIImageView *left = [[UIImageView alloc] initWithFrame:CGRectMake(10, 250, 100, 100)];
    [left setBackgroundColor:UIColor.redColor];
    left.image = [UIImage imageNamed:@"icon_kebiao_p" inBundle:bundle compatibleWithTraitCollection:nil];
    [self.view addSubview:left];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
