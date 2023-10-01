import 'package:flutter/material.dart';

import 'List.dart';


class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/img.png')),
        Table(
          border: TableBorder.all(
            width: 2.5,
            color: Color(0xffB7935F),
          ),
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: Text(
                      "رقم السورة",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: Text(
                      "اسم السورة",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: quranDetails.length,
            itemBuilder: (context, index) {
              return InkWell(
                // onTap: () {
                //   Navigator.pushNamed(context, QuranDetailsScreen.routeName,
                //       arguments: QuranModel(
                //         index,
                //         quranDetails[index]['name'],
                //       ));
                // },
                child: Table(
                  border: TableBorder.all(
                    width: 0,
                    color: Color(0xffB7935F),
                  ),
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              quranDetails[index]['id'].toString(),
                              style:  Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              quranDetails[index]['name'],
                              style:  Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
