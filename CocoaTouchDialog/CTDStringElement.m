#import "CTDStringElement.h"

@implementation CTDStringElement

@synthesize value = _value;

- (id)initWithCaption:(NSString *)caption stringValue:(NSString *)value;
{
	self = [super initWithCaption:caption];
	if (self)
	{
		self.value = value;
	}
	
	return self;
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
