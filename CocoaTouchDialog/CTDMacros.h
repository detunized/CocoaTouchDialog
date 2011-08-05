#define CTD_ROOT(...) \
	[[[CTDRootElement alloc] initWithSections:__VA_ARGS__, nil] autorelease]

#define CTD_SECTION(header_text, footer_text, ...) \
	[[[CTDSection alloc] initWithHeader:(header_text) footer:(footer_text) elements:__VA_ARGS__, nil] autorelease]

#define CTD_BOOL(caption, value) \
	([CTDBoolElement elementWithCaption:(caption) boolValue:(value)])

#define CTD_STRING(caption, value) \
	([CTDStringElement elementWithCaption:(caption) stringValue:(value)])

#define CTD_SCREENLINK(caption, create_screen_block) \
	([CTDScreenLinkElement elementWithCaption:(caption) block:(create_screen_block)])
