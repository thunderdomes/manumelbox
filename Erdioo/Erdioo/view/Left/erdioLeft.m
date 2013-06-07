//
//  erdioLeft.m
//  Erdioo
//
//  Created by Arie on 6/5/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "erdioLeft.h"
#import "leftCell.h"
@interface erdioLeft ()

@end

@implementation erdioLeft

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		self.view.backgroundColor=darkest;
		
        // Custom initialization
		leftMenu=[[UITableView alloc]init];
		leftMenu.frame=CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
		leftMenu.backgroundColor=[UIColor clearColor];
		leftMenu.separatorColor=left_separator;
		leftMenu.dataSource=self;
		leftMenu.tableHeaderView.frame=CGRectMake(0, 0, 320, 100);
		leftMenu.delegate=self;
		leftMenu.scrollEnabled=NO;
		[self.view addSubview:leftMenu];
		
		menuLeft=[[NSMutableArray alloc]init];
		[menuLeft addObject:@"Top Erdioo"];
		[menuLeft addObject:@"My Erdioo"];
		[menuLeft addObject:@"Regional Erdioo"];
		[menuLeft addObject:@"Group Erdioo"];
		[menuLeft addObject:@"Berita"];
		[menuLeft addObject:@"Tentang Erdioo"];
    }
    return self;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;
{
    return 60;
}
- (UIView*) tableView: (UITableView*) tableView viewForHeaderInSection: (NSInteger) section
{
	/* assumes your tableview is 320 wide, makes a section header 80 pixels high */
	UIView *customView = [[[UIView alloc] initWithFrame: CGRectMake(0.0, 0.0, 320.0, 60)] autorelease];
	
	UIImageView *imgView = [[[UIImageView alloc] initWithImage: [UIImage imageNamed:@"logo"]] autorelease];
	/* makes the views slightly transparent so you can see the cells behind them as you scroll */
	imgView.alpha = 0.7;
	customView.backgroundColor = [UIColor colorWithRed:0.153 green:0.169 blue:0.2 alpha:1];
	
	[customView addSubview: imgView];
	
	return customView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return menuLeft.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	leftCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[[leftCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"] autorelease];
    }
	
	cell.label.text=[menuLeft objectAtIndex:indexPath.row];
	cell.selectedBackgroundView = [ [[UIImageView alloc] initWithImage:[ [UIImage imageNamed:@"selected"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:5.0] ]autorelease];
	return cell;
}
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *view = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 100)] autorelease];
    view.backgroundColor = [UIColor clearColor];
    return view;
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
