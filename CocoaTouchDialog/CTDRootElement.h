#import "CTDSection.h"

@interface CTDRootElement: CTDElement
{
	
@protected
	NSMutableArray *sections;
}

- (id)init;
- (id)initWithSections:(CTDSection *)firstSection, ... NS_REQUIRES_NIL_TERMINATION;
- (void)dealloc;

- (void)add:(CTDSection *)section;
- (int)count;
- (CTDSection *)getAtIndex:(int)index;

@end
