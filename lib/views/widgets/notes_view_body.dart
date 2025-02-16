import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 20.0,),
          Container(
            padding: EdgeInsets.all(18.0),
            width: double.infinity,
            height: 180.0,
            decoration: BoxDecoration(
              color: Colors.yellowAccent,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Flutter Tips',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Build Your App With Flutter Technology',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 13.0,
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Mar 1 2025',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}