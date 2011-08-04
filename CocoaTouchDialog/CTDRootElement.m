#import "CTDRootElement.h"

@implementation CTDRootElement

- (id)init
{
	self = [super init];
	if (self)
	{
		sections = [NSMutableArray new];
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
	[sections release];
	[super dealloc];
}

- (void)add:(CTDSection *)section
{
	[sections addObject:section]; 
}

- (int)count
{
	return [sections count];
}

- (CTDSection *)getAtIndex:(int)index
{
	return (CTDSection *)[sections objectAtIndex:index];
}

@end
