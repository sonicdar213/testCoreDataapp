//
//  AppDelegate.h
//  TestCoreDataapp
//
//  Created by Truong Son Nguyen on 8/20/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

