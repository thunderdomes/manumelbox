//
//  provinsiObject.m
//  Erdioo
//
//  Created by Arie on 6/7/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import "provinsiObject.h"

@implementation provinsiObject
@synthesize idPropinsi=_idPropinsi;
@synthesize NamaPropinsi=_NamaPropinsi;
@synthesize JumlahRadio=_JumlahRadio;
-(id)initWithDictionary:(NSDictionary *)dictionary{
	self=[super init];
	if(self){
		self.idPropinsi=[dictionary objectForKey:@"idPropinsi"];
		self.NamaPropinsi=[dictionary objectForKey:@"NamaPropinsi"];
		self.JumlahRadio=[dictionary objectForKey:@"JumlahRadio"];
	}
	return self;
}

@end
