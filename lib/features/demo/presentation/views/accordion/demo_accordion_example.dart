import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/ma_accordion.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';

class DemoAccordionExample extends StatefulWidget {
  const DemoAccordionExample({super.key});

  @override
  State<DemoAccordionExample> createState() => _DemoAccordionExampleState();
}

class _DemoAccordionExampleState extends State<DemoAccordionExample> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAAppBar(
        maAppBarType: MAAppBarType.blue,
        title: Text('Accordion Example'),
      ),
      body: MAAccordion(
        title: 'Title',
        subtitle: 'Subtitle (optional)',
        tiles: [
          MAAccordionTile(
            title: 'Label',
            children: [
              Text(
                'Text and UI elements begin 8x below the bottom of the accordion row.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Text and UI elements end 16 px above the top of the next accordion row.',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
          MAAccordionTile(
            title: 'Label',
            children: [
              Text(
                'Text and UI elements begin 8x below the bottom of the accordion row.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Text and UI elements end 16 px above the top of the next accordion row.',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ],
      ),
    );
  }
}
