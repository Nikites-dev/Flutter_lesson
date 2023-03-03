import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'deal.dart';
import 'package:infinite_listview/infinite_listview.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: InfiniteListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.width * 0.35,
                    child: Card(
                      color: Colors.amberAccent,
                      child: ListTile(
                        title: const Text('title'),
                        subtitle: Text('subtitle $index'),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: InfiniteListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7 * 0.25,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Card(
                      child: ListTile(
                          title: Text("Text"),
                          subtitle: Text("Subtitle $index")),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
