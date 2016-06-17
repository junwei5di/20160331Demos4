//
//  main.m
//  drawShape(OC实现)
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum
{
    kBlue,
    kYellow,
    kGreen
}shapeColor;
typedef struct
{
    int x;
    int y;
    int width;
    int height;
} shapeRect;

//声明一个圆形类
@interface Circle : NSObject
{
    shapeRect _rect;
    shapeColor _fillcolor;
}
-(void)setRect:(shapeRect)rect andFillcolor:(shapeColor)color;
-(void)drawCircle;
-(NSString *)colorNameWithEnum:(shapeColor)color;//转换颜色地方法
@end
@implementation Circle
-(NSString *)colorNameWithEnum:(shapeColor)color
{
    switch (color)
    {
        case kYellow:
            return @"YellowColor";
            break;
        case kBlue:
            return @"BlueColor";
            break;
        case kGreen:
            return @"GreenColor";
            break;
        default:
            break;
    }
}             
-(void)setRect:(shapeRect)rect andFillcolor:(shapeColor)color
{
    _rect=rect;
    _fillcolor=color;
}
-(void)drawCircle
{
    NSLog(@"draw a \"Circle\" at (%d,%d,%d,%d) with %@",_rect.x,_rect.y,_rect.width,_rect.height,[self colorNameWithEnum:_fillcolor]);//self表示当前类的对象,放在那个地方就指的谁
}

@end
//声明一个矩形
@interface Rectangle : NSObject
{
    shapeRect _rect;
    shapeColor _fillcolor;
}
-(void)setRect:(shapeRect)rect andFillcolor:(shapeColor)color;
-(void)drawRectangle;
-(NSString *)colorNameWithEnum:(shapeColor)color;//转换颜色地方法
@end
@implementation Rectangle
-(NSString *)colorNameWithEnum:(shapeColor)color
{
    switch (color)
    {
        case kYellow:
            return @"YellowColor";
            break;
        case kBlue:
            return @"BlueColor";
            break;
        case kGreen:
            return @"GreenColor";
            break;
        default:
            break;
    }
}
-(void)setRect:(shapeRect)rect andFillcolor:(shapeColor)color
{
    _rect=rect;
    _fillcolor=color;
}
-(void)drawRectangle
{
    NSLog(@"draw a \"Rectangle\" at (%d,%d,%d,%d) with %@",_rect.x,_rect.y,_rect.width,_rect.height,[self colorNameWithEnum:_fillcolor]);//self表示当前类的对象,放在那个地方就指的谁
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        Circle *c1=[Circle new];
        [c1 setRect:(shapeRect){1,2,43,5} andFillcolor:kGreen];
        [c1 drawCircle];
        
        Rectangle *r1=[Rectangle new];
        [r1 setRect:(shapeRect){2,4,5,4} andFillcolor:kBlue];
        [r1 drawRectangle];
        
    }
    return 0;
}
