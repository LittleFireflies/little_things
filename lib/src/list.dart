import 'package:flutter/material.dart';
import 'package:little_things_list/src/congrats.dart';
import 'package:little_things_list/src/data/agenda.dart';
import 'package:little_things_list/src/item.dart';

class MyAgendaList extends StatelessWidget {
  final Agenda agenda;

  const MyAgendaList(this.agenda);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My agenda', style: TextStyle(fontSize: 28)),
                  Text('These are the topics I’d like to discuss today.'),
                  SizedBox(height: 10),
                  for (final item in agenda.items) AgendaListItem(item),
                ],
              ),
            ),
          ),
        ),
        CongratsCard(),
      ],
    );
  }
}
