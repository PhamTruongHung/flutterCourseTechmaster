import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const DatePickerApp());

class DatePickerApp extends StatelessWidget {
  const DatePickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('vi'), Locale('VI')],
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: DatePickerExample(),
    );
  }
}

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  DateTime date = DateTime.now();
  DateTime confirmDate = DateTime(
      DateTime.now().year - 18, DateTime.now().month, DateTime.now().day);
  DateTime initialDateTime = DateTime(
      DateTime.now().year - 18, DateTime.now().month, DateTime.now().day);
  @override
  void initState() {
    super.initState();
  }

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 400,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoDatePicker Sample'),
      ),
      child: DefaultTextStyle(
        style: TextStyle(
          color: CupertinoColors.label.resolveFrom(context),
          fontSize: 22.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _DatePickerItem(
                children: <Widget>[
                  CupertinoButton(
                    onPressed: () => _showDialog(
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: SizedBox(
                              child: CupertinoDatePicker(
                                initialDateTime: initialDateTime,
                                minimumDate: DateTime(
                                    date.year - 60, date.month, date.day),
                                maximumDate: DateTime.now(),
                                mode: CupertinoDatePickerMode.date,
                                use24hFormat: true,
                                onDateTimeChanged: (DateTime newDate) {
                                  confirmDate = newDate;
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() => date = confirmDate);
                                  Navigator.pop(context);
                                },
                                child: const Text("Xong"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 100,
                      width: 300,
                      child: Column(
                        children: [
                          CupertinoTextField(
                            enabled: false,
                            readOnly: true,
                            controller: TextEditingController(
                                text:
                                    '${confirmDate.day}-${confirmDate.month}-${confirmDate.year}'),
                            placeholder: 'Input your DOB....',
                            prefix: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Date of birth: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DatePickerItem extends StatelessWidget {
  const _DatePickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: CupertinoColors.white,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: CupertinoColors.white,
            width: 0.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}
