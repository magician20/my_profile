import 'package:flutter/material.dart';

class BodyListWidget extends StatelessWidget {
  const BodyListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final projectsList = [
    {
      'title': 'Building a Cat',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Flutter 2.0 Course',
      'subtitle': 'The best of the best!',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Connekto',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Been There',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/3/400/300'
    },
    {
      'title': 'Bengo',
      'subtitle': 'Flutter email app',
      'image': 'https://picsum.photos/id/1025/400/300'
    }
  ];
    return ListView.builder(
      itemCount: projectsList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Card(
              elevation: 3,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.work),
                    title: Text(projectsList[index]['title']!),
                    subtitle: Text(projectsList[index]['subtitle']!),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Image.network(projectsList[index]['image']!),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
