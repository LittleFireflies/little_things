import 'package:flutter/material.dart';
import 'package:little_things_list/src/data/agenda.dart';
import 'package:little_things_list/src/item.dart';

class MyAgendaList extends StatelessWidget {
  final Agenda agenda;

  const MyAgendaList(this.agenda);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My agenda',
              style: TextStyle(fontSize: 24),
            ),
            for (final item in agenda.items) AgendaListItem(item),
            ElevatedButton(
              onPressed: () {},
              child: Text('Finish'),
            )
          ],
        ),
      ),
    );
  }
}
