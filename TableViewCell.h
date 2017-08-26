//
//  TableViewCell.h
//  TestCoreDataapp
//
//  Created by Truong Son Nguyen on 8/20/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UILabel *titletext;
@property (weak, nonatomic) IBOutlet UILabel *descriptiontext;
-(void)configurecell ;
@end
