import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../entities/user.dart';

class ListManagementScreen extends StatefulWidget {
  const ListManagementScreen({super.key});

  @override
  State<ListManagementScreen> createState() => _ListManagementScreenState();
}

class _ListManagementScreenState extends State<ListManagementScreen> {

  List<User> users = [
    User(id: 1, name: "Nguyen An", age: 22, email: "an@gmail.com"),
    User(id: 2, name: "Tran Binh", age: 25, email: "binh@gmail.com"),
    User(id: 3, name: "Le Chi", age: 21, email: "chi@gmail.com"),
    User(id: 4, name: "Pham Dung", age: 24, email: "dung@gmail.com"),
  ];

  String search = "";
  String sortBy = "Name";
  String order = "ASC";

  List<User> get filteredUsers {
    List<User> list = users
        .where((u) => u.name.toLowerCase().contains(search.toLowerCase()))
        .toList();

    list.sort((a, b) {
      int result;

      if (sortBy == "Name") {
        result = a.name.compareTo(b.name);
      } else if (sortBy == "Age") {
        result = a.age.compareTo(b.age);
      } else {
        result = a.email.compareTo(b.email);
      }

      return order == "ASC" ? result : -result;
    });

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LIST MANAGEMENT SYSTEM"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            /// SEARCH + SORT
            Row(
              children: [

                /// SEARCH
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: "Search",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        search = value;
                      });
                    },
                  ),
                ),

                const SizedBox(width: 10),

                /// SORT BY
                DropdownButton<String>(
                  value: sortBy,
                  items: ["Name", "Age", "Email"]
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      sortBy = value!;
                    });
                  },
                ),

                const SizedBox(width: 10),

                /// ORDER
                DropdownButton<String>(
                  value: order,
                  items: ["ASC", "DESC"]
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      order = value!;
                    });
                  },
                ),

              ],
            ),

            const SizedBox(height: 20),

            /// TABLE
            Expanded(
              child: SingleChildScrollView(
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text("ID")),
                    DataColumn(label: Text("Name")),
                    DataColumn(label: Text("Age")),
                    DataColumn(label: Text("Email")),
                  ],
                  rows: filteredUsers.map((u) {
                    return DataRow(cells: [
                      DataCell(Text(u.id.toString())),
                      DataCell(Text(u.name)),
                      DataCell(Text(u.age.toString())),
                      DataCell(Text(u.email)),
                    ]);
                  }).toList(),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}