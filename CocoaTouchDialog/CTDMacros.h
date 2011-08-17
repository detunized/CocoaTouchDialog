#define CTD_ROOT(caption, ...) \
	[[[CTDRootElement alloc] initWithCaption:(caption) sections:__VA_ARGS__, nil] autorelease]

#define CTD_SECTION(header_text, footer_text, ...) \
	[[[CTDSection alloc] initWithHeader:(header_text) footer:(footer_text) elements:__VA_ARGS__, nil] autorelease]

#define CTD_BOOL(caption, value) \
	([CTDBoolElement elementWithCaption:(caption) boolValue:(value)])

#define CTD_STRING(caption, value) \
	([CTDStringElement elementWithCaption:(caption) stringValue:(value)])

#define CTD_SCREENLINK_BLOCK(caption, create_screen_block) \
	([CTDScreenLinkElement elementWithCaption:(caption) block:(create_screen_block)])

#define CTD_SCREENLINK_CLASS(caption, class) \
	CTD_SCREENLINK_CLASS_NIB((caption), class, @#class)

#define CTD_SCREENLINK_CLASS_NONIB(caption, class) \
	CTD_SCREENLINK_BLOCK((caption), ^{ \
		return (UIViewController *)[[[class alloc] init] autorelease]; \
	})

#define CTD_SCREENLINK_CLASS_NIB(caption, class, nib) \
	CTD_SCREENLINK_BLOCK((caption), ^{ \
		return (UIViewController *)[[[class alloc] initWithNibName:(nib) bundle:nil] autorelease]; \
	})
