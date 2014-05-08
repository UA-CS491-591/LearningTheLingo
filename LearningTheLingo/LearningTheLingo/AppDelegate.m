//
//  AppDelegate.m
//  LearningTheLingo
//
//  Created by CS491 on 5/7/14.
//  Copyright (c) 2014 MattIsTheGreatest. All rights reserved.
//

#import "AppDelegate.h"
#import "House.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //String building
    NSString *myBasicString = @"Basic String";
    NSString *myIntString = [[NSString alloc] initWithFormat:@"%d", 123];
    NSString *myFloatString = [[NSString alloc] initWithFormat:@"%f", 123.123];
    NSString *myStringString = [[NSString alloc] initWithFormat:@"%@%@ - %d", @"First String", @"Second", 123];
    NSLog(@"%@", myStringString);
    
    //NSArray long-hand
    NSNumber *number = [[NSNumber alloc] initWithInt:32];
    NSArray *myArray = [[NSArray alloc] initWithObjects:@"First Object", number, nil];
    myArray = @[@"New Array First Object", @"New Array Second"]; //Short-hand
    myStringString = [myArray objectAtIndex:0]; //Get me the first object
    myStringString = myArray[0]; //Shorthand for "get me first object"
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithArray:myArray];
    [mutableArray addObject:@"Added Object"];
    [mutableArray removeObjectAtIndex:0]; //Remove first item in array
    [mutableArray insertObject:@"Inserted object" atIndex:1];
    
    //NSNumber
    NSNumber *myNumber = [[NSNumber alloc] initWithBool:YES];
    NSLog(@"%d", myNumber.intValue);
    NSLog(@"%f", myNumber.floatValue);
    NSLog(@"%d", myNumber.boolValue);
    
    //NSDate
    NSDate *date = [NSDate date]; //Gets the current time
    NSLog(@"%@", date);
    
    //Define a date formatter for printing out specific time zones/locales/etc.
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"CDT"]];
    
    NSString *asdf = [formatter stringFromDate:date];
    NSLog(@"%@", [formatter stringFromDate:date]);
    
    
    //NSDictionary
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithObjects:@[myNumber] forKeys:@[@"First Key"]];
    [dictionary setValue:@"Second Object" forKey:@"First Key"];
    
    //Call method in same class (see below)
    //"self" essentially means "this object"
    [self workWithHouse];
    
    return YES;
}

-(void)workWithHouse{
    //Creating a custom object
    House *myHouse;
    myHouse = [[House alloc] init]; //Initializing it
    myHouse.Name = @"Matt's House"; //Setting property values
    myHouse.houseHeight = 123; //Setting primitive property values
    
    //Calling an instance method with one parameter
    [myHouse addStories:3];
    
    //Calling am instance method with multiple input parameters
    [myHouse addStories:2 speedily:YES];
    
    //Calling a method that returns a value
    int houseHeight = [myHouse houseHeight];
    
    //Calling a class method. These do not require an instance of a class
    myHouse.houseHeight = [House defaultHouseHeight];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
