//----Interface Begin----
@interface CNPropertyPhoneNumberCell: UIView {
	UIView * _view;
}
//----Properties----
//@property (nonatomic,retain) CNContactAddFavoriteAction * addFavoriteAction; 
@end
//----Interface End----
//----Hook Begin---- 
%hook CNPropertyPhoneNumberCell
//Method
-(void)viewDidLoad{
	UIView * myView = MSHookIvar<UIView *>(self, "_view");

	myView.backgroundColor = [UIColor redColor];
}
%end
//----Hook End----
