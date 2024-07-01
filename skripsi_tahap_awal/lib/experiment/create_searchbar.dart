import 'package:flutter/material.dart';

class CreateSearchBar extends StatefulWidget {
  const CreateSearchBar({super.key});

  @override
  _CreateSearchBarState createState() => _CreateSearchBarState();
}

class _CreateSearchBarState extends State<CreateSearchBar> {
  final List<String> _data = ["ikrar", "anto", "rian", "zeus"];
  List<String> _filteredData = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredData = _data;
  }

  void _filterData(String query) {
    List<String> results = [];
    if (query.isEmpty) {
      results = _data;
    } else {
      results = _data
          .where(
              (element) => element.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    setState(() {
      _filteredData = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Bar Demo'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              onChanged: _filterData,
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredData[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
