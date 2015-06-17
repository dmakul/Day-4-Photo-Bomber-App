//
//  PhotoController.h
//  Day 4 Photo Bombers App
//
//  Created by Даурен Макул on 17.06.15.
//  Copyright (c) 2015 Даурен Макул. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface PhotoController : NSObject

+(void)imageForPhoto: (NSDictionary *) photo size: (NSString *) size completion: (void(^) (UIImage *image)) completion;

@end
