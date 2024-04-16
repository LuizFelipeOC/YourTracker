import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData? leading;
  final Function()? fnLeading;
  final String? title;

  const CustomAppBar({
    super.key,
    this.leading,
    this.fnLeading,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: fnLeading,
            child: Icon(leading),
          ),
          if (title != null) ...[
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                title!,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            )
          ]
        ],
      ),
    );
  }
}
