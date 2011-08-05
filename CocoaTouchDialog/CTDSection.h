#import "CTDElement.h"

@class CTDRootElement;

@interface CTDSection: NSObject
{
	NSMutableArray *elements_;
}

@property(nonatomic, retain) CTDRootElement *root;
@property(nonatomic, copy) NSString *header;
@property(nonatomic, copy) NSString *footer;

- (id)init;
- (id)initWithElements:(CTDElement *)firstElement, ... NS_REQUIRES_NIL_TERMINATION;
- (id)initWithHeader:(NSString *)header elements:(CTDElement *)firstElement, ... NS_REQUIRES_NIL_TERMINATION;
- (id)initWithHeader:(NSString *)header footer:(NSString *)footer elements:(CTDElement *)firstElement, ... NS_REQUIRES_NIL_TERMINATION;
- (void)dealloc;

- (void)add:(CTDElement *)element;
- (size_t)count;
- (CTDElement *)getAtIndex:(size_t)index;

@end
