//
//  search.m
//  Erdioo
//
//  Created by Arie on 6/5/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "search.h"

@interface search ()

@end

@implementation search

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.view.backgroundColor=[UIColor whiteColor];
		
		self.title=@"Cari Radio";
		UIImage* image = [UIImage imageNamed:@"cancel"];
		CGRect frame = CGRectMake(0.0f, 0.0f, 44.5f, 44.0f);
		UIButton* leftbutton = [[UIButton alloc] initWithFrame:frame];
		[leftbutton setBackgroundImage:image forState:UIControlStateNormal];
		
		[leftbutton addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
		
		UIView *leftbuttonView=[[UIView alloc]initWithFrame:CGRectMake(10, 0, 70, 44)];
		leftbuttonView.backgroundColor=[UIColor clearColor];
		[leftbuttonView addSubview:leftbutton];
		UIBarButtonItem* leftbarbutton = [[UIBarButtonItem alloc] initWithCustomView:leftbuttonView];
		
		UIImage* image2 = [UIImage imageNamed:@"cancel"];
		CGRect frame2 = CGRectMake(53, 0, 44.5f, 44.0f);
		UIButton* rightbutton = [[UIButton alloc] initWithFrame:frame2];
		[rightbutton setBackgroundImage:image2 forState:UIControlStateNormal];
		[rightbutton addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
		
		
		
		UIView *RightbuttonView=[[UIView alloc]initWithFrame:CGRectMake(10, 0, 85, 44)];
		RightbuttonView.backgroundColor=[UIColor clearColor];
		[RightbuttonView addSubview:rightbutton];
		
		
		
		UIBarButtonItem* rightbarButton = [[UIBarButtonItem alloc] initWithCustomView:RightbuttonView];
		
		
		[self.navigationItem setRightBarButtonItem:rightbarButton];
		//[self.navigationItem setLeftBarButtonItem:leftbarbutton];
		
		
		[rightbarButton release];
		[rightbutton release];
		[leftbarbutton release];
		[leftbutton release];

    }
    return self;
}
-(void)close{
[self.navigationController dismissModalViewControllerAnimated:YES];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
	animated=YES;
	[self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navbar2-kanan"]  forBarMetrics:UIBarMetricsDefault];
	
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
