import 'package:flutter/material.dart';

void main() {
  runApp(const TasksApp());
}

class TasksApp extends StatelessWidget {
  const TasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Tasks App'),
          backgroundColor: Theme.of(  context).colorScheme.primary
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 4,
                color: Theme.of(context).colorScheme.surfaceContainerHigh,
                child: ListTile(
                  title: const Text('Estudar Flutter'),
                  trailing: IconButton(
                    icon: const Icon(Icons.check_circle_outline),
                    onPressed: () {},
                  ),
                ),
              ),
              Card(
                elevation: 4,
                color: Theme.of(context).colorScheme.surfaceContainerHigh,
                child: ListTile(
                  title: const Text('Comprar pão'),
                  trailing: IconButton(
                    icon: const Icon(Icons.check_circle_outline),
                    onPressed: () {},
                  ),
                ),
              ),
              Card(
                elevation: 4,
                color: Theme.of(context).colorScheme.surfaceContainerHigh,
                child: ListTile(
                  title: const Text('Testanto um texto maior para ver o que acontece aqui'),
                  trailing: IconButton(
                    icon: const Icon(Icons.check_circle_outline),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Builder(
          builder: (scaffoldContext) {
            return FloatingActionButton(
              onPressed: () {
                ScaffoldMessenger.of(scaffoldContext).showSnackBar(
                  const SnackBar(
                    content: Text('Funcionalidade ainda não implementada'),
                  ),
                );
              },
              child: const Icon(Icons.add),
            );
          },
        ),
      )
    );
  }
}
