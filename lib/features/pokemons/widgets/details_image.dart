import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailImage extends StatelessWidget {
  final String url;
  const DetailImage({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 200.0,
        width: 200.0,
        child: SvgPicture.network(
          url,
          placeholderBuilder: (BuildContext context) => const Padding(
            padding: EdgeInsets.all(30.0),
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
