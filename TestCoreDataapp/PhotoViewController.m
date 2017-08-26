//
//  PhotoViewController.m
//  TestCoreDataapp
//
//  Created by Truong Son Nguyen on 8/22/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

#import "PhotoViewController.h"
#import <CoreData/CoreData.h>
@interface PhotoViewController ()

@end

@implementation PhotoViewController

@synthesize photodb;

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.photodb) {
        [self.textfieldlabel setText:[self.photodb valueForKey:@"title"]];
        [self.descriptiontextfield setText:[self.photodb valueForKey:@"descriptiontext"]];
        

}
    self.navigationController.navigationBar.topItem.title = @"";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)camerapressed:(id)sender {
}
- (IBAction)librarypressed:(id)sender {
}

- (IBAction)savebtn:(id)sender {
     [super.navigationController dismissViewControllerAnimated:YES completion:nil];
//     Create a new managed object
  NSManagedObjectContext *context = [self managedObjectContext];
 if (self.photodb) {
        // Update existing device
        [self.photodb setValue:self.textfieldlabel.text forKey:@"title"];
        [self.photodb setValue:self.descriptiontextfield.text forKey:@"descriptiontext"];
        NSLog(@"updated Data");
         
    }else {
        // Create a new device
        NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Photo" inManagedObjectContext:context];
        [newDevice setValue:self.textfieldlabel.text forKey:@"title"];
        [newDevice setValue:self.descriptiontextfield.text forKey:@"descriptiontext"];
        NSLog(@"Core Data");
        
    }
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
//   [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

@end
