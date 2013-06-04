//
//  erdiooCenter.m
//  Erdioo
//
//  Created by Arie on 6/4/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "erdiooCenter.h"
#import "errdioCell.h"
@interface erdiooCenter ()

@end
@implementation erdiooCenter
@synthesize erdiooCenter_table;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.view.backgroundColor=lightGray;
		self.title=AppName;
		erdio=[[NSMutableArray alloc]init];
		[erdio addObject:@"1"];
		erdiooCenter_table=[[UITableView alloc]init];
		erdiooCenter_table.delegate=self;
		erdiooCenter_table.dataSource=self;
		erdiooCenter_table.frame=CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height-44);
		[erdiooCenter_table setSeparatorColor:[UIColor clearColor]];
		erdiooCenter_table.backgroundColor=[UIColor clearColor];
		[self.view addSubview:erdiooCenter_table];
		[self fetchData];
		
    }
	
    return self;
}
-(void)fetchData{
	[erdio removeAllObjects];
	NSString * sURL = [NSString stringWithFormat:@"%@?do=mostviewed&key=%@",Global_url,API_key];
	NSLog(@"sURL--->%@",sURL);

	NSURL *URL=[NSURL URLWithString:sURL];
	NSMutableURLRequest * request = [[NSMutableURLRequest alloc] initWithURL:URL cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:60];

    AFJSONRequestOperation *operation=[[[AFJSONRequestOperation alloc] initWithRequest:request] autorelease];
	[AFJSONRequestOperation addAcceptableContentTypes:[NSSet setWithObject:@"text/html"]];
	
    //AFHTTPRequestOperation * operation =[[AFHTTPRequestOperation alloc] initWithRequest:request];
	[operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
		 NSLog(@"responseObject: %@", [responseObject objectForKey:@"data"]);
		for(id erdioDict in [responseObject objectForKey:@"data"]){
			topViewObject *topView=[[topViewObject alloc] initWithDictionary:erdioDict];
			[erdio addObject:topView];
			
			[topView release];
		}
	
		[erdiooCenter_table reloadData];
	}failure:^(AFHTTPRequestOperation *operation, NSError *error) {
		if(error){
		}
        NSLog(@"error: %@", [error description]);
		
	}];
	[operation start];
   // [httpClient release];
	}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return erdio.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	topViewObject  *object_draw=[erdio objectAtIndex:indexPath.row];
    static NSString *CellIdentifier = @"CountryCell";
    
    errdioCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[errdioCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
 
	
	cell.RadioName.text = object_draw.NamaRadio;
	
	cell.Genre.text = object_draw.Genre;
	
	//cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
	return  95;
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
