part of '../confirm_password_form.dart';

class _InputForm extends StatelessWidget {
  const _InputForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.h,
        ),
        Form(
            child: Column(
          children: [
            CustomTextField(
              hintText: "Password",
              prefixIcon: const Icon(
                Icons.lock_outline,
              ),
              borderRadius: 10.r,
              hPadding: 16.w,
              borderWidth: .5,
              isPassword: true,
            ),
            SizedBox(
              height: 13.h,
            ),
            CustomTextField(
              hintText: "Confirm Password",
              prefixIcon: const Icon(
                Icons.lock_outline,
              ),
              borderRadius: 10.r,
              hPadding: 16.w,
              borderWidth: .5,
              isPassword: true,
            ),
          ],
        )),
        SizedBox(
          height: 36.h,
        ),
      ],
    );
  }
}
