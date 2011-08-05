@class CTDRootElement;
@class CTDSection;

@interface CTDElement: NSObject
{
}

@property(nonatomic, retain) CTDSection *section;
@property(nonatomic, copy) NSString *caption;

- (id)initWithCaption:(NSString *)caption;
- (void)dealloc;

- (CTDRootElement *)root;

- (UITableViewCell *)getCell:(UITableView *)view;
- (UITableViewCell *)getCell:(UITableView *)view style:(UITableViewCellStyle)style;

- (void)didSelect;

@end
