//
//  ViewController.m
//  iOS7CollisionDetectionTutorial
//
//  Created by Arthur Knopper on 25-01-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *squareViews;
@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) NSArray *colors;
@property (nonatomic, strong) NSArray *centerPoint;
@property (nonatomic) CGSize sizeOfSquare;

@property (nonatomic) float leftBoundaryHeight;
@property (nonatomic) float middleBoundaryHeight;
@property (nonatomic) float rightBoundaryHeight;
@property (nonatomic) float leftBoundaryWidth;
@property (nonatomic) float middleBoundaryWidth;
@property (nonatomic) float leftSquareCenterPointX;
@property (nonatomic) float middleSquareCenterPointX;
@property (nonatomic) float rightSquareCenterPointX;
@property (nonatomic) float squareCenterPointY;




- (IBAction)releaseNextSquare:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setBoundaryValues];
    
    // Create the colors array
    self.colors = @[[UIColor redColor], [UIColor blueColor], [UIColor greenColor], [UIColor purpleColor], [UIColor grayColor]];
    
    // Create the centerpoint of our squares
    CGPoint leftCenterPoint = CGPointMake(self.leftSquareCenterPointX, self.squareCenterPointY);
    CGPoint middleCenterPoint = CGPointMake(self.middleSquareCenterPointX, self.squareCenterPointY);
    CGPoint rightCenterPoint = CGPointMake(self.rightSquareCenterPointX, self.squareCenterPointY);
    self.centerPoint = @[[NSValue valueWithCGPoint:leftCenterPoint],[NSValue valueWithCGPoint:middleCenterPoint],[NSValue valueWithCGPoint:rightCenterPoint]];
    
    // set the size of our squares
    self.sizeOfSquare = CGSizeMake(50.0f, 50.0f);
    
    // initialize squareview array
    self.squareViews = [[NSMutableArray alloc] initWithCapacity:100];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setBoundaryValues
{
    self.leftBoundaryHeight = self.view.bounds.size.height - 100.0f;
    self.middleBoundaryHeight = self.view.bounds.size.height - 150.0f;
    self.rightBoundaryHeight = self.view.bounds.size.height - 100.0f;
    self.leftBoundaryWidth = self.view.bounds.size.width/3;
    self.middleBoundaryWidth = self.view.bounds.size.width * 0.67;
    self.leftSquareCenterPointX = self.view.bounds.size.width/6;
    self.middleSquareCenterPointX = self.view.bounds.size.width/2;
    self.rightSquareCenterPointX = self.view.bounds.size.width * 0.84;
    self.squareCenterPointY = self.view.bounds.size.height - 400;
}




- (IBAction)releaseNextSquare:(UIButton *)sender
{
    UIView *newView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.sizeOfSquare.width, self.sizeOfSquare.height)];
    
    int randomColorIndex = arc4random() %5;
    newView.backgroundColor = self.colors[randomColorIndex];
    
    int randomCenterPoint = arc4random() %3;
    newView.center = [self.centerPoint[randomCenterPoint] CGPointValue];
    
    [self.squareViews addObject:newView];
    [self.view addSubview:newView];
    
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    // create gravity
    UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:self.squareViews];
    [self.animator addBehavior:gravity];
    
    // create collision detection
    UICollisionBehavior *collision = [[UICollisionBehavior alloc] initWithItems:self.squareViews];
    
    // set collision boundaries
    [collision addBoundaryWithIdentifier:@"leftBoundary" fromPoint:CGPointMake(0.0f, self.leftBoundaryHeight) toPoint:CGPointMake(self.leftBoundaryWidth, self.leftBoundaryHeight)];
    [collision addBoundaryWithIdentifier:@"middleBoundary" fromPoint:CGPointMake(self.view.bounds.size.width/3, self.middleBoundaryHeight) toPoint:CGPointMake(self.middleBoundaryWidth, self.middleBoundaryHeight)];
    [collision addBoundaryWithIdentifier:@"rightBoundary" fromPoint:CGPointMake(self.middleBoundaryWidth, self.rightBoundaryHeight) toPoint:CGPointMake(self.view.bounds.size.width, self.rightBoundaryHeight)];
    
    collision.collisionMode = UICollisionBehaviorModeEverything;
    
    [self.animator addBehavior:collision];
}

@end
