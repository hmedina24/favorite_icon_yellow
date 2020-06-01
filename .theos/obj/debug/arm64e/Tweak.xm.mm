#line 1 "Tweak.xm"

@interface CNPropertyPhoneNumberCell: UIView {
	UIView * _view;
}


@end



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class CNPropertyPhoneNumberCell; 
static void (*_logos_orig$_ungrouped$CNPropertyPhoneNumberCell$setProperty$)(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CNPropertyPhoneNumberCell$setProperty$(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST, SEL, id); 

#line 10 "Tweak.xm"


static void _logos_method$_ungrouped$CNPropertyPhoneNumberCell$setProperty$(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){

	UIView * myView = MSHookIvar<UIView *>(self, "_view");

	myView.backgroundColor = [UIColor redColor];
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CNPropertyPhoneNumberCell = objc_getClass("CNPropertyPhoneNumberCell"); MSHookMessageEx(_logos_class$_ungrouped$CNPropertyPhoneNumberCell, @selector(setProperty:), (IMP)&_logos_method$_ungrouped$CNPropertyPhoneNumberCell$setProperty$, (IMP*)&_logos_orig$_ungrouped$CNPropertyPhoneNumberCell$setProperty$);} }
#line 20 "Tweak.xm"
