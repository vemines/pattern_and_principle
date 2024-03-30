import '../../resources/behavioral/command/command_code.dart';
import '../../resources/behavioral/command/command_text.dart';
import '../../shared/shared.dart';
import 'package:flutter/material.dart';

class CommandPage extends StatelessWidget {
  const CommandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Command"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.normal),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TextWidget(
                'Command Pattern',
                isTitle: true,
              ),
              CodeBlockWidget(
                title: 'Command Code',
                code: commandCode,
              ),
              MyExpansionTile(
                title: 'When To Use',
                children: [
                  ListItemBoldWidget(useCases),
                ],
              ),
              MyExpansionTile(
                title: 'Definition',
                children: [
                  ListItemWidget(definition),
                ],
              ),
              MyExpansionTile(
                title: 'Characteristics',
                children: [
                  ListItemBoldWidget(characteristics),
                ],
              ),
              MyExpansionTile(
                title: 'Benefits',
                children: [
                  ListItemBoldWidget(benefits),
                ],
              ),
              MyExpansionTile(
                title: 'Drawbacks',
                children: [
                  ListItemBoldWidget(drawbacks),
                ],
              ),
            ].separateCenter(),
          ),
        ),
      ),
    );
  }
}
