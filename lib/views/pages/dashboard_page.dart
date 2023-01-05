part of 'pages.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    context.read<CoffeeCubit>().getCoffeeData();
    return super.initState();
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin - 4,
        right: defaultMargin - 4,
        top: defaultRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dashboard",
            style: blackTextStyleInter.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: kBlackColor,
              borderRadius: BorderRadius.circular(20),
            ),
            height: MyUtility(context).height / 6,
            child: Padding(
              padding: const EdgeInsets.only(
                left: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Event name',
                        style: whiteTextStyleInter.copyWith(
                          fontWeight: regular,
                        ),
                      ),
                      Text(
                        "namaEvent.toString()",
                        style: whiteTextStyleInter.copyWith(
                          fontWeight: bold,
                          fontSize: 16,
                          color: const Color(0xffFFCB74),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MyUtility(context).height / 10,
                    width: 150,
                    // decoration: const BoxDecoration(
                    //   image: DecorationImage(
                    //     image: AssetImage('assets/images/ic_kado.png'),
                    //   ),
                    // ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget contentTwo() {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin - 4,
        right: defaultMargin - 4,
        top: defaultRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // content status

          Text(
            "Participants",
            style: blackTextStyleInter.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MyUtility(context).height / 2.5,
            width: double.infinity,
            child: BlocBuilder<CoffeeCubit, CoffeeState>(
              builder: (context, state) {
                if (state is CoffeeGetSuccess) {
                  if (state.result.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 150,
                            height: 50,
                            child: Icon(
                              Icons.hourglass_empty,
                            ),
                          ),
                          Text(
                            'Data kosong',
                            style:
                                blackTextStyleInter.copyWith(fontWeight: bold),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(top: 8),
                      itemCount: state.result.length,
                      itemBuilder: (context, index) {
                        var dataAttandance = state.result[index];
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                          child: CoffeeListData(
                            title: dataAttandance.title,
                            description: dataAttandance.description,
                          ),
                        );
                      },
                    );
                  }
                } else if (state is CoffeeGetFailed) {
                  return Text(state.message);
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                header(),
                contentTwo(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
