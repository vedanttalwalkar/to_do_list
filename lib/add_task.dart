// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:to_do_list/task_info.dart';

class AddTask extends StatefulWidget {
  const AddTask(this.update, {super.key});
  final ValueChanged<List<Task>> update;
  @override
  State<AddTask> createState() => AddTaskState(update: update);
}

class AddTaskState extends State<AddTask> {
  final ValueChanged<List<Task>> update;
  AddTaskState({required this.update});

  @override
  void initState() {
    super.initState();

    textEditingController.addListener(() => setState(() {}));
    textEditingController1.addListener(() => setState(() {}));
    textEditingController2.addListener(() => setState(() {}));
    textEditingController3.addListener(() => setState(() {}));
    textEditingController4.addListener(() => setState(() {}));
    textEditingController5.addListener(() => setState(() {}));
  }

  OutlineInputBorder textFieldKa = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      color: Colors.white,
      width: 3,
    ),
  );
  String taskName = '';
  int hours = 0;
  int year = 0;
  int month = 0;
  int mins = 0;
  int day = 0;
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();
  TextEditingController textEditingController4 = TextEditingController();
  TextEditingController textEditingController5 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 210, 243, 98)),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Back',
                style: TextStyle(
                    fontFamily: 'a',
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w900))),
        backgroundColor: const Color.fromARGB(255, 247, 246, 239),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Text('Specify Task Name',
                        style: TextStyle(
                            fontFamily: 'a',
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w900)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                        width: 300,
                        child: TextField(
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
                              Icons.add_task,
                              size: 20,
                              color: Colors.black54,
                            ),
                            hintText: 'Task Name....',
                            hintStyle: const TextStyle(
                              fontFamily: 'a',
                            ),
                            contentPadding: const EdgeInsets.all(8),
                            suffixIcon: textEditingController.text.isEmpty
                                ? const SizedBox(width: 0)
                                : IconButton(
                                    onPressed: () =>
                                        textEditingController.clear(),
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
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Text('Please enter task deadline:',
                        style: TextStyle(
                            fontFamily: 'a',
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w900)),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Year',
                        style: TextStyle(
                            fontFamily: 'a',
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w900)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                        width: 70,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          onSubmitted: (value) => setState(() {
                            year = int.parse(value);
                          }),
                          onChanged: (value) {
                            setState(() {
                              year = int.parse(value);
                            });
                          },
                          controller: textEditingController1,
                          enabled: true,
                          style: const TextStyle(color: Colors.black),
                          showCursor: true,
                          decoration: InputDecoration(
                            hoverColor: Colors.white,
                            enabledBorder: textFieldKa,
                            focusedBorder: textFieldKa,
                            hintText: '',
                            hintStyle: const TextStyle(
                              fontFamily: 'a',
                            ),
                            contentPadding: const EdgeInsets.all(8),
                            suffixIcon: textEditingController1.text.isEmpty
                                ? const SizedBox(width: 0)
                                : IconButton(
                                    onPressed: () =>
                                        textEditingController1.clear(),
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
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Month',
                        style: TextStyle(
                            fontFamily: 'a',
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w900)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                        width: 70,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          onSubmitted: (value) => setState(() {
                            month = int.parse(value);
                          }),
                          onChanged: (value) {
                            setState(() {
                              month = int.parse(value);
                            });
                          },
                          controller: textEditingController2,
                          enabled: true,
                          style: const TextStyle(color: Colors.black),
                          showCursor: true,
                          decoration: InputDecoration(
                            hoverColor: Colors.white,
                            enabledBorder: textFieldKa,
                            focusedBorder: textFieldKa,
                            hintText: '',
                            hintStyle: const TextStyle(
                              fontFamily: 'a',
                            ),
                            contentPadding: const EdgeInsets.all(8),
                            suffixIcon: textEditingController2.text.isEmpty
                                ? const SizedBox(width: 0)
                                : IconButton(
                                    onPressed: () =>
                                        textEditingController2.clear(),
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
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Day',
                        style: TextStyle(
                            fontFamily: 'a',
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w900)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                        width: 70,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          onSubmitted: (value) => setState(() {
                            day = int.parse(value);
                          }),
                          onChanged: (value) {
                            setState(() {
                              day = int.parse(value);
                            });
                          },
                          controller: textEditingController3,
                          enabled: true,
                          style: const TextStyle(color: Colors.black),
                          showCursor: true,
                          decoration: InputDecoration(
                            hoverColor: Colors.white,
                            enabledBorder: textFieldKa,
                            focusedBorder: textFieldKa,
                            hintText: '',
                            hintStyle: const TextStyle(
                              fontFamily: 'a',
                            ),
                            contentPadding: const EdgeInsets.all(8),
                            suffixIcon: textEditingController3.text.isEmpty
                                ? const SizedBox(width: 0)
                                : IconButton(
                                    onPressed: () =>
                                        textEditingController3.clear(),
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
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Hours',
                        style: TextStyle(
                            fontFamily: 'a',
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w900)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                        width: 70,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          onSubmitted: (value) => setState(() {
                            hours = int.parse(value);
                          }),
                          onChanged: (value) {
                            setState(() {
                              hours = int.parse(value);
                            });
                          },
                          controller: textEditingController4,
                          enabled: true,
                          style: const TextStyle(color: Colors.black),
                          showCursor: true,
                          decoration: InputDecoration(
                            hoverColor: Colors.white,
                            enabledBorder: textFieldKa,
                            focusedBorder: textFieldKa,
                            hintText: '',
                            hintStyle: const TextStyle(
                              fontFamily: 'a',
                            ),
                            contentPadding: const EdgeInsets.all(8),
                            suffixIcon: textEditingController4.text.isEmpty
                                ? const SizedBox(width: 0)
                                : IconButton(
                                    onPressed: () =>
                                        textEditingController4.clear(),
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
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Minutes',
                        style: TextStyle(
                            fontFamily: 'a',
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w900)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                        width: 70,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          onSubmitted: (value) => setState(() {
                            mins = int.parse(value);
                          }),
                          onChanged: (value) {
                            setState(() {
                              mins = int.parse(value);
                            });
                          },
                          controller: textEditingController5,
                          enabled: true,
                          style: const TextStyle(color: Colors.black),
                          showCursor: true,
                          decoration: InputDecoration(
                            hoverColor: Colors.white,
                            enabledBorder: textFieldKa,
                            focusedBorder: textFieldKa,
                            hintText: '',
                            hintStyle: const TextStyle(
                              fontFamily: 'a',
                            ),
                            contentPadding: const EdgeInsets.all(8),
                            suffixIcon: textEditingController5.text.isEmpty
                                ? const SizedBox(width: 0)
                                : IconButton(
                                    onPressed: () =>
                                        textEditingController5.clear(),
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
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 210, 243, 98)),
                onPressed: () {
                  if (year > 2023 &&
                      month <= 12 &&
                      month > 0 &&
                      day > 0 &&
                      day <= 31 &&
                      hours < 24 &&
                      hours >= 0 &&
                      mins >= 0 &&
                      mins < 60) {
                    TaskInfo(Task(
                        taskName, DateTime(year, month, day, hours, mins)));
                    update(TaskInfo.displayedTasks);
                    Navigator.pop(context);
                    TaskInfo.changed = true;
                  }
                },
                child: const Text(
                  'Add task',
                  style: TextStyle(
                      letterSpacing: 0.8,
                      fontFamily: 'a',
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
