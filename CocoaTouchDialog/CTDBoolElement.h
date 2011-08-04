#import "CTDElement.h"

@interface CTDBoolElement: CTDElement
{
	BOOL _value;
}

@property(nonatomic, assign) BOOL value;

- (id)initWithCaption:(NSString *)caption boolValue:(BOOL)value;

@end
