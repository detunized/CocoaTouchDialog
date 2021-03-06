#import "CTDRootElement.h"
#import "CTDViewController.h"

@implementation CTDRootElement

@synthesize viewController = viewController_;

- (id)init
{
	self = [super init];
	if (self)
	{
		sections_ = [[NSMutableArray alloc] init];
	}

	return self;
}

- (id)initWithCaption:(NSString *)caption sections:(CTDSection *)firstSection, ...
{
	self = [super initWithCaption:caption];
	if (self)
	{
		sections_ = [[NSMutableArray alloc] init];

		va_list arguments;
		va_start(arguments, firstSection);

		for (CTDSection *i = firstSection; i; i = va_arg(arguments, CTDSection *))
		{
			[self add:i];
		}
		
		va_end(arguments);
	}
	
	return self;
}

- (void)dealloc
{
	[sections_ release];

	self.viewController = nil;

	[super dealloc];
}

- (void)add:(CTDSection *)section
{
	[sections_ addObject:section];
	section.root = self;
}

- (size_t)count
{
	return [sections_ count];
}

- (CTDSection *)getAtIndex:(size_t)index
{
	assert(index < [self count]);
	return (CTDSection *)[sections_ objectAtIndex:index];
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
	// TODO: Make this a function in CTDElement
	CTDViewController *screen = [[CTDViewController alloc] initWithRoot:self];
	if (screen)
	{
		[[self root].viewController.navigationController pushViewController:screen animated:YES];
	}
}

@end
