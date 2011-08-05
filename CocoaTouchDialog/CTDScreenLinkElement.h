#import "CTDElement.h"

typedef UIViewController *(^ CreateScreenBlock)();

@interface CTDScreenLinkElement: CTDElement
{
	CreateScreenBlock _createScreen;
}

+ (CTDScreenLinkElement *)elementWithCaption:(NSString *)caption block:(CreateScreenBlock)block;

- (id)initWithCaption:(NSString *)caption block:(CreateScreenBlock)block;

@end
