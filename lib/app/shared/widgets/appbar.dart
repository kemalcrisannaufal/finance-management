import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  final VoidCallback onNotificationPressed;

  const CustomAppBar({
    Key? key,
    required this.userName,
    required this.onNotificationPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 130,
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 120,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/foto.jpg',
                      )),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        userName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: onNotificationPressed,
                icon: const Icon(Icons.notifications),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
