#import <Foundation/Foundation.h>
#import "IDetailsView.h"

@interface BRCDetailsController : NSObject
@property (nonatomic, strong) id<IDetailsView> View;

- (id)initWithView:(id<IDetailsView>)detailsView;
@end
