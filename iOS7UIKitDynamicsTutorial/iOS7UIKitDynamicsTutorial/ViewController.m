//
//  ViewController.m
//  iOS7UIKitDynamicsTutorial
//
//  Created by Arthur Knopper on 12-01-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) UIGravityBehavior *gravity;
@property (nonatomic, strong) UICollisionBehavior *collision;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UIView *myView = [[UIView alloc] initWithFrame: CGRectMake(125,200,50,50)];
    myView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:myView];
    
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    self.gravity = [[UIGravityBehavior alloc] initWithItems:@[myView]];
    
    [self.animator addBehavior:self.gravity];
    
    self.collision = [[UICollisionBehavior alloc] initWithItems:@[myView]];
    self.collision.translatesReferenceBoundsIntoBoundary = YES;
    
    [self.animator addBehavior:self.collision];
    
    /*UIView *square = [[UIView alloc] initWithFrame: CGRectMake(100, 100, 100, 100)];
     square.backgroundColor = [UIColor grayColor];
     
     [self.view addSubview:square];
     
     UIView *barrier = [[UIView alloc] initWithFrame:CGRectMake(0, 300, 130, 20)];
     barrier.backgroundColor = [UIColor redColor];
     
     [self.view addSubview:barrier];
     
     self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
     self.gravity = [[UIGravityBehavior alloc] initWithItems:@[square]];
     
     [self.animator addBehavior:self.gravity];
     
     
     // add a boundary that coincides with the top edge
     CGPoint rightEdge = CGPointMake(barrier.frame.origin.x + barrier.frame.size.width,
     barrier.frame.origin.y);
     [self.collision addBoundaryWithIdentifier:@"barrier" fromPoint:barrier.frame.origin toPoint:rightEdge];
     
     [self.animator addBehavior:self.collision];
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
