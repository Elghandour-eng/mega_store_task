part of '../sign_up_form.dart';

class _InputForm extends StatelessWidget {
  const _InputForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 28.h,
        ),
        Form(
            child: Column(
          children: [
            CustomTextField(
              hintText: "Full Name",
              prefixIcon: const Icon(
                Icons.person_outline,
              ),
              borderRadius: 2,
              hPadding: 16.w,
              borderWidth: .5,
            ),
            SizedBox(
              height: 13.h,
            ),
            CustomTextField(
              hintText: "Your Email",
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
              hintText: "Your Phone",
              prefixIcon: const Icon(
                Icons.phone,
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
            SizedBox(
              height: 13.h,
            ),
            CustomTextField(
              hintText: "Confirm Password",
              prefixIcon: const Icon(
                Icons.lock_outline,
              ),
              borderRadius: 2,
              hPadding: 16.w,
              borderWidth: .5,
              isPassword: true,
            ),
          ],
        )),
        SizedBox(
          height: 27.h,
        ),
      ],
    );
  }
}
