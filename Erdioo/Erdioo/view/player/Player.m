//
//  Player.m
//  Erdioo
//
//  Created by Arie on 6/8/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "Player.h"

@interface Player ()

@end

@implementation Player

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		
        // Custom initialization
		UIButton *backButton = [[[UIButton alloc] initWithFrame:CGRectMake(0.0, 0.0, 44.0, 44.0)] autorelease];
		[backButton setBackgroundImage:[UIImage imageNamed:back] forState:UIControlStateNormal];
		[backButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
		UIBarButtonItem * backButtonItem = [[[UIBarButtonItem alloc] initWithCustomView:backButton] autorelease];
		
		self.navigationItem.leftBarButtonItem = backButtonItem;
		
		self.view.backgroundColor=lightGray;
		main_separators=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 1)];
		main_separators.backgroundColor=[UIColor colorWithRed:0.831 green:0.831 blue:0.831 alpha:1];
		
		separator1=[[UIView alloc]initWithFrame:CGRectMake(105, 0, 1, 60)];
		separator1.backgroundColor=[UIColor colorWithRed:0.831 green:0.831 blue:0.831 alpha:1];
		separator2=[[UIView alloc]initWithFrame:CGRectMake(210, 0, 1, 60)];
		separator2.backgroundColor=[UIColor colorWithRed:0.831 green:0.831 blue:0.831 alpha:1];
		
		playerController=[[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-104, 320, 60)];
		playerController.backgroundColor=[UIColor colorWithRed:0.937 green:0.937 blue:0.937 alpha:1];
		[playerController addSubview:main_separators];
		[playerController addSubview:separator1];
		[playerController addSubview:separator2];
		
		
		
		[self.view addSubview:playerController];

    }
    return self;
}
- (void) goBack
{
    [self.navigationController popViewControllerAnimated:YES];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
[self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:navbar3] forBarMetrics:UIBarMetricsDefault];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
