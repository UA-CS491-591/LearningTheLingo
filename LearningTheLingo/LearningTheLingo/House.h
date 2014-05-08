//
//  TestObject.h
//  LearningTheLingo
//
//  Created by CS491 on 5/7/14.
//  Copyright (c) 2014 MattIsTheGreatest. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface House : NSObject {
    
}

@property NSString *Name;
@property int houseHeight;

//Instance methods
-(void)addStories:(int)numberOfStories;
-(void)addStories:(int)numberOfStories speedily:(BOOL)b;

//Class methods
+(int)defaultHouseHeight;
@end
