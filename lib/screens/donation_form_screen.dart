import 'package:flutter/material.dart';

class DonationFormScreen extends StatefulWidget {
  const DonationFormScreen({super.key});

  @override
  _DonationFormScreenState createState() => _DonationFormScreenState();
}

class _DonationFormScreenState extends State<DonationFormScreen> {
  final _medicineNameController = TextEditingController();
  final _quantityController = TextEditingController();
  final _expiryDateController = TextEditingController();

  Future<void> _submitDonation() async {
    final medicineName = _medicineNameController.text.trim();
    final quantity = _quantityController.text.trim();
    final expiryDate = _expiryDateController.text.trim();

    if (medicineName.isEmpty || quantity.isEmpty || expiryDate.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields')),
      );
      return;
    }

    // Simulate donation submission (e.g., send data to Firebase or backend)
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Donation submitted successfully!')),
    );

    // Clear form after submission
    _medicineNameController.clear();
    _quantityController.clear();
    _expiryDateController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donate Medicine'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _medicineNameController,
              decoration: const InputDecoration(labelText: 'Medicine Name'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _quantityController,
              decoration: const InputDecoration(labelText: 'Quantity'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _expiryDateController,
              decoration: const InputDecoration(labelText: 'Expiry Date (YYYY-MM-DD)'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _submitDonation,
              child: const Text('Submit Donation'),
            ),
          ],
        ),
      ),
    );
  }
}
