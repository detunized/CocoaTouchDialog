#import "CTDViewController.h"

@implementation CTDViewController

@synthesize root = root_;

- (id)init
{
	self = [super initWithStyle:UITableViewStyleGrouped];
	if (self)
	{
	}
	
	return self;
}

- (id)initWithRoot:(CTDRootElement *)root
{
	self = [self init];
	if (self)
	{
		self.root = root;
		root.viewController = self;
	}
	
	return self;
}

- (id)initWithCoder:(NSCoder *)decoder root:(CTDRootElement *)root
{
	self = [super initWithCoder:decoder];
	if (self)
	{
		// TODO: Super hack!  Find a better solution!
		// This is needed because in some case we need to call initWithCoder, not a regular init.
		// In those cases there's no way to set the style and other then hacking it in this way.
		UITableViewStyle style = UITableViewStyleGrouped;
		object_setInstanceVariable(self, "_tableViewStyle", *(UITableViewStyle **)&style);

		self.root = root;
		root.viewController = self;
	}

	return self;
}

- (void)dealloc
{
	if (self.root)
	{
		self.root.viewController = nil;
		self.root = nil;
	}

	[super dealloc];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return [self.root count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	return [self.root getAtIndex:section].header;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
	return [self.root getAtIndex:section].footer;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self.root getAtIndex:section].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return [[[self.root getAtIndex:indexPath.section] getAtIndex:indexPath.row] getCell:tableView];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[[[self.root getAtIndex:indexPath.section] getAtIndex:indexPath.row] didSelect];
}

@end
