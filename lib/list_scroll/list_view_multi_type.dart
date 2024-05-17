import 'package:flutter/material.dart';

class ListViewMultiTypeScreen extends StatefulWidget {
  const ListViewMultiTypeScreen({super.key});

  @override
  State<ListViewMultiTypeScreen> createState() =>
      _ListViewMultiTypeScreenState();
}

class _ListViewMultiTypeScreenState extends State<ListViewMultiTypeScreen> {
  final List<ListItem> items = List<ListItem>.generate(30, (index) {
    return index % 3 == 0
        ? HeadingItem("Heading $index")
        : MessageItem("Title $index", "Message $index");
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Multi Type"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubtitle(context),
            );
          }),
    );
  }
}

abstract class ListItem {
  Widget buildTitle(BuildContext context);

  Widget buildSubtitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildSubtitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  @override
  Widget buildTitle(BuildContext context) {
    return const SizedBox.shrink();
  }
}

class MessageItem implements ListItem {
  final String title;
  final String message;

  MessageItem(this.title, this.message);

  @override
  Widget buildSubtitle(BuildContext context) {
    return Text(title);
  }

  @override
  Widget buildTitle(BuildContext context) {
    return Text(message);
  }
}
