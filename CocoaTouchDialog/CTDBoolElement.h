#import "CTDElement.h"

@interface CTDBoolElement: CTDElement
{
}

@property(nonatomic, assign) BOOL value;

+ (CTDBoolElement *)elementWithCaption:(NSString *)caption boolValue:(BOOL)value;

- (id)initWithCaption:(NSString *)caption boolValue:(BOOL)value;
- (void)dealloc;

@end
