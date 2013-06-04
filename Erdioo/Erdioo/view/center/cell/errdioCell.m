//
//  errdioCell.m
//  Erdioo
//
//  Created by Arie on 6/4/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "errdioCell.h"

@implementation errdioCell
@synthesize wrapper=_wrapper;
@synthesize RadioName=_RadioName;
@synthesize Genre=_Genre;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
		_wrapper=[[UIView alloc]init];
		_wrapper.frame=CGRectMake(10, 5, 300, 69);
		_wrapper.backgroundColor=cell_color;
		_wrapper.layer.borderColor = cell_border.CGColor;
		_wrapper.layer.borderWidth = 1.0f;
		_wrapper.layer.cornerRadius = 5;
		[_wrapper.layer setShadowColor:cell_border.CGColor];
		[_wrapper.layer setShadowOpacity:0.8];
		[_wrapper.layer setShadowRadius:1.0];
		[_wrapper.layer setShadowOffset:CGSizeMake(0, 1.0)];
		_wrapper.layer.shouldRasterize = YES;
		_wrapper.layer.rasterizationScale = [UIScreen mainScreen].scale;
		_wrapper.layer.masksToBounds = NO;
		
		_RadioName=[[UILabel alloc]init];
		_RadioName.backgroundColor=[UIColor clearColor];
		_RadioName.frame=CGRectMake(90, 5, 180, 20);
		_RadioName.lineBreakMode=NSLineBreakByCharWrapping;
		_RadioName.font=global_font_bold;
		_RadioName.textColor=dark_gray;
		
		_Genre=[[UILabel alloc]init];
		_Genre.backgroundColor=[UIColor clearColor];
		_Genre.frame=CGRectMake(90, 25, 180, 20);
		_Genre.font=global_font_medium;
		_Genre.lineBreakMode=NSLineBreakByCharWrapping;
		_Genre.textColor=dark_gray;
		
		
		[_wrapper addSubview:_RadioName];
		[_wrapper addSubview:_Genre];
		[self.contentView addSubview:_wrapper];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
