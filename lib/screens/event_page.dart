import 'package:flutter/material.dart';


class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  
  final events = [
    {
      "titleEvent": "Testopolis",
      "date": "21/01/2023",
      "subject": "C\'est l'event de l\'année"
    },
    {
      "titleEvent": "Testaptitude",
      "date": "23/01/2023",
      "subject": "Salon de l\'arcade"
    },
    {
      "titleEvent": "Testéroïde",
      "date": "26/01/2023",
      "subject": "Salon du tatouage"
    }
  ];



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("test"),
        Flexible(
          flex: 2,
          child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {

              final event = events[index];
              final title = event['titleEvent'];
              final subject = event['subject'];

              return Card(
                child: ListTile(
                  leading: const FlutterLogo(size: 52),
                  title: Text("$title"),
                  subtitle: Text("$subject"),
                  trailing: const Icon(Icons.more_vert),
                ),
              );
            },
          ),
        ),
        Container(
          child: ElevatedButton(onPressed: () {
            setState(() {
              events.add({"titleEvent": "Testéroïde",
                "date": "26/01/2023",
                "subject": "Salon du tatouage"});
            });
          },
              child: const Text('ajout effet')),
        )

      ],
    );
  }
}
