//
//  Photo+CoreDataProperties.h
//  TestCoreDataapp
//
//  Created by Truong Son Nguyen on 8/24/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

#import "Photo+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Photo (CoreDataProperties)

+ (NSFetchRequest<Photo *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *descriptiontext;
@property (nullable, nonatomic, retain) NSData *img;
@property (nullable, nonatomic, copy) NSString *title;

@end

NS_ASSUME_NONNULL_END
