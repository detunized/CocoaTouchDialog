#import "CTDSection.h"

@implementation CTDSection

@synthesize header = _header;
@synthesize footer = _footer;

- (id)init
{
	self = [super init];
	if (self)
	{
		self.header = nil;
		self.footer = nil;
		
		elements = [NSMutableArray new];
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
	[elements release];
	[super dealloc];
}

- (void)add:(CTDElement *)element
{
	[elements addObject:element]; 
}

- (int)count
{
	return [elements count];
}

- (CTDElement *)getAtIndex:(int)index
{
	return (CTDElement *)[elements objectAtIndex:index];
}

@end
