import 'package:flutter/material.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({super.key});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 30),
          width: double.infinity,
          height: 100,
          color: const Color.fromARGB(255, 46, 46, 46),
          child: const Text(
            'Videos',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 7,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 30),
                  width: 630,
                  height: 400,
                  color: Colors.black,
                  child: const Text(
                    'Video Player',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 630,
                  height: 60,
                  child: ListTile(
                    title: const Text(
                      '0:15 / 1:00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_mute,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    tileColor: Colors.black,
                    leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10),
                  height: 50,
                  width: 630,
                  color: const Color.fromARGB(255, 200, 200, 200),
                  child: const Text(
                    'Video Title',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  width: 630,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Type a new comment here',
                      hintStyle: TextStyle(fontSize: 16),
                      suffixIcon: Icon(Icons.search),
                      suffixText: 'Publish',
                    ),
                  ),
                ),
                Container(
                  width: 630,
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  color: const Color.fromARGB(255, 232, 232, 232),
                  child: const Text(
                    '12 Comments',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 232, 232, 232),
                  padding: const EdgeInsets.all(8),
                  width: 630,
                  height: 400,
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, int index) {
                      return const Divider(
                        thickness: 0.7,
                        color: Color.fromARGB(255, 179, 179, 179),
                      );
                    },
                    itemCount: 5,
                    itemBuilder: (context, int index) {
                      return const ListTile(
                        title: Text(
                          'From 192.168 * 21',
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 107, 107, 107),
                          ),
                        ),
                        subtitle: Text(
                          'A very nice video I like it',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  'More videos...',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  width: 230,
                  height: 1000,
                  child: ListView.separated(
                    separatorBuilder: (context, int index) {
                      return const Divider(
                        thickness: 0.7,
                        color: Colors.black,
                      );
                    },
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (context, int index) {
                      return Container(
                        alignment: Alignment.bottomRight,
                        width: double.infinity,
                        height: 150,
                        color: const Color.fromARGB(255, 131, 131, 131),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Video Preview',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 80,
                              height: 25,
                              color: Colors.black,
                              child: const Text(
                                '1:30',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
