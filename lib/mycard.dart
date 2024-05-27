import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    required this.description,
    this.onTapEyeButton,
  });
  final String title;
  final String subTitle;
  final String imageUrl;
  final String description;
  final void Function()? onTapEyeButton;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          margin:  EdgeInsets.zero,
          elevation: 10.0,
          color: Colors.blueGrey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 350,
              // height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Wrap(

                    children: [
                      FractionallySizedBox(
                        widthFactor: 0.35,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            imageUrl,
                            height: 120,
                            width: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                     const FractionallySizedBox(
                        widthFactor: 0.05,
                        child:  SizedBox(
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              subTitle,
                              style: const TextStyle(
                                fontSize: 19.0,
                                color: Colors.black38,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    description,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 10.0,
          bottom: 10.0,
          child: FloatingActionButton.small(
            onPressed: () {
              if (onTapEyeButton != null) {
                onTapEyeButton!();
                return;
              }
              showDialog(
                context: context,
                builder: (ctx) {
                  return AlertDialog(
                    scrollable: true,
                    content : Text(
                      description
                    ),
                    title: Text("Description View"),
                    actions: [
                      OutlinedButton(onPressed: (){
                        Navigator.pop(ctx);
                      }, 
                      child: Text("Close"),)
                    ],
                  );
                },
                );

            },
            backgroundColor: Colors.white.withOpacity(0.4),
            child: const Icon(Icons.remove_red_eye),
          ),
        ),
      ],
    );
  }
}
