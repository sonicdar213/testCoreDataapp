//
//  Photo+CoreDataProperties.m
//  TestCoreDataapp
//
//  Created by Truong Son Nguyen on 8/24/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

#import "Photo+CoreDataProperties.h"

@implementation Photo (CoreDataProperties)

+ (NSFetchRequest<Photo *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Photo"];
}

@dynamic descriptiontext;
@dynamic img;
@dynamic title;

@end
