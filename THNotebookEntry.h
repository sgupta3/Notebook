//
//  THNotebookEntry.h
//  Notebook
//
//  Created by Sahil Gupta on 2015-06-08.
//  Copyright (c) 2015 SahilGupta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface THNotebookEntry : NSManagedObject

@property (nonatomic, retain) NSString * body;
@property (nonatomic) NSTimeInterval date;
@property (nonatomic, retain) NSData * imageData;
@property (nonatomic, retain) NSString * location;
@property (nonatomic) int16_t mood;

@end
