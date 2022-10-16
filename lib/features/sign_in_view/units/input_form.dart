part of '../sign_in_form.dart';

class _TextFieldsForm extends StatelessWidget {
  const _TextFieldsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child:Column(
        children: [
          SizedBox(
            height: 28.h,
          ),
          CustomTextField(
            hintText: "example@gmail.com",
            prefixIcon: const Icon(
              Icons.mail_outline,
            ),
            borderRadius: 2,
            hPadding: 16.w,
            borderWidth: .5,
          ),
          SizedBox(
            height: 13.h,
          ),
          CustomTextField(
            hintText: "Password",
            prefixIcon: const Icon(
              Icons.lock_outline,
            ),
            borderRadius: 2,
            hPadding: 16.w,
            borderWidth: .5,
            isPassword: true,
          ),
        ],
      )
    );
  }
}
