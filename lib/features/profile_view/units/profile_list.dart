
part of'../profile_view.dart';

Widget profileList({BuildContext? context}){
  return Column(
    children:  [
      accountRow(
        context: context,
        onTap: (){
          showModalBottomSheet<void>(context: context!,
              builder: (context){
                return SizedBox(
                  height: .4.sh,
                  child:const EmailForm(),
                );
              });
        },
        text: "Email",
        iconData: Icons.email_outlined,
      ),
      accountRow(
        text: "Phone Number",
        iconData: Icons.phone_android_sharp,
        secondTitle: '(307) 555-0133',
        context: context,
        onTap: (){
          showModalBottomSheet<void>(context: context!,
              builder: (context){
                return SizedBox(
                  height: .4.sh,
                  child:const PhoneNumberForm(),
                );
              });
        },
      ),
      accountRow(
        text: "Change Password",
        context: context,
        onTap: (){
          showModalBottomSheet<void>(context: context!,
              builder: (context){
                return SizedBox(
                  height: .8.sh,
                  child:const PasswordForm(),
                );
              });
        },
        iconData: Icons.lock_outline,
        secondTitle: '*********',
      ),
      accountRow(
        text: "Change Lang",
        context: context,
        onTap: (){
          showModalBottomSheet<void>(context: context!,
              builder: (context){
                return SizedBox(
                  height: .4.sh,
                  child:const LanguageForm(),
                );
              });
        },
        iconData: Icons.language,
        haveSecondTitle: false,
      ),
    ],
  );
}
