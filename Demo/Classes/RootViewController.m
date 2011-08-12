#import "RootViewController.h"
#import "WebBrowser.h"

@implementation RootViewController

+ (CTDRootElement *)createElements
{
	return CTD_ROOT(
		CTD_SECTION(@"Bool", nil, 
			CTD_BOOL(@"Airplane Mode", NO)
		),

		CTD_SECTION(@"Screen Link", nil, 
			CTD_SCREENLINK_CLASS_NONIB(@"No NIB", UIViewController),
			CTD_SCREENLINK_CLASS(@"With NIB", WebBrowser)
		)
	);
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self)
	{
		self.root = [RootViewController createElements];
	}

	return self;
}

- (id)initWithCoder:(NSCoder *)decoder
{
	self = [super initWithCoder:decoder root:[RootViewController createElements]];
	if (self)
	{
		self.title = @"Demo";
	}

	return self;
}

@end
