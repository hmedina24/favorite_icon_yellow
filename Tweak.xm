/* //----Interface Begin----
@interface CNPropertyPhoneNumberCell : CNPropertySimpleTransportCell{
	UIView * _view;
}
//----Properties----
//@property (nonatomic,retain) CNContactAddFavoriteAction * addFavoriteAction; 
@end
//----Interface End----
//----Hook Begin---- 
%hook CNPropertyPhoneNumberCell
//Method
-(void)setProperty:(id)arg1{

	UIView * myView = MSHookIvar<UIView *>(self, "_view");

	myView.backgroundColor = [UIColor redColor];
}
%end
//----Hook End---- */
/*@interface CNPropertyPhoneNumberCell: UITableViewCell
@end

@interface CNPropertySimpleTransportCell
@end

%hook CNPropertyPhoneNumberCell

- (void)setFrame:(CGRect)arg1 {

	%orig;

	

}

%end

%hook CNPropertySimpleTransportCell

- (BOOL)shouldShowStar {
	UILabel *iphoneLabel = MSHookIvar<UILabel *>(self, "_UIImage");

	iphoneLabel.text = @"⭐";
	return false;

}

%end*/
@interface CNContactContentViewController : UIViewController {

}
@property (nonatomic,retain) NSString * message;   
@end
%hook CNContactContentViewController
-(void)viewDidLoad{
	%orig;
	
	UILabel *iphoneLabel = MSHookIvar<UILabel *>(self, "_UILabel");
	if ([message.text isEqualToString:@"Recent"]){
		iphoneLabel.text = @"⭐";
	}
}
%end