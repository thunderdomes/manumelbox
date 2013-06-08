//
//  groupRadio.h
//  Erdioo
//
//  Created by Arie on 6/8/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface groupRadio : NSObject
@property(nonatomic,strong) NSString * IdGrup;
@property(nonatomic,strong) NSString * JumlahRadio;
@property(nonatomic,strong) NSString * NamaGrup;

-(id)initWithDictionary:(NSDictionary *)dictionary;
@end
