//
//  PhotoViewController.h
//  TestCoreDataapp
//
//  Created by Truong Son Nguyen on 8/22/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
@interface PhotoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *titlelabel;
@property (weak, nonatomic) IBOutlet UITextField *textfieldlabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionlabel;
@property (weak, nonatomic) IBOutlet UITextField *descriptiontextfield;
@property (weak, nonatomic) IBOutlet UIImageView *photoimg;
@property (strong) NSManagedObject *photodb;


- (IBAction)camerapressed:(id)sender;

- (IBAction)librarypressed:(id)sender;

- (IBAction)savebtn:(id)sender;

@end
