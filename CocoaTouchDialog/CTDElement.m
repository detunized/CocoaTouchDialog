#import "CTDElement.h"
#import "CTDRootElement.h"

@implementation CTDElement

@synthesize section = section_;
@synthesize caption = caption_;

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
	self.section = nil;
	self.caption = nil;

	[super dealloc];
}

- (CTDRootElement *)root
{
	if (self.section)
	{
		return [self.section root];
	}
	else
	{
		assert([self isKindOfClass:[CTDRootElement class]]);
		return (CTDRootElement *)self;
	}
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

- (void)didSelect
{
}

@end
