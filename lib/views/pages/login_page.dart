part of 'pages.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController pinController = TextEditingController();

  Widget content() {
    return Center(
      child: Container(
        height: MyUtility(context).height / 3,
        width: double.infinity,
        margin: EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: Colors.white24.withOpacity(0.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Koffie',
              style: whiteTextStyleInter.copyWith(
                fontWeight: bold,
                fontSize: 48.0,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Amazing Taste of coffee',
              style: whiteTextStyleInter.copyWith(
                fontWeight: regular,
                fontSize: 22.0,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: pinController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
                decoration: InputDecoration(
                  labelText: 'Masukan PIN anda',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: kPrimaryColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: 'PIN',
                  hintStyle: const TextStyle(
                    color: kSearchColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    if (pinController.text == "") {
                      Flushbar(
                        duration: const Duration(milliseconds: 3000),
                        flushbarPosition: FlushbarPosition.TOP,
                        backgroundColor: kredColor,
                        titleText: Text(
                          'Error',
                          style: whiteTextStyleInter.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        messageText: Text(
                          'PIN cant be empty',
                          style: whiteTextStyleInter.copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ).show(context);
                    } else {
                      context.read<RoutesCubit>().emit(RoutesDashboardPage());
                    }
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 16, right: 16, left: 16),
                    decoration: BoxDecoration(
                      color: kTextOrangeColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(6, 0, 0, 0).withOpacity(0.5),
                          blurRadius: 7,
                          offset: Offset(7, 7), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                        child: Text("Login",
                            style: whiteTextStyleInter.copyWith(
                                fontSize: 18, fontWeight: bold),
                            textAlign: TextAlign.center)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // warna paling bawah
        Container(
          color: kPrimaryColor,
        ),
        //warna dasar splash
        SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  'assets/coffee.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        content(),
      ],
    ));
  }
}
