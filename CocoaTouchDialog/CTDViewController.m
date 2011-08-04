#import "CTDViewController.h"

@implementation CTDViewController

@synthesize root = _root;

- (id)init
{
	return [super initWithStyle:UITableViewStyleGrouped];
}

- (id)initWithRoot:(CTDRootElement *)root
{
	self = [self init];
	if (self)
	{
		self.root = root;
	}
	
	return self;
}

- (void)dealloc
{
	[super dealloc];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return self.root.count;
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

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//	return tableView.rowHeight;
//}

@end
