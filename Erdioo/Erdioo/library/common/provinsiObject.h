//
//  provinsiObject.h
//  Erdioo
//
//  Created by Arie on 6/7/13.
//  Copyright (c) 2013 kumel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface provinsiObject : NSObject
@property(nonatomic,strong) NSString *idPropinsi;
@property(nonatomic,strong) NSString *NamaPropinsi;
@property(nonatomic,strong) NSString *JumlahRadio;

-(id)initWithDictionary:(NSDictionary *)dictionary;
@end
