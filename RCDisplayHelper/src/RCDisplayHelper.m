//
//  RCDisplayHelper.m
//  RCDisplayHelper
//
//  Created by Looping on 14-4-15.
//  Copyright (c) 2014   RidgeCorn. All rights reserved.
//

#import "RCDisplayHelper.h"

@implementation RCDisplayHelper

+ (void)displayData:(NSDictionary *)dict inView:(id)view withMapping:(NSDictionary *)mapping{
    if (dict && view && mapping) {
        NSArray *allKeys = [mapping allKeys];
        for (NSString *keyPath in allKeys) {
            [view setValue:[dict valueForKeyPath:[mapping valueForKeyPath:keyPath]] forKeyPath:keyPath];
        }
    } else {
        NSAssert(0, @"\n\nDisplay nil is not allowed!\n\n");
    }
}

@end
