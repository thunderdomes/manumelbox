//
//  regionalCell.m
//  Erdioo
//
//  Created by Arie on 6/7/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "regionalCell.h"

@implementation regionalCell

@synthesize NamaDaerah=_NamaDaerah;
@synthesize JumlahRadio=_JumlahRadio;
@synthesize radioText=_radioText;
@synthesize maps=_maps;
@synthesize arrow=_arrow;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
		_NamaDaerah=[[UILabel alloc]initWithFrame:CGRectMake(40, 10, 300, 20)];
		_NamaDaerah.backgroundColor=[UIColor clearColor];
		_NamaDaerah.font=global_font_bold;
		_NamaDaerah.textColor=dark_gray;
		//_NamaDaerah.backgroundColor=[UIColor redColor];
		
		_radioText=[[UILabel alloc]init];
		_radioText.backgroundColor=[UIColor clearColor];
		_radioText.frame=CGRectMake(40, 30, 180, 20);
		_radioText.font=global_font_medium_light;
		_radioText.textColor=dark_gray;
		_radioText.text=@"Indonesia";
		//_radioText.backgroundColor=[UIColor orangeColor];
		
		_JumlahRadio=[[UILabel alloc]init];
		_JumlahRadio.backgroundColor=[UIColor clearColor];
		_JumlahRadio.frame=CGRectMake(320-90, 23, 180, 20);
		_JumlahRadio.font=global_font_medium_bold_small;
		_JumlahRadio.lineBreakMode=NSLineBreakByCharWrapping;
		_JumlahRadio.textColor=dark_gray;
		//_JumlahRadio.backgroundColor=[UIColor greenColor];
		
		_maps=[[UIImageView alloc]initWithImage:[UIImage imageNamed:maps]];
		_maps.frame=CGRectMake(3, 10, 44, 44);
		//_maps.backgroundColor=[UIColor yellowColor];
		
		_arrow=[[UIImageView alloc]initWithImage:[UIImage imageNamed:arrow]];
		_arrow.frame=CGRectMake(290, 10, 44, 44);
		//_arrow.backgroundColor=[UIColor blackColor];
		
		

		
		[self.contentView addSubview:_NamaDaerah];
		[self.contentView addSubview:_radioText];
		[self.contentView addSubview:_JumlahRadio];
		[self.contentView addSubview:_maps];
		[self.contentView addSubview:_arrow];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
