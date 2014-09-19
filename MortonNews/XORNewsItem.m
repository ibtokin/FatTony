//
//  XORNewsItem.m
//  MortonNews
//
//  Created by Adan Sandoval on 8/30/14.
//  Copyright (c) 2014 XOR Development, LLC. All rights reserved.
//

#import "XORNewsItem.h"
@implementation XORNewsItem
@synthesize itemID;
@synthesize itemAuthor;
@synthesize itemContent;
@synthesize itemCategory;
@synthesize itemTitle;
@synthesize itemDate;
@synthesize itemURL;
@synthesize itemHits;
@synthesize urgent;
@synthesize completed;

-(id)initWithJSONData:(NSDictionary *)data{
    self = [super init];
    if(self){
        NSLog(@"initWithJSONData method called");
        self.itemID = [[data objectForKey:@"id"] integerValue];
        self.itemAuthor = [data objectForKey:@"author"];
        self.itemContent = [data objectForKey:@"content"];
        self.itemCategory = [data objectForKey:@"category"];
        self.itemTitle = [data objectForKeyedSubscript:@"title"];
        self.itemDate = [data objectForKey:@"date"];
        self.itemURL = [data objectForKey:@"url"];
        self.itemHits = [data objectForKey:@"hits"];
        self.urgent = [data objectForKey:@"urgent"];
        self.completed = [data objectForKey:@"completed"];
    }
    return self;
}

@end
