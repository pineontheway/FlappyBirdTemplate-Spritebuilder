#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    character = (Character*) [CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceOstacle = 0.0f;
    // your code here
}

-(void)update:(CCTime)delta
{
    timeSinceOstacle +=delta;
    if(timeSinceOstacle>2.0f)
    {
        [self addObstacle];
        timeSinceOstacle=0.0f;
    }
    // put update code here
}

-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{
    [character flap];
}
// put new methods here

@end
