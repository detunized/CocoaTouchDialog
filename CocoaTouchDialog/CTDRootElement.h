#import "CTDSection.h"

@class CTDViewController;

@interface CTDRootElement: CTDElement
{
@private
	NSMutableArray *sections_;
}

@property(nonatomic, retain) CTDViewController *viewController;

- (id)init;
- (id)initWithSections:(CTDSection *)firstSection, ... NS_REQUIRES_NIL_TERMINATION;
- (void)dealloc;

- (void)add:(CTDSection *)section;
- (size_t)count;
- (CTDSection *)getAtIndex:(size_t)index;

@end
