#line 1 "Tweak.xm"

















































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
static void (*_logos_orig$_ungrouped$CNContactContentViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL CNContactContentViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CNContactContentViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL CNContactContentViewController* _LOGOS_SELF_CONST, SEL); 

#line 49 "Tweak.xm"
@interface CNContactContentViewController : UIViewController <CNPropertyActionDelegate, CNPropertyCellDelegate, CNPropertyGroupItemDelegate, CNContactGroupPickerDelegate, UIPopoverControllerDelegate, CNContactHeaderViewDelegate, CNContactContentViewControllerDelegate, UIAdaptivePresentationControllerDelegate, CNShareLocationProtocol, CNUIObjectViewControllerDelegate, CNContactInlineActionsViewControllerDelegate_Internal, CNUIGeminiDataSourceDelegate, NSUserActivityDelegate, CNUIEditAuthorizationControllerDelegate, CNContactActionDelegate, CNPresenterDelegate, CNContactContentViewController, UITableViewDelegate, UITableViewDataSource, UIViewControllerRestoration> {

}
@property (nonatomic,retain) NSString * message;   
@end

static void _logos_method$_ungrouped$CNContactContentViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL CNContactContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	_logos_orig$_ungrouped$CNContactContentViewController$viewDidLoad(self, _cmd);
	
	UILabel *iphoneLabel = MSHookIvar<UILabel *>(self, "_UILabel");
	if ([message.text isEqualToString:@"Recent"]){
		iphoneLabel.text = @"⭐";
	}
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CNContactContentViewController = objc_getClass("CNContactContentViewController"); MSHookMessageEx(_logos_class$_ungrouped$CNContactContentViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$CNContactContentViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$CNContactContentViewController$viewDidLoad);} }
#line 64 "Tweak.xm"
