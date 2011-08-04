#import "CTDElement.h"

@interface CTDSection: NSObject
{
	NSString *_header;
	NSString *_footer;
	NSMutableArray *elements;
}

@property(nonatomic, copy) NSString *header;
@property(nonatomic, copy) NSString *footer;

- (id)init;
- (id)initWithElements:(CTDElement *)firstElement, ... NS_REQUIRES_NIL_TERMINATION;
- (id)initWithHeader:(NSString *)header elements:(CTDElement *)firstElement, ... NS_REQUIRES_NIL_TERMINATION;
- (id)initWithHeader:(NSString *)header footer:(NSString *)footer elements:(CTDElement *)firstElement, ... NS_REQUIRES_NIL_TERMINATION;
- (void)dealloc;

- (void)add:(CTDElement *)element;
- (int)count;
- (CTDElement *)getAtIndex:(int)index;

@end
