//
//  erdioLeft.m
//  Erdioo
//
//  Created by Arie on 6/5/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "erdioLeft.h"

@interface erdioLeft ()

@end

@implementation erdioLeft

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		self.view.backgroundColor=darkest;
		;
        // Custom initialization
		leftMenu=[[UITableView alloc]init];
		leftMenu.frame=CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
		leftMenu.backgroundColor=[UIColor clearColor];
		leftMenu.separatorColor=left_separator;
		[self.view addSubview:leftMenu];
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
