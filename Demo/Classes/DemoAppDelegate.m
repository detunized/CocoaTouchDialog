#import "DemoAppDelegate.h"
#import "RootViewController.h"

@implementation DemoAppDelegate

@synthesize window = window_;
@synthesize navigationController = navigationController_;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self.window addSubview:navigationController_.view];
    [self.window makeKeyAndVisible];

    return YES;
}

#pragma mark -
#pragma mark Memory management

- (void)dealloc
{
	[navigationController_ release];
	[window_ release];

	[super dealloc];
}


@end
