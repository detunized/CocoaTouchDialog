#import "CTDElement.h"

@interface CTDFloatElement: CTDElement
{
}

@property(nonatomic, assign) float value;

// TODO: Add class method

- (id)initWithCaption:(NSString *)caption floatValue:(float)value;
- (void)dealloc;

@end
