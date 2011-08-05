#import "CTDScreenLinkElement.h"
#import "CTDRootElement.h"
#import "CTDViewController.h"

@implementation CTDScreenLinkElement

+ (CTDScreenLinkElement *)elementWithCaption:(NSString *)caption block:(CreateScreenBlock)block
{
	return [[[CTDScreenLinkElement alloc] initWithCaption:caption block:block] autorelease];
}

- (id)initWithCaption:(NSString *)caption block:(CreateScreenBlock)block
{
	self = [super initWithCaption:caption];
	if (self)
	{
		createScreen_ = [block copy];
	}

	return self;
}

- (void)dealloc
{
	[createScreen_ release];
	
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

- (void)didSelect
{
	UIViewController *screen = createScreen_();
	if (screen)
	{
		[[self root].viewController.navigationController pushViewController:screen animated:YES];
	}
}

@end
