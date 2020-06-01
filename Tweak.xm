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
@interface CNPropertyPhoneNumberCell: UITableViewCell
@end

@interface CNPropertySimpleTransportCell
@end

%hook CNPropertyPhoneNumberCell

- (void)setText:(id)arg1 {

	%orig(@"DID THIS WORK???");

}

- (void)setFrame:(CGRect)arg1 {

	%orig;

	UILabel *iphoneLabel = MSHookIvar<UILabel *>(self, "_textLabel");

	if ([iphoneLabel.text isEqualToString:@"iPhone"]) {

		iphoneLabel.text = @"TEST";

	}

}

%end

%hook CNPropertySimpleTransportCell

- (BOOL)shouldShowStar {
	
	return false;

}

%end
