import 'package:flutter/material.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
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
            'Skills',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, int index) {
                return const SkillTable();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class SkillTable extends StatefulWidget {
  const SkillTable({
    super.key,
  });

  @override
  State<SkillTable> createState() => _SkillTableState();
}

class _SkillTableState extends State<SkillTable> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 30,
          ),
          child: Container(
            height: 50,
            width: 600,
            color: const Color.fromARGB(255, 142, 138, 138),
            child: const Padding(
              padding: EdgeInsets.only(left: 20, top: 3),
              child: Text(
                'Skill Type Title',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ), //0
        const SkillTypeList(),
      ],
    );
  }
}

class SkillTypeList extends StatelessWidget {
  const SkillTypeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SkillNamesColumn(),
        SkillNamesColumn(),
        SkillNamesColumn(),
      ],
    );
  }
}

class SkillNamesColumn extends StatefulWidget {
  const SkillNamesColumn({
    super.key,
  });

  @override
  State<SkillNamesColumn> createState() => _SkillNamesColumnState();
}

class _SkillNamesColumnState extends State<SkillNamesColumn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 250,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, int index) {
          return ListTile(
            tileColor: const Color.fromARGB(255, 197, 197, 197),
            trailing: const Text(
              '+',
              style: TextStyle(fontSize: 26, color: Colors.black),
            ),
            leading: const Text(
              'Skill Name',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Screen2());
              Navigator.push(context, route);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(55),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Skill name',
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 400,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non volutpat justo. Aliquam ultricies dictum ex, facilisis varius odio hendrerit vitae. Duis sagittis tempor magna sit amet imperdiet. Maecenas sit amet sem condimentum, lobortis diam quis, interdum velit. Mauris molestie venenatis pulvinar. Morbi gravida, massa fringilla vestibulum ornare, urna tellus faucibus arcu, vitae facilisis massa nisi sit amet leo. Sed sit amet tristique nibh, eu iaculis justo',
                      style: TextStyle(
                          fontSize: 30, color: Color.fromARGB(255, 75, 75, 75)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 500,
                    height: 300,
                    color: Color.fromARGB(255, 147, 147, 147),
                    child: const Text(
                      'Image of Skill',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: const Color.fromARGB(255, 143, 143, 143),
                    width: 180,
                    height: 100,
                    child: const Text(
                      'Next',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
