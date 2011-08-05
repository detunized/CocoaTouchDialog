#import "CTDBoolElement.h"

@implementation CTDBoolElement

@synthesize value = value_;

+ (CTDBoolElement *)elementWithCaption:(NSString *)caption boolValue:(BOOL)value
{
	return [[[CTDBoolElement alloc] initWithCaption:caption boolValue:value] autorelease];
}

- (id)initWithCaption:(NSString *)caption boolValue:(BOOL)value;
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
	[super dealloc];
}

- (UITableViewCell *)getCell:(UITableView *)view
{
	UITableViewCell *cell = [super getCell:view];
	if (cell)
	{
		cell.selectionStyle = UITableViewCellSelectionStyleNone;
	
		UISwitch *button = [[UISwitch new] autorelease];
		button.on = self.value;
		[button addTarget:self action:@selector(onSwitchToggled:) forControlEvents:UIControlEventValueChanged];
		cell.accessoryView = button;
	}

	return cell;
}

- (void)onSwitchToggled:(id)sender
{
	assert([sender respondsToSelector:@selector(isOn)]);
	self.value = [sender isOn];
}

@end
