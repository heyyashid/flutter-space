import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preference extends StatefulWidget {
  Preference({super.key});
  
  @override
  State<Preference> createState() => _PreferenceState();
}

class _PreferenceState extends State<Preference> {
  String dropdownValue = "select colour";
  String? _savedColor;

  @override
  void initState() {
    super.initState();
    _loadSavedColor();
  }

  // Load the saved color from SharedPreferences
  Future<void> _loadSavedColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedColor = prefs.getString('color') ?? "select colour";
      dropdownValue = _savedColor!;  // Ensure the dropdown reflects the saved color
    });
  }

  // Save the selected color to SharedPreferences
  Future<void> _saveColor() async {
    if (dropdownValue != "select colour") {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('color', dropdownValue); // Save selected color
      setState(() {
        _savedColor = dropdownValue;  // Update the saved color
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Color Saved: $dropdownValue'))
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a valid color'))
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 97, 104, 90),
        title: const Center(
          child: Text(
            "Shared Preference",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: const [
                DropdownMenuItem<String>(
                  value: "select colour",
                  child: Text("Select Colour"),
                ),
                DropdownMenuItem<String>(
                  value: "Red",
                  child: Text("Red"),
                ),
                DropdownMenuItem<String>(
                  value: "Green",
                  child: Text("Green"),
                ),
                DropdownMenuItem<String>(
                  value: "Blue",
                  child: Text("Blue"),
                ),
                DropdownMenuItem<String>(
                  value: "Yellow",
                  child: Text("Yellow"),
                ),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveColor,
              child: const Text('Save Colour'),
            ),
            const SizedBox(height: 20),
            if (_savedColor != "select colour")
              Text('Saved Colour: $_savedColor', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
