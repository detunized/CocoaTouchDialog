#import "CTDBoolElement.h"

@implementation CTDBoolElement

@synthesize value = _value;

- (id)initWithCaption:(NSString *)caption boolValue:(BOOL)value;
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
	UITableViewCell *cell = [super getCell:view];
	if (cell)
	{
		UISwitch *button = [[UISwitch new] autorelease];
		button.on = self.value;
		[button addTarget:self action:@selector(onSwitchToggled:) forControlEvents:UIControlEventValueChanged];
		cell.accessoryView = button;
	}

	return cell;
}

- (void)onSwitchToggled:(id)sender
{
	self.value = ((UISwitch *)sender).on;
}

@end
