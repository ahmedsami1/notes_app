import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        padding: EdgeInsets.only(top: 24.0, bottom: 24.0, left: 16.0,),
        decoration: BoxDecoration(
          color:Colors.amber[300],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  'Build Your App With Flutter Technology',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.black.withAlpha(126),
                    fontSize: 12.0,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_rounded,
                  color: Colors.black,
                  size: 28.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0, top: 16.0),
              child: Text(
                  'May 20, 2023',
                  style: TextStyle(
                    color: Colors.black.withAlpha(126),
                    fontSize: 12.0,
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}