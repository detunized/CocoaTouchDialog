#import "RootViewController.h"
#import "WebBrowser.h"

@implementation RootViewController

+ (CTDRootElement *)createElements
{
	return CTD_ROOT(@"Demo",
		CTD_SECTION(@"Bool", nil, 
			CTD_BOOL(@"Airplane Mode", NO)
		),

		CTD_SECTION(@"Nested", nil, 
			CTD_ROOT(@"Nested",
				CTD_SECTION(nil, nil,
					CTD_BOOL(@"One more bool", YES),
					CTD_ROOT(@"Deeper Nested",
						CTD_SECTION(nil, nil,
							CTD_BOOL(@"Yet more bool", YES)
						)
					)
				)
			)
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
	}

	return self;
}

@end
