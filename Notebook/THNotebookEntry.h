//
//  THNotebookEntry.h
//  
//
//  Created by Sahil Gupta on 2015-06-07.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ENUM(int16_t, THNotebookEntry) {
    THNotebookEntryMoodGood = 0,
    THNotebookEntryMoodAverage = 1,
    THNotebookEntryMoodBad = 2
};

@interface THNotebookEntry : NSManagedObject

@property (nonatomic) NSTimeInterval date;
@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) NSData * imageData;
@property (nonatomic) int16_t mood;
@property (nonatomic, retain) NSString * location;

@end
