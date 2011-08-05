#import "CTDRootElement.h"

@implementation CTDRootElement

@synthesize viewController = viewController_;

- (id)init
{
	self = [super init];
	if (self)
	{
		sections_ = [[NSMutableArray alloc] init];
	}

	return self;
}

- (id)initWithSections:(CTDSection *)firstSection, ...
{
	self = [self init];
	if (self)
	{
		va_list arguments;
		va_start(arguments, firstSection);

		for (CTDSection *i = firstSection; i; i = va_arg(arguments, CTDSection *))
		{
			[self add:i];
		}
		
		va_end(arguments);
	}
	
	return self;
}

- (void)dealloc
{
	[sections_ release];

	self.viewController = nil;

	[super dealloc];
}

- (void)add:(CTDSection *)section
{
	[sections_ addObject:section];
	section.root = self;
}

- (size_t)count
{
	return [sections_ count];
}

- (CTDSection *)getAtIndex:(size_t)index
{
	assert(index < [self count]);
	return (CTDSection *)[sections_ objectAtIndex:index];
}

@end
