//----Interface Begin----
@interface CNContactContentViewController: UIView {
	UIView * _view;
}
//----Properties----
@property (nonatomic,retain) CNContactAddFavoriteAction * addFavoriteAction; 
@end
//----Interface End----
//----Hook Begin---- 
%hook CNContactContentViewController
//Method
-(void)setAddFavoriteAction:(CNContactAddFavoriteAction *)arg1{

}
%end
//----Hook End----
