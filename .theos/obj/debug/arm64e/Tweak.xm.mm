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

@class CNPropertyPhoneNumberCell; @class CNPropertySimpleTransportCell; 
static void (*_logos_orig$_ungrouped$CNPropertyPhoneNumberCell$setText$)(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CNPropertyPhoneNumberCell$setText$(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST, SEL, id); static BOOL (*_logos_orig$_ungrouped$CNPropertySimpleTransportCell$shouldShowStar)(_LOGOS_SELF_TYPE_NORMAL CNPropertySimpleTransportCell* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$CNPropertySimpleTransportCell$shouldShowStar(_LOGOS_SELF_TYPE_NORMAL CNPropertySimpleTransportCell* _LOGOS_SELF_CONST, SEL); 

#line 26 "Tweak.xm"


static void _logos_method$_ungrouped$CNPropertyPhoneNumberCell$setText$(_LOGOS_SELF_TYPE_NORMAL CNPropertyPhoneNumberCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {

	_logos_orig$_ungrouped$CNPropertyPhoneNumberCell$setText$(self, _cmd, @"DID THIS WORK???");

}





static BOOL _logos_method$_ungrouped$CNPropertySimpleTransportCell$shouldShowStar(_LOGOS_SELF_TYPE_NORMAL CNPropertySimpleTransportCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	
	return false;

}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CNPropertyPhoneNumberCell = objc_getClass("CNPropertyPhoneNumberCell"); MSHookMessageEx(_logos_class$_ungrouped$CNPropertyPhoneNumberCell, @selector(setText:), (IMP)&_logos_method$_ungrouped$CNPropertyPhoneNumberCell$setText$, (IMP*)&_logos_orig$_ungrouped$CNPropertyPhoneNumberCell$setText$);Class _logos_class$_ungrouped$CNPropertySimpleTransportCell = objc_getClass("CNPropertySimpleTransportCell"); MSHookMessageEx(_logos_class$_ungrouped$CNPropertySimpleTransportCell, @selector(shouldShowStar), (IMP)&_logos_method$_ungrouped$CNPropertySimpleTransportCell$shouldShowStar, (IMP*)&_logos_orig$_ungrouped$CNPropertySimpleTransportCell$shouldShowStar);} }
#line 45 "Tweak.xm"
