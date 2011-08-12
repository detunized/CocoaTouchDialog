#import "WebBrowser.h"

@implementation WebBrowser

@synthesize webView = webView_;

- (void)viewDidLoad
{
    [super viewDidLoad];

	[webView_ loadHTMLString:@"Lorem ipsum" baseURL:nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
	
	self.webView = nil;
}

- (void)dealloc
{
    [super dealloc];
}

@end
