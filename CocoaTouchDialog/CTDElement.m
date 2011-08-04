#import "CTDElement.h"

@implementation CTDElement

@synthesize parent = _parent;
@synthesize caption = _caption;

- (id)initWithCaption:(NSString *)caption
{
	self = [self init];
	if (self)
	{
		self.caption = caption;
	}
	
	return self;
}

- (void)dealloc
{
	[super dealloc];
}

- (UITableViewCell *)getCell:(UITableView *)view
{
	return [self getCell:view style:UITableViewCellStyleDefault];
}

- (UITableViewCell *)getCell:(UITableView *)view style:(UITableViewCellStyle)style
{
	NSString *cellIdentifier = NSStringFromClass(self.class);
	UITableViewCell *cell = [view dequeueReusableCellWithIdentifier:cellIdentifier];
	if (cell == nil)
	{
		cell = [[[UITableViewCell alloc] initWithStyle:style reuseIdentifier:cellIdentifier] autorelease];
	}

	cell.textLabel.text = self.caption;
	
	return cell;
}

@end
