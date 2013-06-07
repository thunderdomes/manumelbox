//
//  RadioRegional.m
//  Erdioo
//
//  Created by Arie on 6/7/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "RadioRegional.h"

@interface RadioRegional ()

@end

@implementation RadioRegional

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		
		backButton = [[[UIButton alloc] initWithFrame:CGRectMake(0.0, 0.0, 44.0, 44.0)] autorelease];
		[backButton setBackgroundImage:[UIImage imageNamed:back] forState:UIControlStateNormal];
		[backButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
		UIBarButtonItem * backButtonItem = [[[UIBarButtonItem alloc] initWithCustomView:backButton] autorelease];
		self.navigationItem.leftBarButtonItem = backButtonItem;
        // Custom initialization
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated{
	NSLog(@"idProv===>%@",self.idPropinsi);
	NSLog(@"idProv===>%@",self.NamaPropinsi);
	self.title=self.NamaPropinsi;
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
-(void)dealloc{
	[super dealloc];
	[self.idPropinsi release];
	[self.NamaPropinsi release];
	[self.title release];
	
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
