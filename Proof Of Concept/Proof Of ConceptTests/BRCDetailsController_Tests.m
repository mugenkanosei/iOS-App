// Class under test
#import "BRCDetailsController.h"

// Collaborators

// Test support
#import <XCTest/XCTest.h>

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

#define MOCKITO_SHORTHAND
#import <OCMockitoIOS/OCMockitoIOS.h>

@interface BRCDetailsController_Tests : XCTestCase

@end

@implementation BRCDetailsController_Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)test_Save_Button_Should_Be_Connected
{
    // given
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    id<IDetailsView> detailsViewMock = mockProtocol(@protocol(IDetailsView));
    [given([detailsViewMock saveButton]) willReturn:button];

    // when
    BRCDetailsController* sut = [[BRCDetailsController alloc] initWithView:detailsViewMock];

    // then
    NSArray* results = [[detailsViewMock saveButton] actionsForTarget:sut forControlEvent:UIControlEventTouchUpInside];
    assertThat([results objectAtIndex:0], is(equalTo(@"saveDetails")));

}

@end
