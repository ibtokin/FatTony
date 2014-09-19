//
//  XORNewsItem.h
//  MortonNews
//
//  Created by Adan Sandoval on 8/30/14.
//  Copyright (c) 2014 XOR Development, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XORNewsItem : NSObject

-(id)initWithJSONData:(NSDictionary*)data;

@property (assign) NSInteger *itemID;
@property (strong) NSString *itemAuthor;
@property (strong) NSString *itemContent;
@property (strong) NSString *itemCategory;
@property NSString *itemTitle;
@property (strong) NSString *itemDate;
@property (strong) NSString *itemURL;
@property (strong) NSString *itemHits;
@property BOOL urgent;
@property BOOL completed;

@end
