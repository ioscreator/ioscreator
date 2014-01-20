//
//  MyScene.m
//  SpriteAnimationTutorial
//
//  Created by Arthur Knopper on 18-01-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "MyScene.h"

@interface MyScene()

@property (nonatomic,strong) SKAction *spriteAnimation;
@property (nonatomic, strong) SKSpriteNode *sprite;

@end

@implementation MyScene


-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        
        self.scene.backgroundColor = [UIColor whiteColor];
        
        self.sprite = [SKSpriteNode spriteNodeWithImageNamed:@"robot1.png"];
        self.sprite.position = CGPointMake(self.size.width/2, self.size.height/2);
        
        [self addChild:self.sprite];

        NSMutableArray *textures = [NSMutableArray arrayWithCapacity:4];
        
        for (int i = 1; i < 5; i++) {
            NSString *textureName =
            [NSString stringWithFormat:@"robot%d", i];
            SKTexture *texture =
            [SKTexture textureWithImageNamed:textureName];
            [textures addObject:texture];
        }
    
        self.spriteAnimation =
        [SKAction animateWithTextures:textures timePerFrame:0.2];
        
        SKAction *repeat = [SKAction repeatActionForever:self.spriteAnimation];
        [self.sprite runAction:repeat];
    }
    
    return self;
}


-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
