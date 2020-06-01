#line 1 "Tweak.xm"

@interface CNContactContentViewController: UIView {
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

@class CNContactContentViewController; 
static void (*_logos_orig$_ungrouped$CNContactContentViewController$loadView)(_LOGOS_SELF_TYPE_NORMAL CNContactContentViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CNContactContentViewController$loadView(_LOGOS_SELF_TYPE_NORMAL CNContactContentViewController* _LOGOS_SELF_CONST, SEL); 

#line 10 "Tweak.xm"


static void _logos_method$_ungrouped$CNContactContentViewController$loadView(_LOGOS_SELF_TYPE_NORMAL CNContactContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	UIView * myView = MSHookIvar<UIView *>(self, "_containerView");

	myView.backgroundColor = [UIColor redColor];
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CNContactContentViewController = objc_getClass("CNContactContentViewController"); MSHookMessageEx(_logos_class$_ungrouped$CNContactContentViewController, @selector(loadView), (IMP)&_logos_method$_ungrouped$CNContactContentViewController$loadView, (IMP*)&_logos_orig$_ungrouped$CNContactContentViewController$loadView);} }
#line 19 "Tweak.xm"
