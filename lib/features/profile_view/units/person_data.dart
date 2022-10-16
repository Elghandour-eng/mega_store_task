
part of'../profile_view.dart';

class _PersonData extends StatelessWidget {
  const _PersonData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 23.w,
        ),
        CircleAvatar(
          backgroundImage:const NetworkImage(
              'https://images.unsplash.com/photo-1540569014015-19a7be504e3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'),
          radius: 40.r,
        ),
        SizedBox(
          width: 14.w,
        ),
        InkWell(
          onTap: (){
            showModalBottomSheet<void>(context: context,
                builder: (context){
                  return SizedBox(
                    height: .6.sh,
                    child:const NameForm(),
                  );
                });
          },
          child: Column(
            children: [
              CustomText(
                text: "Dominic Ovo",
                textStyle: Theme.of(context).textTheme.headline1,
              ),
              CustomText(
                text: "@dominic_ovo",
                textStyle: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        )
      ],
    );
  }
}
