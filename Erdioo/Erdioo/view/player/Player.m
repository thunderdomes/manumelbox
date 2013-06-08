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
@synthesize radioName=_radioNameString;
@synthesize RadioGenre=_radioGenreString;
@synthesize radioId=_radioId;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		
		// this will appear as the title in the navigation bar
        radioName = [[[UILabel alloc] initWithFrame:CGRectMake(0,0,200,30)] autorelease];
        radioName.backgroundColor = [UIColor clearColor];
        radioName.font = global_font_bold;
        radioName.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
        radioName.textAlignment = NSTextAlignmentCenter;
		radioName.lineBreakMode=NSLineBreakByCharWrapping;
        radioName.textColor = [UIColor whiteColor]; // change this color

		RadioGenre = [[[UILabel alloc] initWithFrame:CGRectMake(0,25,200,15)] autorelease];
        RadioGenre.backgroundColor = [UIColor clearColor];
        RadioGenre.font = global_font_medium_light;
        RadioGenre.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
        RadioGenre.textAlignment = NSTextAlignmentCenter;
		RadioGenre.lineBreakMode=NSLineBreakByCharWrapping;
        RadioGenre.textColor = [UIColor whiteColor]; // change this color
		
		UIView *iv = [[UIView alloc] initWithFrame:CGRectMake(0,0,200,44)];
		[iv setBackgroundColor:[UIColor clearColor]];
		
		[iv addSubview:radioName];
		[iv addSubview:RadioGenre];
		self.navigationItem.titleView = iv;
		
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
		
		NSLog(@"---------faram--->%f",self.view.frame.size.height);
		imageRadio=[[UIImageView alloc]init];
		imageRadio.layer.shadowColor = [UIColor blackColor].CGColor;
		imageRadio.layer.shadowOffset = CGSizeMake(0, 1);
		imageRadio.layer.shadowOpacity = 1;
		imageRadio.layer.shadowRadius = 1.0;
		imageRadio.clipsToBounds = NO;
		
		CALayer * l = [imageRadio layer];
		[l setMasksToBounds:YES];
		[l setCornerRadius:5];
		
		// You can even add a border
		[l setBorderWidth:1.0];
		[l setBorderColor:[[UIColor darkGrayColor] CGColor]];
		
		if(self.view.frame.size.height==548){
			
			imageRadio.frame=CGRectMake(10,15, 300, 300);
			[self.view addSubview:imageRadio];
		}
		else{
			imageRadio.frame=CGRectMake(20,15, 280, 280);
			[self.view addSubview:imageRadio];
		}
		
		
		
		banner=[[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-154, 320, 50)];
		banner.backgroundColor=[UIColor blackColor];
		
		[self.view addSubview:banner];
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
-(void)viewDidLayoutSubviews{
	[super viewDidLayoutSubviews];
	radioName.text=_radioNameString;
	RadioGenre.text=_radioGenreString;
	
	[self setImage:_radioId];


}
-(void)setImage:(NSString *)ImageId{
	[imageRadio setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://api.erdioo.com/icon/?id=%@",ImageId]]placeholderImage:[UIImage imageNamed:@"placeholder"]];
	
}
-(void)viewWillAppear:(BOOL)animated{
[self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:navbar] forBarMetrics:UIBarMetricsDefault];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
