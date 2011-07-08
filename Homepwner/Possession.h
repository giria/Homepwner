//
//  Possession.h
//  RandomPossessions
//
//  Created by Joan Barrull Ribalta on 6/22/11.
//  Copyright 2011 giria.com. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Possession : NSObject {
    NSString *possessionName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}
@property (nonatomic, copy) NSString *possessionName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic,readonly) NSDate *dateCreated;

+ (id) randomPossession;

-(id)initWithPossessionName:(NSString *)pName
valueInDollars:(int)value
               serialNumber:(NSString *)sNumber;
- (id)initWithPossessionName:(NSString *)pName ;       
@end
