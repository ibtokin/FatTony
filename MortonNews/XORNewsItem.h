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

@property NSString *itemTitle;
@property (assign) NSInteger *itemID;
@property BOOL completed;
@property (strong) NSString *itemCategory;
@property (strong) NSString *itemContent;
@property (strong) NSString *itemDate;
@property (strong) NSString *itemURL;
@property (strong) NSString *itemAuthor;
@property BOOL urgent;

@end
