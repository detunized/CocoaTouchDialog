#import "CTDSection.h"
#import "CTDRootElement.h"

@implementation CTDSection

@synthesize root = root_;
@synthesize header = header_;
@synthesize footer = footer_;

- (id)init
{
	self = [super init];
	if (self)
	{
		elements_ = [[NSMutableArray alloc] init];
	}

	return self;
}

- (id)initWithElements:(CTDElement *)firstElement vaList:(va_list)vaList
{
	self = [self init];
	if (self)
	{
		for (CTDElement *i = firstElement; i; i = va_arg(vaList, CTDElement *))
		{
			[self add:i];
		}
	}
	
	return self;
}

- (id)initWithElements:(CTDElement *)firstElement, ...
{
	va_list arguments;
	va_start(arguments, firstElement);
	
	self = [self initWithElements:firstElement vaList:arguments];
	
	va_end(arguments);

	return self;
}

- (id)initWithHeader:(NSString *)header elements:(CTDElement *)firstElement, ...
{
	va_list arguments;
	va_start(arguments, firstElement);
	
	self = [self initWithElements:firstElement vaList:arguments];
	if (self)
	{
		self.header = header;
	}

	va_end(arguments);

	return self;
}

- (id)initWithHeader:(NSString *)header footer:(NSString *)footer elements:(CTDElement *)firstElement, ...
{
	va_list arguments;
	va_start(arguments, firstElement);
	
	self = [self initWithElements:firstElement vaList:arguments];
	if (self)
	{
		self.header = header;
		self.footer = footer;
	}

	va_end(arguments);
	
	return self;
}

- (void)dealloc
{
	[elements_ release];
	
	self.root = nil;
	self.header = nil;
	self.footer = nil;
	
	[super dealloc];
}

- (void)add:(CTDElement *)element
{
	[elements_ addObject:element];
	element.section = self;
}

- (size_t)count
{
	return [elements_ count];
}

- (CTDElement *)getAtIndex:(size_t)index
{
	assert(index < [self count]);
	return (CTDElement *)[elements_ objectAtIndex:index];
}

@end
