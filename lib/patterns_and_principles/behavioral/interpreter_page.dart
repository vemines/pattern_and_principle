import '../../resources/behavioral/interpreter/interpreter_code.dart';
import '../../resources/behavioral/interpreter/interpreter_text.dart';
import '../../shared/shared.dart';
import 'package:flutter/material.dart';

class InterpreterPage extends StatelessWidget {
  const InterpreterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interpreter"),
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
                'Interpreter Pattern',
                isTitle: true,
              ),
              CodeBlockWidget(
                title: 'Interpreter Code',
                code: interpreterCode,
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
