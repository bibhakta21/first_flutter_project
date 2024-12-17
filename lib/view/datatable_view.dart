// screen/datatbale_screen.dart
import 'package:flutter/material.dart';
import '../model/student.dart';

class DataTableView extends StatefulWidget {
  const DataTableView({super.key});

  @override
  _DataTableScreenState createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableView> {
  List<Student> lstStudent = [
    Student(fname: 'Kiran', lname: "Rana", city: "Kathmandu", age: 11),
    Student(fname: 'Achyut', lname: "Giri", city: "Lalitpur", age: 21),
    Student(fname: 'Pratik', lname: "Bista", city: "Bhaktapur", age: 43),
    Student(fname: 'Sudeep', lname: "Shrestha", city: "Kavre", age: 45),
  ];

  void _showAlertDialog(BuildContext context, Student student) {
    AlertDialog alert = AlertDialog(
      title: const Text("Delete ?"),
      content: Text("Are you sure you want to delete ${student.fname} ??"),
      actions: [
        TextButton(
            child: const Text("No"),
            onPressed: () {
              Navigator.pop(context);
            }),
        TextButton(
          child: const Text("Yes"),
          onPressed: () {
            setState(() {
              lstStudent.remove(student);
            });
            Navigator.pop(context);
          },
        ),
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DataTable Example")),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: DataTable(
          headingRowColor: WidgetStateColor.resolveWith(
            (states) => Colors.amber,
          ),
          border: TableBorder.all(color: Colors.black),
          columns: const [
            DataColumn(
              label: Expanded(
                child: Text(
                  'Name',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Center(
                  child: Text(
                    'Roll No',
                  ),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Center(
                  child: Text(
                    'Action',
                  ),
                ),
              ),
            ),
          ],
          rows: lstStudent
              .map(
                (student) => DataRow(
                  cells: [
                    DataCell(
                      Center(
                        child: Text(student.fname),
                      ),
                    ),
                    DataCell(
                      Center(
                        child: Text(student.age.toString()),
                      ),
                    ),
                    DataCell(
                      Center(
                        child: Wrap(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () {
                                _showAlertDialog(context, student);
                              },
                              icon: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
