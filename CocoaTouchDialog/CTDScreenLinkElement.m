#import "CTDScreenLinkElement.h"

@implementation CTDScreenLinkElement

+ (CTDScreenLinkElement *)elementWithCaption:(NSString *)caption block:(CreateScreenBlock)block
{
	return [[[CTDScreenLinkElement alloc] initWithCaption:caption block:block] autorelease];
}

- (id)initWithCaption:(NSString *)caption block:(CreateScreenBlock)block
{
	if (self = [super initWithCaption:caption])
	{
		_createScreen = [block copy];
	}

	return self;
}

- (void)dealloc
{
	[_createScreen release];
	
	[super dealloc];
}

- (UITableViewCell *)getCell:(UITableView *)view
{
	UITableViewCell *cell = [super getCell:view style:UITableViewCellStyleValue1];
	if (cell)
	{
		cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	}

	return cell;
}

@end
