import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/count_notifire.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameListProvider = StateNotifierProvider((ref) => CounterNotifier());
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Riverpod Dialog Demo'),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    final TextEditingController controller =
                        TextEditingController();
                    return AlertDialog(
                      title: Text('Add a Name'),
                      content: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          hintText: 'Enter a name',
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel'),
                        ),
                        Consumer(
                          builder: (BuildContext context, WidgetRef ref,
                              Widget? child) {
                            return TextButton(
                              onPressed: () {
                                ref.read(nameListProvider.notifier).addName();

                                Navigator.pop(context);
                              },
                              child: Text('Add'),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Add a Name'),
            ),
          ),
        ),
      ),
    );
  }
}
