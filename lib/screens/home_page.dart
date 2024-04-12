import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            'Home',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
        ),
        const FilterSelector(),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 250,
              height: 150,
              color: const Color.fromARGB(255, 45, 45, 45),
              child: TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.bottomRight,
                  minimumSize: Size(double.infinity, 150),
                ),
                child: const Text(
                  'Skills',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              width: 250,
              height: 150,
              color: const Color.fromARGB(255, 45, 45, 45),
              child: TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.bottomRight,
                  minimumSize: const Size(double.infinity, 150),
                ),
                child: const Text(
                  'Photos',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              width: 250,
              height: 150,
              color: const Color.fromARGB(255, 45, 45, 45),
              child: TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.bottomRight,
                  minimumSize: Size(double.infinity, 150),
                ),
                child: const Text(
                  'Videos',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class FilterSelector extends StatefulWidget {
  const FilterSelector({super.key});

  @override
  State<FilterSelector> createState() => _FilterSelectorState();
}

class _FilterSelectorState extends State<FilterSelector> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  List<String> _images = [
    'images/photos/No_00009.jpg',
    'images/photos/No_00005.jpg',
    'images/photos/No_00006.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _images.length,
            itemBuilder: (context, int index) {
              return Image.asset(
                _images[index],
                fit: BoxFit.cover,
              );
            },
          ),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _images.length; i++) {
      indicators.add(Container(
        width: 30,
        height: 30,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentPage == i ? Colors.white : Colors.black,
        ),
      ));
    }
    return indicators;
  }
}
