//
//  erdiooRegional.m
//  Erdioo
//
//  Created by Arie on 6/5/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "erdiooRegional.h"

@interface erdiooRegional ()

@end

@implementation erdiooRegional

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		regional_radioList=[[UITableView alloc]init];
		[regional_radioList setSeparatorColor:[UIColor colorWithRed:0.875 green:0.875 blue:0.875 alpha:1]];
		regional_radioList.frame=CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height-44);
		regional_radioList.backgroundColor=[UIColor clearColor];
		[self.view addSubview:regional_radioList];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
