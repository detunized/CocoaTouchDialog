#import "CTDRootElement.h"

@interface CTDViewController: UITableViewController
{
	CTDRootElement *_root;
}

@property(nonatomic, retain) CTDRootElement *root;

- (id)init;
- (id)initWithRoot:(CTDRootElement *)root;

@end
