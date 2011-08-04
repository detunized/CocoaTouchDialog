@interface CTDElement: NSObject
{
	
@protected	
	CTDElement *_parent;
	NSString *_caption;
}

@property(nonatomic, retain) CTDElement *parent;
@property(nonatomic, copy) NSString *caption;

- (id)initWithCaption:(NSString *)caption;
- (void)dealloc;

- (UITableViewCell *)getCell:(UITableView *)view;
- (UITableViewCell *)getCell:(UITableView *)view style:(UITableViewCellStyle)style;

@end
