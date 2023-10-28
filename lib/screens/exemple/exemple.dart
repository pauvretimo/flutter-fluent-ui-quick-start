import 'package:exemple/widgets/page.dart';
import 'package:fluent_ui/fluent_ui.dart';

class Exemple extends StatefulWidget {
  const Exemple({super.key});

  @override
  State<Exemple> createState() => _ExempleState();
}

class _ExempleState extends State<Exemple> with PageMixin {
  bool disabled = false;
  double firstValue = 23.0;
  double verticalValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: const Text('Exemple'),
        commandBar: ToggleSwitch(
          checked: disabled,
          onChanged: (v) => setState(() => disabled = v),
          content: const Text('Disabled'),
        ),
      ),
      children: const [
        Text(
          'Exemple'
        ),
        Placeholder()
      ],
    );
  }
}