part of '../confirm_password_form.dart';

class _AuthButton extends StatelessWidget {
  const _AuthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      function: () {
        MagicRouter.navigateTo(const HomeViewForm());
      },
      text: "Confirm",
      borderRadius: 5.r,
    );
  }
}
