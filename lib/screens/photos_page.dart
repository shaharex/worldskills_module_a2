import 'package:flutter/material.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({super.key});

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
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
            'Photos',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 650,
          width: double.infinity,
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 3,
            primary: false,
            padding: const EdgeInsets.all(10),
            children: const [
              PhotoContainer(),
              PhotoContainer(),
              PhotoContainer(),
              PhotoContainer(),
              PhotoContainer(),
              PhotoContainer(),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 60,
                child: GridView.count(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 150, 150, 150),
                      child: const Text(
                        '1',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        '2',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        '3',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        '···',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        '10',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PhotoContainer extends StatelessWidget {
  const PhotoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((BuildContext context) => FullScreenPhoto())));
      },
      child: Container(
        alignment: Alignment.bottomRight,
        width: 280,
        height: 280,
        color: const Color.fromARGB(255, 203, 203, 203),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Photo',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              alignment: Alignment.bottomRight,
              color: Colors.black,
              height: 50,
              width: 100,
              child: const Text(
                'Popularity: 230 \nViews: 3500',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FullScreenPhoto extends StatelessWidget {
  const FullScreenPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 173, 173, 173),
          alignment: Alignment.center,
          child: const Text(
            'FullScreen Photo',
            style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
        ),
      ),
    );
  }
}
