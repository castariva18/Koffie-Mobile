part of 'widget.dart';

class CoffeeListData extends StatefulWidget {
  final String img;
  final String title;
  final String description;
  final List<String> ingredients;
  const CoffeeListData(
      {Key? key,
      required this.img,
      required this.title,
      required this.description,
      required this.ingredients})
      : super(key: key);

  @override
  State<CoffeeListData> createState() => _CoffeeListDataState();
}

class _CoffeeListDataState extends State<CoffeeListData> {
  Future<void> _showMyDialog() async {
    final ButtonStyle style = ElevatedButton.styleFrom(
      primary: kBlackColor,
      textStyle: whiteTextStyleInter.copyWith(
        fontWeight: medium,
      ),
    );
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Container(
                  width: MyUtility(context).width / 1.2,
                  height: MyUtility(context).height / 1.6,
                  decoration: BoxDecoration(
                    color: kCardColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: kTextColor,
                            ),
                          ),
                        ),
                        Container(
                          width: MyUtility(context).width / 1.2,
                          height: MyUtility(context).height / 1.9,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.title,
                                style: blackTextStyleInter.copyWith(
                                    fontSize: 22,
                                    fontWeight: bold,
                                    color: kTextOrangeColor),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 150,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          widget.img,
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Description:",
                                style: blackTextStyleInter.copyWith(
                                  fontWeight: semiBold,
                                  color: kTextOrangeColor,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                widget.description,
                                style: blackTextStyleInter.copyWith(
                                  fontWeight: regular,
                                  color: kTextColor,
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Ingredients:",
                                style: blackTextStyleInter.copyWith(
                                  fontWeight: semiBold,
                                  color: kTextOrangeColor,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                padding: EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  widget.ingredients
                                      .toString()
                                      .replaceAll("[", "")
                                      .replaceAll("]", ""),
                                  style: blackTextStyleInter.copyWith(
                                    fontSize: 12,
                                    fontWeight: light,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showMyDialog();
      },
      child: Container(
        height: MyUtility(context).height / 3.5,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: kCardColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                    image: NetworkImage(
                      widget.img,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                widget.title,
                style: blackTextStyleInter.copyWith(
                    fontWeight: bold, color: kTextOrangeColor, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                widget.description,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: blackTextStyleInter.copyWith(
                  fontSize: 14,
                  fontWeight: light,
                  color: kTextColor,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Show more",
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: blackTextStyleInter.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Ingredients :",
                    style: blackTextStyleInter.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold,
                        color: kTextOrangeColor),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    widget.ingredients
                        .toString()
                        .replaceAll("[", "")
                        .replaceAll("]", ""),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: blackTextStyleInter.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
