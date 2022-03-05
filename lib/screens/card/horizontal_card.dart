import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class BuildCards extends StatelessWidget {
  List<int> data = [1, 2, 3, 4, 5];

  Widget buildCard(BuildContext context, int index) {
    if (index == data.length) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Container(
        width: 150,
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              width: 150,
              height: 200,
              child: Center(
                  child: Text(
                '${data[index]}',
                style: TextStyle(fontSize: 40),
              )),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: ScrollSnapList(
            itemBuilder: buildCard,
            itemSize: 50,
            dynamicItemSize: true,
            onItemFocus: null,
            onReachEnd: () {
              print('Done!');
            },
            itemCount: data.length,
          ))
        ],
      ),
    );
  }
}
