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
		
		searchResult=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height-44)];
		//searchResult.delegate=self;
		searchResult.tableFooterView = [[[UIView alloc] init] autorelease];
		searchResult.backgroundColor=[UIColor colorWithRed:0.957 green:0.957 blue:0.957 alpha:1];
		//searchResult.dataSource=self;
		searchResult.separatorColor=[UIColor colorWithRed:0.878 green:0.878 blue:0.878 alpha:1];
		
		
		searchbarContainer=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 50)];
		searchbarContainer.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"searchbar"]];
		paddingView = [[[UIView alloc] initWithFrame:CGRectMake(40, 0, 5, 20)] autorelease];
		
		
		searchForm=[[UITextField alloc]initWithFrame:CGRectMake(30, 7, 280, 30)];
		searchForm.backgroundColor=[UIColor clearColor];
		searchForm.layer.sublayerTransform = CATransform3DMakeTranslation(5, 3, 0);
		searchForm.leftViewMode = UITextFieldViewModeAlways;
		searchForm.leftView = paddingView;
		searchForm.placeholder=@"Cari Radio";
		searchForm.delegate=self;
		searchForm.clearButtonMode = UITextFieldViewModeWhileEditing;
		
		searchForm.autocorrectionType=UITextAutocorrectionTypeNo;
		searchForm.leftViewMode = UITextFieldViewModeAlways;
		searchForm.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
		[searchForm setFont:[UIFont fontWithName:@"OpenSans-Semibold" size:16]];
		searchForm.textColor=[UIColor colorWithRed:0.275 green:0.275 blue:0.275 alpha:1] ;
		searchForm.returnKeyType=UIReturnKeyDone;
		
		[searchbarContainer addSubview:searchForm];
		
		//[searchForm becomeFirstResponder];
		searchResult.tableHeaderView=searchbarContainer;
		[self.view addSubview: searchResult];
		
		
    }
    return self;
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
	NSLog(@"shouldChangeCharactersInRange--->%@",textField.text);
	return YES;
}
-(BOOL)textFieldShouldClear:(UITextField *)textField{
	NSLog(@"textFieldShouldClear--->%@",textField.text);
	return YES;
	
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
	NSLog(@"textFieldShouldBeginEditing--->%@",textField.text);
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
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
	[self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:navbar]  forBarMetrics:UIBarMetricsDefault];
	
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc{
	[super dealloc];
	[searchForm resignFirstResponder];
}
@end
