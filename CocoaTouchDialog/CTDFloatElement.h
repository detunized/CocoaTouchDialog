#import "CTDElement.h"

@interface CTDFloatElement: CTDElement
{
	float _value;
}

@property(nonatomic, assign) float value;

- (id)initWithCaption:(NSString *)caption floatValue:(float)value;

@end
