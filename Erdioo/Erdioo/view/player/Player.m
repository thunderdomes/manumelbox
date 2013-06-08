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
