#import "CTDElement.h"

@interface CTDEntryElement: CTDElement
{
	NSString *_value;
}

@property(nonatomic, copy) NSString *value;

- (id)initWithCaption:(NSString *)caption stringValue:(NSString *)value;

@end
