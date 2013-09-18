//
//  BRCDetailsController.m
//  Proof Of Concept
//
//  Created by Bennie Copeland on 9/18/13.
//  Copyright (c) 2013 Bennie Copeland. All rights reserved.
//

#import "BRCDetailsController.h"

@implementation BRCDetailsController
@synthesize View;

- (id)initWithView:(id<IDetailsView>)detailsView
{
    self = [super init];
    if (self)
    {
        View = detailsView;
        [[View saveButton] addTarget:self action:@selector(saveDetails) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)saveDetails
{
    
}
@end
