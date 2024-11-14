import 'package:flutter/material.dart';

class ReceiptPage extends StatelessWidget {
  const ReceiptPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Чек по операции',
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.cloud_download, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
             BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: ListView(
            children: [
              _buildTextField('Дата и время'),
              _buildTextField('Квитанция'),
              _buildTextField('Откуда'),
              _buildTextField('Поставщик услуг'),
              _buildTextField('Номер счета'),
              _buildTextField('Сумма'),
              _buildTextField('Комиссия'),
              _buildTextField('Сумма с учетом комиссии'),
              const SizedBox(height: 16),
              _buildImage(),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Поделиться',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Вернуться',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15),
      child: Image.asset(
        'assets/done.jpg',
        fit: BoxFit.contain,
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ReceiptPage(),
  ));
}
