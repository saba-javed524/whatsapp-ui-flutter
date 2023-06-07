import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text('Settings'),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text('Linked Devices'),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('New Group'),
                ),
              ],
            ),
            const SizedBox(width: 10)
          ],
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Text('Camera'),
            ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/15940448/pexels-photo-15940448.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('Saba Javed'),
                  subtitle: Text('How was your flight?'),
                  trailing: Text('2:00 PM'),
                );
              },
            ),
            ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.teal, width: 3),
                            shape: BoxShape.circle),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/15760046/pexels-photo-15760046.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: const Text('My Status'),
                      subtitle: const Text('5 Minutes ago'));
                } else if (index == 1) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Text('Recent Updates'),
                      ),
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.teal, width: 3),
                                shape: BoxShape.circle),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/15760046/pexels-photo-15760046.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            ),
                          ),
                          title: const Text('Saba Javed'),
                          subtitle: const Text('Few Minutes ago')),
                    ],
                  );
                } else {
                  return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.teal, width: 3),
                            shape: BoxShape.circle),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/15760046/pexels-photo-15760046.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: const Text('Saba Javed'),
                      subtitle: const Text('Few Minutes ago'));
                }
              },
            ),
            ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/15760046/pexels-photo-15760046.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: const Text('Saba Javed'),
                  subtitle: index % 2 == 0
                      ? const Text('Call Duration 24 minutes 2 seconds')
                      : const Text('You missed a video call.'),
                  trailing: index % 2 == 0
                      ? const Icon(
                          Icons.call,
                          color: Colors.teal,
                        )
                      : const Icon(
                          Icons.video_call,
                          color: Colors.teal,
                        ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
