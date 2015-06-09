//
//  NBNewEntryViewController.m
//  Notebook
//
//  Created by Sahil Gupta on 2015-06-08.
//  Copyright (c) 2015 SahilGupta. All rights reserved.
//

#import "NBNewEntryViewController.h"
#import "THNotebookEntry.h"
#import "CoreDataStack.h"

@interface NBNewEntryViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation NBNewEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dismissSelf{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(void) insertDiaryEntry {
    CoreDataStack *coreDataStack = [CoreDataStack defaultStack];
    THNotebookEntry *entry = [NSEntityDescription insertNewObjectForEntityForName:@"THNotebookEntry" inManagedObjectContext:coreDataStack.managedObjectContext];
    entry.body = self.textField.text;
    entry.date = [[NSDate date] timeIntervalSince1970];
    [coreDataStack saveContext];
}

- (IBAction)doneWasPressed:(UIBarButtonItem *)sender {
    [self insertDiaryEntry];
    [self dismissSelf];
}
- (IBAction)cancelWasPressed:(UIBarButtonItem *)sender {
    [self dismissSelf];
}



@end
