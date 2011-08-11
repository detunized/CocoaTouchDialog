#import "CTDElement.h"

typedef UIViewController *(^CreateScreenBlock)();

@interface CTDScreenLinkElement: CTDElement
{
@private
	CreateScreenBlock createScreen_;
}

+ (CTDScreenLinkElement *)elementWithCaption:(NSString *)caption block:(CreateScreenBlock)block;

- (id)initWithCaption:(NSString *)caption block:(CreateScreenBlock)block;
- (void)dealloc;

@end
