#import "CTDRootElement.h"

@interface CTDViewController: UITableViewController
{
}

@property(nonatomic, retain) CTDRootElement *root;

- (id)init;
- (id)initWithRoot:(CTDRootElement *)root;
- (id)initWithCoder:(NSCoder *)decoder root:(CTDRootElement *)root;

@end
