part of 'widget.dart';

class CoffeeListData extends StatefulWidget {
  final String title;
  final String description;
  const CoffeeListData({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  State<CoffeeListData> createState() => _CoffeeListDataState();
}

class _CoffeeListDataState extends State<CoffeeListData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: MyUtility(context).height / 8,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.title,
            style: blackTextStyleInter.copyWith(fontWeight: bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "widget.description",
                  style: blackTextStyleInter.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                child: Text(
                  'Detail',
                  style: blackTextStyleInter.copyWith(
                    decoration: TextDecoration.underline,
                    fontSize: 10,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
