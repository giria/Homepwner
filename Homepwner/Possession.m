//
//  Possession.m
//  RandomPossessions
//
//  Created by Joan Barrull Ribalta on 6/22/11.
//  Copyright 2011 giria.com. All rights reserved.
//

#import "Possession.h"


@implementation Possession

@synthesize possessionName, serialNumber,valueInDollars,dateCreated;

- (NSString *) description
{
    NSString *descriptionString =
    [[NSString alloc]initWithFormat:@"%@(%@):Worth $(%d), Recorded on %@",
                     possessionName,
                    serialNumber,
                    valueInDollars,
                    dateCreated];
    
    return descriptionString;
}

- (id) initWithPossessionName: (NSString *)pName valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    //Call the superclass's desognated initializer
    self = [super init];
    
    // Did the superclass's designated initializer fail?
    if (!self)
        return nil;
    
    //Give the instance variables initial values
    [self setPossessionName: pName];
    [self setSerialNumber:sNumber];
    [self setValueInDollars:value];
    dateCreated = [[NSDate alloc] init];
    return self;
}

- (id) initWithPossessionName:(NSString *)pName
{
    return [self initWithPossessionName:pName
                         valueInDollars:0
                           serialNumber:@""];
}

- (id)init
{
        
    return [self initWithPossessionName:@"Possession"
                         valueInDollars: 0
                           serialNumber:@""];
}

+ (id)randomPossession
{
    static NSString *randomAdjectiveList[3] =
    {
        @"Fluffy",
        @"Rusty",
        @"Shiny"
    };
    static NSString *randomNounList[3] =
    {
        @"Bear",
        @"Spork",
        @"Mac"
    };
    NSString *randomName = [NSString stringWithFormat:@"%@#@",
                            randomAdjectiveList[random() % 3],
                        randomNounList[random() % 3]];
    
    int randomValue = random() % 100;
    
    NSString *randomSerialNumber = [NSString
                                    stringWithFormat:@"%c%c%c%c%c",
                                    '0' + random() % 10,
                                    'A' + random() % 26,
                                    '0' + random() % 10,
                                    'A' + random() % 10,
                                    '0' + random() % 10];
    
    // Once again, ignore the memory problems with this method
    // We use "self" instead of the name of the class in class methods
    Possession  *newPossession =
    [[self alloc] initWithPossessionName:randomName
                          valueInDollars:randomValue
                            serialNumber:randomSerialNumber];
    return newPossession;
    
}

- (void)dealloc
{
    [super dealloc];
}

@end
