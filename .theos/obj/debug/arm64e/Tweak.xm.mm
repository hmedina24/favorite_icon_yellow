#line 1 "Tweak.xm"



















@interface CNPropertyPhoneNumberCell: UITableViewCell
@end

@interface CNPropertySimpleTransportCell
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

@class CNPropertySimpleTransportCell; @class CNPropertyPhoneNumberCell; 
static void (*_logos_orig$_ungrouped$CNPropertyPhoneNumberCell$setFrame$)(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST, SEL, CGRect); static void _logos_method$_ungrouped$CNPropertyPhoneNumberCell$setFrame$(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST, SEL, CGRect); static BOOL (*_logos_orig$_ungrouped$CNPropertySimpleTransportCell$shouldShowStar)(_LOGOS_SELF_TYPE_NORMAL CNPropertySimpleTransportCell* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$CNPropertySimpleTransportCell$shouldShowStar(_LOGOS_SELF_TYPE_NORMAL CNPropertySimpleTransportCell* _LOGOS_SELF_CONST, SEL); 

#line 26 "Tweak.xm"


static void _logos_method$_ungrouped$CNPropertyPhoneNumberCell$setFrame$(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGRect arg1) {

	_logos_orig$_ungrouped$CNPropertyPhoneNumberCell$setFrame$(self, _cmd, arg1);

	

}





static BOOL _logos_method$_ungrouped$CNPropertySimpleTransportCell$shouldShowStar(_LOGOS_SELF_TYPE_NORMAL CNPropertySimpleTransportCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	UILabel *iphoneLabel = MSHookIvar<UILabel *>(self, "_textLabel");

	iphoneLabel.text = @"⭐";
	return false;

}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CNPropertyPhoneNumberCell = objc_getClass("CNPropertyPhoneNumberCell"); MSHookMessageEx(_logos_class$_ungrouped$CNPropertyPhoneNumberCell, @selector(setFrame:), (IMP)&_logos_method$_ungrouped$CNPropertyPhoneNumberCell$setFrame$, (IMP*)&_logos_orig$_ungrouped$CNPropertyPhoneNumberCell$setFrame$);Class _logos_class$_ungrouped$CNPropertySimpleTransportCell = objc_getClass("CNPropertySimpleTransportCell"); MSHookMessageEx(_logos_class$_ungrouped$CNPropertySimpleTransportCell, @selector(shouldShowStar), (IMP)&_logos_method$_ungrouped$CNPropertySimpleTransportCell$shouldShowStar, (IMP*)&_logos_orig$_ungrouped$CNPropertySimpleTransportCell$shouldShowStar);} }
#line 49 "Tweak.xm"
