#import "CTDElement.h"

@interface CTDEntryElement: CTDElement
{
}

@property(nonatomic, copy) NSString *value;

// TODO: Add class method

- (id)initWithCaption:(NSString *)caption stringValue:(NSString *)value;
- (void)dealloc;

@end
