//
//  erdiooRegional.m
//  Erdioo
//
//  Created by Arie on 6/5/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "erdiooRegional.h"
#import "regionalCell.h"
#import "RadioRegional.h"
@interface erdiooRegional ()

@end

@implementation erdiooRegional

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.title=@"Regional Erdioo";
		self.view.backgroundColor=[UIColor whiteColor];
		regional_radioList=[[UITableView alloc]init];
		[regional_radioList setSeparatorColor:[UIColor colorWithRed:0.875 green:0.875 blue:0.875 alpha:1]];
		regional_radioList.frame=CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height-44);
		regional_radioList.backgroundColor=[UIColor clearColor];
		regional_radioList.delegate=self;
		regional_radioList.dataSource=self;
		regional_radioList.hidden=YES;
		[self.view addSubview:regional_radioList];
		provinsi=[[NSMutableArray alloc]init];
		[self fetchData];
		
    }
    return self;
}
-(void)fetchData{
	[provinsi removeAllObjects];
	NSString * sURL = [NSString stringWithFormat:@"%@?do=getPropinsi&key=%@",Global_url,API_key];
	NSLog(@"sURL--->%@",sURL);
	
	NSURL *URL=[NSURL URLWithString:sURL];
	NSMutableURLRequest * request = [[NSMutableURLRequest alloc] initWithURL:URL cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:60];
	
    AFJSONRequestOperation *operation=[[[AFJSONRequestOperation alloc] initWithRequest:request] autorelease];
	[AFJSONRequestOperation addAcceptableContentTypes:[NSSet setWithObject:@"text/html"]];
	
    //AFHTTPRequestOperation * operation =[[AFHTTPRequestOperation alloc] initWithRequest:request];
	[operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
		NSLog(@"responseObject: %@", [responseObject objectForKey:@"data"]);
		
		
		for(id erdioDict in [responseObject objectForKey:@"data"]){
			provinsiObject *daerah=[[provinsiObject alloc] initWithDictionary:erdioDict];
			[provinsi addObject:daerah];
			
			[daerah release];
		}
		regional_radioList.hidden=NO;
		[regional_radioList reloadData];
	}failure:^(AFHTTPRequestOperation *operation, NSError *error) {
		if(error){
			regional_radioList.hidden=YES;
		}
        NSLog(@"error: %@", [error description]);
		
	}];
	[operation start];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return provinsi.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	provinsiObject  *object_draw=[provinsi objectAtIndex:indexPath.row];
    static NSString *CellIdentifier = @"CountryCell";
    
    regionalCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[regionalCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
 	if(indexPath.row % 2==0){
		cell.contentView.backgroundColor=[UIColor colorWithRed:0.961 green:0.961 blue:0.961 alpha:1];
	}
	else{
		cell.contentView.backgroundColor=[UIColor colorWithRed:0.922 green:0.922 blue:0.922 alpha:1];
	}
	
	cell.NamaDaerah.text=object_draw.NamaPropinsi;
	cell.JumlahRadio.text=[NSString stringWithFormat:@"%@ Radio",object_draw.JumlahRadio];
	cell.selectionStyle=UITableViewCellEditingStyleNone;
	
	
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
	return  63;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	NSLog(@"indexpat----->%d",indexPath.row);
	RadioRegional *regional=[[RadioRegional alloc]init];
	provinsiObject  *object_draw=[provinsi objectAtIndex:indexPath.row];
	regional.NamaPropinsi=object_draw.NamaPropinsi;
	regional.idPropinsi=object_draw.idPropinsi;
	[self.navigationController pushViewController:regional animated:YES];
	[regional release];
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
