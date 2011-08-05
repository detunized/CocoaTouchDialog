#import "CTDStringElement.h"

@implementation CTDStringElement

@synthesize value = value_;

+ (CTDStringElement *)elementWithCaption:(NSString *)caption stringValue:(NSString *)value
{
	return [[[CTDStringElement alloc] initWithCaption:caption stringValue:value] autorelease];
}

- (id)initWithCaption:(NSString *)caption stringValue:(NSString *)value;
{
	self = [super initWithCaption:caption];
	if (self)
	{
		self.value = value;
	}

	return self;
}

- (void)dealloc
{
	self.value = nil;

	[super dealloc];
}

- (UITableViewCell *)getCell:(UITableView *)view
{
	UITableViewCell *cell = [super getCell:view style:UITableViewCellStyleValue1];
	if (cell)
	{
		cell.detailTextLabel.text = self.value;
	}
	
	return cell;
}

@end
