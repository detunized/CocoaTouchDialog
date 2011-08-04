#import "CTDEntryElement.h"

@implementation CTDEntryElement

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
		CGRect r = CGRectMake(0, 0, cell.contentView.bounds.size.width / 2, cell.contentView.bounds.size.height);		
		UITextField *input = [[[UITextField alloc] initWithFrame:r] autorelease];
		input.placeholder = self.value;
//		[cell.contentView addSubview:input];
		cell.accessoryView = input;
	}
	
	return cell;
}

@end
