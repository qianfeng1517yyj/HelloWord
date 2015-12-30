//
//  RootViewController.m
//  D2-UseOfUILabel
//
//  Created by Jerry on 15/11/2.
//  Copyright © 2015年 Jerry. All rights reserved.
//

#import "RootViewController.h"

#define VIEW_WIDTH  self.view.frame.size.width
#define VIEW_HEIGHT self.view.frame.size.height

@interface RootViewController ()

@end

@implementation RootViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //基本属性
    [self baseAttributes];
    //layer图层
    [self layerAttributes];
    //测试行数
    [self lineNumber];
    //截断方式
    [self breakMode];
    //测试字体
    [self testFont];
    //tag与子视图
    [self tagAndSubviews];
    //设置背景色
    [self backgroundColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)baseAttributes
{
    UILabel *label = [[UILabel alloc] init];
    
    //设置尺寸
    label.frame = CGRectMake(50, 50, VIEW_WIDTH-100, 50);
    //设置背景色
    label.backgroundColor = [UIColor greenColor];
    //设置文本
    label.text = @"刷歪歪";
    //对齐方式
    label.textAlignment = NSTextAlignmentCenter;
    //设置字体
    label.font = [UIFont systemFontOfSize:30];
    //字体颜色
    label.textColor = [UIColor blueColor];
    //设置阴影(偏移及颜色)
    label.shadowOffset = CGSizeMake(5, 5);
    label.shadowColor = [UIColor grayColor];
    //设置透明度，默认为1.0，不透明，范围(0~1)
    label.alpha = 0.5;
    
    [self.view addSubview:label];
    [label release];
}

- (void)layerAttributes
{
    UILabel *label = [[UILabel alloc] init];
    
    label.backgroundColor = [UIColor redColor];
    label.frame = CGRectMake(50, 120, VIEW_WIDTH-100, 50);
    //设置圆角半径
    label.layer.cornerRadius = 15;
    //设置边框宽度
    label.layer.borderWidth = 5;
    //设置边框颜色
    label.layer.borderColor = [[UIColor yellowColor] CGColor];
    //允许剪切边界
    label.clipsToBounds = YES;
    
    //唯一标识一个试图的整数，默认为0
    label.tag = 250;
    
    [self.view addSubview:[label autorelease]];
}

- (void)lineNumber
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 190, VIEW_WIDTH-100, 100)];
    
    label.backgroundColor = [UIColor blueColor];
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:20];
    label.text = @"label label label label label label label label label label label label label label label label label label label label label";
    //设置显示行数，当大于能够显示的行数时无效，0为不限制
    label.numberOfLines = 0;
    //自动适应字体大小
    label.adjustsFontSizeToFitWidth = YES;
    //设置适应的最小字体
    //label.minimumFontSize = 18;
    
    [self.view addSubview:[label autorelease]];
}

- (void)breakMode
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 310, VIEW_WIDTH-100, 100)];
    
    label.backgroundColor = [UIColor blueColor];
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:20];
    label.text = @"label label label label label label label label label label label label label label label label label label label label label";
    label.numberOfLines = 3;
    
    //设置截断方式
    label.lineBreakMode = NSLineBreakByClipping;
    
    [self.view addSubview:[label autorelease]];
}

- (void)testFont
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 430, VIEW_WIDTH-100, 50)];
    
    label.backgroundColor = [UIColor orangeColor];
    label.text = @"Monday";
    //系统字体
    label.font = [UIFont systemFontOfSize:30];
    //粗体
    label.font = [UIFont boldSystemFontOfSize:30];
    //斜体，中文无效
    label.font = [UIFont italicSystemFontOfSize:30];
    //指定字体
    label.font = [UIFont fontWithName:@"BodoniSvtyTwoOSITCTT-Bold" size:30];
/*
    //字体族
    NSArray *array = [UIFont familyNames];
    for (NSString *familyName in array) {
        printf("\n%s\n", familyName.UTF8String);
        NSArray *subAry = [UIFont fontNamesForFamilyName:familyName];
        for (NSString *name in subAry) {
            printf("%s\n", name.UTF8String);
        }
    }
*/
    [self.view addSubview:[label autorelease]];
}

- (void)tagAndSubviews
{
#if 0
    UILabel *label = self.view.subviews[1];
#else
    UILabel *label = (UILabel *)[self.view viewWithTag:250];
#endif
    label.text = @"tag&subviews";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:30];
}

- (void)backgroundColor
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(VIEW_WIDTH/2-65, 500, 130, 97)];
    
    //指定颜色
    label.backgroundColor = [UIColor redColor];
    //通过RGB(红绿蓝三原色)，范围(0~1)
#define Random arc4random()%256/255.0
    label.backgroundColor = [UIColor colorWithRed:Random green:Random blue:Random alpha:1.0];
    //通过一张图片指定颜色
    label.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.jpg"]];
    label.layer.borderColor = [[UIColor yellowColor] CGColor];
    label.layer.borderWidth = 2;
    
    [self.view addSubview:[label autorelease]];
}

@end






