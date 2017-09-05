//
//  ViewController.m
//  KlotskiPuzzle
//
//  Created by Leonardo on 2017/9/5.
//  Copyright © 2017年 GreatGate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;

@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) UIView *squareView;
@property (nonatomic, strong) UIPushBehavior *pushBehavior;





@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    self.pushBehavior = [[UIPushBehavior alloc] initWithItems:@[_view1,_view3, _view2] mode:UIPushBehaviorModeInstantaneous];
    [self.animator addBehavior:self.pushBehavior];
//
//    
////     3.添加行为到动画者对象
    
    
        // 添加一个碰撞
//        UICollisionBehavior  *collision = [[UICollisionBehavior alloc] initWithItems:@[_view1,_view2, _view3]];
//        collision.translatesReferenceBoundsIntoBoundary = YES;
//        [self.animator addBehavior:collision];
    
}

- (IBAction)pan1:(UIPanGestureRecognizer *)pan {
    
    
    
    if (pan.state == UIGestureRecognizerStateEnded) {
        
        _view1.center = CGPointMake(_view1.center.x + 10, 0);
        
    }
    
    
    
}
- (IBAction)pan2:(UIPanGestureRecognizer *)pan {
    if (pan.state == UIGestureRecognizerStateEnded) {
        
        _view2.center = CGPointMake(_view1.center.x + 10, 0);
        
    }
}
- (IBAction)pan3:(UIPanGestureRecognizer *)pan {
    if (pan.state == UIGestureRecognizerStateEnded) {
        
        _view3.center = CGPointMake(_view1.center.x + 10, 0);
        
    }
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    // 获取触摸对象
//    UITouch *t = touches.anyObject;
//    // 获取手指的坐标点
//    CGPoint p = [t locationInView:t.view];
//    
//    // 1.创建动画者对象
//    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
//    
//    // 2.创建行为
//    //     UIPushBehaviorModeContinuous 持续推理(越来越快)
//    //     UIPushBehaviorModeInstantaneous (瞬时推理)(越来越慢)
//    UIPushBehavior *push = [[UIPushBehavior alloc] initWithItems:@[_view1,_view2, _view3] mode:UIPushBehaviorModeInstantaneous];
//    push.magnitude = 1;
//    // 计算手指到redView中心点的偏移量
//    CGFloat offsetX = p.x - self.view1.center.x;
//    CGFloat offsetY = p.y - self.view1.center.y;
//    // 设置手指到redView中心偏移量为推行为的向量方向
//    push.pushDirection = CGVectorMake(-offsetX, -offsetY);
//    // 设置推行为的活跃状态 YES:活跃 NO:不活跃
//    push.active = YES;
//    
//    // 3.添加行为到动画者对象
//    
//    [self.animator addBehavior:push];
//    
//    //}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
