//
//  erdiooGroup.m
//  Erdioo
//
//  Created by Arie on 6/5/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "erdiooGroup.h"
#import "regionalCell.h"
@interface erdiooGroup ()

@end

@implementation erdiooGroup

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
				groupList=[[NSMutableArray alloc]init];
		
		self.view.backgroundColor=lightGray;
		
		group=[[UITableView alloc]init];
		group.delegate=self;
		group.dataSource=self;
		[group setSeparatorColor:[UIColor colorWithRed:0.875 green:0.875 blue:0.875 alpha:1]];
		group.frame=CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height-44);
		//[erdiooCenter_table setSeparatorColor:[UIColor clearColor]];
		group.backgroundColor=[UIColor clearColor];
		
		[self.view addSubview:group];
		
    }
    return self;
}
-(void)fetchData{
	[groupList removeAllObjects];
	NSString * sURL = [NSString stringWithFormat:@"%@?do=group&key=%@",Global_url,API_key];
	NSLog(@"sURL--->%@",sURL);
	
	NSURL *URL=[NSURL URLWithString:sURL];
	NSMutableURLRequest * request = [[NSMutableURLRequest alloc] initWithURL:URL cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:60];
	
    AFJSONRequestOperation *operation=[[[AFJSONRequestOperation alloc] initWithRequest:request] autorelease];
	[AFJSONRequestOperation addAcceptableContentTypes:[NSSet setWithObject:@"text/html"]];
	
    //AFHTTPRequestOperation * operation =[[AFHTTPRequestOperation alloc] initWithRequest:request];
	[operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
		NSLog(@"responseObject: %@", [responseObject objectForKey:@"data"]);
		
		
		for(id erdioDict in [responseObject objectForKey:@"data"]){
			groupRadio *groups=[[groupRadio alloc] initWithDictionary:erdioDict];
			[groupList addObject:groups];
			
			[groups release];
		}
		
		[group reloadData];
	}failure:^(AFHTTPRequestOperation *operation, NSError *error) {
		if(error){
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
	return groupList.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	groupRadio  *object_draw=[groupList objectAtIndex:indexPath.row];
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
	NSLog(@"object_draw.NamaGrup--->%@",object_draw.NamaGrup);
	cell.maps.hidden=YES;
	cell.NamaDaerah.text=object_draw.NamaGrup;
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
//	RadioRegional *regional=[[RadioRegional alloc]init];
//	provinsiObject  *object_draw=[provinsi objectAtIndex:indexPath.row];
//	regional.NamaPropinsi=object_draw.NamaPropinsi;
//	regional.idPropinsi=object_draw.idPropinsi;
//	[self.navigationController pushViewController:regional animated:YES];
//	[regional release];
}


-(void)viewWillAppear:(BOOL)animated{
	[self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:navbar] forBarMetrics:UIBarMetricsDefault];
	[self fetchData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
