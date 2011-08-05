#import "CTDElement.h"

@interface CTDStringElement: CTDElement
{
}

@property(nonatomic, copy) NSString *value;

+ (CTDStringElement *)elementWithCaption:(NSString *)caption stringValue:(NSString *)value;

- (id)initWithCaption:(NSString *)caption stringValue:(NSString *)value;

@end
