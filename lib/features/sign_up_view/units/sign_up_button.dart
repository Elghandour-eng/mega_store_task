part of '../sign_up_form.dart';

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(function: () {
          MagicRouter.navigateTo(const HomeNavigator());
        }, text: "Sign Up"),
        SizedBox(
          height: 24.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: 'have an account?',
              textStyle: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
                onPressed: () {
                  MagicRouter.navigateTo(const SignInForm());
                },
                child: const CustomText(
                  text: 'Sign In',
                  color: ColorManager.textColor1,
                )),
          ],
        )
      ],
    );
  }
}
