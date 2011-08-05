#import "CTDFloatElement.h"

@implementation CTDFloatElement

@synthesize value = _value;

- (id)initWithCaption:(NSString *)caption floatValue:(float)value;
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
		UISlider *slider = [[UISlider new] autorelease];
		slider.minimumValue = 0; // TODO: remove hardcoded, allow user to configure this
		slider.maximumValue = 1; // TODO: remove hardcoded, allow user to configure this
		slider.value = self.value;
		slider.continuous = YES;
		[slider addTarget:self action:@selector(onSliderMoved:) forControlEvents:UIControlEventValueChanged];
		cell.accessoryView = slider;
	}
	
	return cell;
}

- (void)onSliderMoved:(id)sender
{
	self.value = ((UISlider *)sender).value;
}

@end
