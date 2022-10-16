part of '../sign_in_form.dart';


class _SignInButton extends StatelessWidget {
  const _SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 22.h,
        ),
        CustomButton(
          function: () {
            MagicRouter.navigateTo(const HomeNavigator());
          },
          text: "Sign In",
        ),
        SizedBox(
          height: 21.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: 'OR',
              textStyle: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ],
    );
  }
}
