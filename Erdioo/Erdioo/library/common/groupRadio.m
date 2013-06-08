//
//  groupRadio.m
//  Erdioo
//
//  Created by Arie on 6/8/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "groupRadio.h"

@implementation groupRadio
@synthesize IdGrup=_IdGrup;
@synthesize JumlahRadio=_JumlahRadio;
@synthesize NamaGrup=_NamaGrup;
-(id)initWithDictionary:(NSDictionary *)dictionary{
	self=[super init];
	if(self){
		self.IdGrup=[dictionary objectForKey:@"IdGrup"];
		self.NamaGrup=[dictionary objectForKey:@"NamaGrup"];
		self.JumlahRadio=[dictionary objectForKey:@"JumlahRadio"];
	}
	return self;
}


@end
