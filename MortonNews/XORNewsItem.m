//
//  XORNewsItem.m
//  MortonNews
//
//  Created by Adan Sandoval on 8/30/14.
//  Copyright (c) 2014 XOR Development, LLC. All rights reserved.
//

#import "XORNewsItem.h"
@implementation XORNewsItem
@synthesize itemTitle;
@synthesize itemID;
@synthesize completed;
@synthesize itemCategory;
@synthesize itemContent;
@synthesize itemDate;
@synthesize itemURL;
@synthesize itemAuthor;
@synthesize urgent;

-(id)initWithJSONData:(NSDictionary *)data{
    self = [super init];
    if(self){
        //NSLog(@"initWithJSONData method called");
        self.itemTitle = [data objectForKeyedSubscript:@"Title"];
        self.itemID = [[data objectForKey:@"ID"] integerValue];
        self.itemContent = [data objectForKey:@"content"];
        self.itemAuthor = [data objectForKey:@"author"];
        self.itemURL = [data objectForKey:@"url"];
        self.completed = [data objectForKey:@"completed"];
        self.urgent = [data objectForKey:@"urgent"];
    }
    return self;
}

@end
