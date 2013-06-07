//
//  leftCell.m
//  Erdioo
//
//  Created by Arie on 6/5/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "leftCell.h"

@implementation leftCell
@synthesize label=_label;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
		
		self.label=[[UILabel alloc]initWithFrame:CGRectMake(10, 0, 300, 40)];
		self.label.font=global_font_bold;
		self.label.textColor=[UIColor whiteColor];
		self.label.backgroundColor=[UIColor clearColor];
		
		[self.contentView addSubview:self.label];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
