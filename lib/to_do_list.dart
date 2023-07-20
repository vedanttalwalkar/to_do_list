// import 'package:badges/badges.dart' as badges;
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/add_task.dart';
import 'package:to_do_list/task_info.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  String taskName = '';

  @override
  void initState() {
    super.initState();
    textEditingControllerForUpdating.addListener(() => setState(() {}));
    textEditingController.addListener(() => setState(() {}));
  }

  bool edit = false;
  OutlineInputBorder textFieldKa = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide(
      color: Colors.white,
      width: 3,
    ),
  );
  TextEditingController textEditingControllerForUpdating =
      TextEditingController();
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '/to_do_list',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 247, 246, 239),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 14),
                        Text(
                          'Welcome back,',
                          style: TextStyle(
                              fontFamily: 'a',
                              color: Color.fromARGB(255, 128, 127, 127),
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Krishna Yadav',
                          style: TextStyle(
                              fontFamily: 'a',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                    Stack(
                      fit: StackFit.passthrough,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      alignment: AlignmentDirectional.bottomStart,
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'images/Krsna.jpg',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          height: 22,
                          width: 22,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 2.4,
                                    color: const Color.fromARGB(
                                        255, 247, 246, 239))),
                            child: Container(
                              height: 16,
                              width: 16,
                              decoration: const BoxDecoration(
                                  color: Colors.black, shape: BoxShape.circle),
                              child: const Center(
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                      fontFamily: 'a',
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                  width: 20,
                ),
                TextField(
                  onSubmitted: (value) => setState(() {
                    taskName = value;
                  }),
                  onChanged: (value) {
                    setState(() {
                      taskName = value;
                    });
                  },
                  controller: textEditingController,
                  enabled: true,
                  style: const TextStyle(color: Colors.black),
                  showCursor: true,
                  decoration: InputDecoration(
                    hoverColor: Colors.white,
                    enabledBorder: textFieldKa,
                    focusedBorder: textFieldKa,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    hintText: 'Try to find....',
                    hintStyle: const TextStyle(
                      fontFamily: 'a',
                    ),
                    contentPadding: const EdgeInsets.all(8),
                    suffixIcon: textEditingController.text.isEmpty
                        ? const SizedBox(width: 0)
                        : IconButton(
                            onPressed: () => textEditingController.clear(),
                            icon: const Icon(
                              Icons.close,
                              color: Colors.black54,
                            ),
                          ),
                    filled: true,
                    fillColor: Colors.white,
                    border: textFieldKa,
                  ),
                ),
                const SizedBox(
                  height: 54,
                ),
                const Text(
                  'Task-based\nexplanation process',
                  style: TextStyle(
                      fontFamily: 'a',
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 32,
                  width: 40,
                ),
                SizedBox(
                  height: 140,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 130,
                        width: 130,
                        child: DottedBorder(
                          color: const Color.fromARGB(255, 168, 167, 167),
                          dashPattern: const [6, 4],
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(16),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    backgroundColor: const Color.fromARGB(
                                        255, 210, 243, 98)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => const AddTask()),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Add task',
                                  style: TextStyle(
                                      fontFamily: 'a',
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              const SizedBox(
                                height: 14,
                                width: 20,
                              ),
                              const Center(
                                child: Text(
                                  'Creatives for branging',
                                  style: TextStyle(
                                      fontFamily: 'b',
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 132,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: ((context, index) {
                                return Container(
                                  padding: const EdgeInsets.all(16),
                                  width: 180,
                                  height: 132,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18)),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton(
                                              style: TextButton.styleFrom(
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        255, 247, 247, 239),
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                'Review',
                                                style: TextStyle(
                                                    fontFamily: 'a',
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              )),
                                          IconButton(
                                            icon: const Icon(
                                              Icons.edit,
                                              color: Color.fromARGB(
                                                  255, 159, 159, 153),
                                            ),
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              247,
                                                              246,
                                                              239),
                                                      title: const Text(
                                                        'Change completion time or Name ',
                                                        style: TextStyle(
                                                            fontFamily: 'a',
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w900),
                                                      ),
                                                      content: Column(
                                                        children: [
                                                          const Text(
                                                            'Name',
                                                            style: TextStyle(
                                                                fontFamily: 'a',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900),
                                                          ),
                                                          TextFormField(
                                                            onChanged: (value) {
                                                              setState(() {
                                                                TaskInfo
                                                                    .displayedTasks[
                                                                        index]
                                                                    .taskName = value;
                                                              });
                                                            },
                                                            controller:
                                                                textEditingControllerForUpdating,
                                                            decoration: InputDecoration(
                                                                filled: true,
                                                                fillColor:
                                                                    Colors
                                                                        .white,
                                                                border:
                                                                    textFieldKa,
                                                                focusedBorder:
                                                                    textFieldKa,
                                                                enabledBorder:
                                                                    textFieldKa),
                                                          )
                                                        ],
                                                      ),
                                                    );
                                                  });
                                            },
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 14,
                                        width: 20,
                                      ),
                                      Text(
                                        TaskInfo.displayedTasks[index].taskName,
                                        style: const TextStyle(
                                            fontFamily: 'b',
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w100),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                              separatorBuilder: ((context, index) {
                                return const SizedBox(
                                  width: 20,
                                );
                              }),
                              itemCount: TaskInfo.displayedTasks.length),
                        ),
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Flows List',
                          style: TextStyle(
                              fontFamily: 'a',
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_drop_down)),
                        IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: const Icon(Icons.refresh),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'See all',
                        style: TextStyle(
                            fontFamily: 'a',
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                Expanded(
                  flex: 100,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return AnimatedContainer(
                          curve: Curves.bounceIn,
                          duration: const Duration(seconds: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    TaskInfo.recommendedTasks[index].taskName,
                                    style: const TextStyle(
                                        fontFamily: 'a',
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text(
                                    'lorem ipsum',
                                    style: TextStyle(
                                        fontFamily: 'a',
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                    shape: const CircleBorder(),
                                    backgroundColor: const Color.fromARGB(
                                        255, 210, 243, 98)),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: ((context, index) => const Divider(
                            color: Colors.grey,
                          )),
                      itemCount: TaskInfo.recommendedTasks.length),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: Image.asset('images/home.png',
                    height: 24, width: 24, color: Colors.black)),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                    height: 24,
                    width: 24,
                    color: const Color.fromARGB(255, 120, 118, 122),
                    'images/piechart.png')),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                  height: 24,
                  width: 24,
                  color: const Color.fromARGB(255, 120, 118, 122),
                  'images/settings.png'),
            ),
          ],
        ),
      ),
    );
  }
}
