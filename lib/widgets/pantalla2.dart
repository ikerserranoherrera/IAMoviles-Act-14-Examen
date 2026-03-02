import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        title: const Text("BACKPACKER"),
        backgroundColor: Colors.deepOrangeAccent,
        actions: const [Icon(Icons.person_outline), Icon(Icons.settings)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Take your backpack\nand discover the world.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 25),
            TextField(
              decoration: InputDecoration(
                hintText: "where you want to go?",
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                filled: true,
                fillColor: const Color(0xFF2C2C2C),
                suffixIcon: const Icon(Icons.search, color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "your favorites",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _CategoryIcon(Icons.confirmation_num_outlined, "ticket"),
                _CategoryIcon(Icons.location_city, "hotel"),
                _CategoryIcon(Icons.restaurant_menu, "food"),
                _CategoryIcon(Icons.train_outlined, "transport"),
                _CategoryIcon(Icons.grid_view, "others"),
              ],
            ),
            const SizedBox(height: 35),
            const Text(
              "our recommendation",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                _RecCard(
                  'explore city',
                  'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/torre.PNG',
                ),
                const SizedBox(width: 15),
                _RecCard(
                  'explore beach',
                  'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/sol.PNG',
                ),
              ],
            ),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
                child: const Text(
                  "Ver Tickets >",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const _CategoryIcon(this.icon, this.text);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 24),
        ),
        const SizedBox(height: 8),
        Text(text, style: const TextStyle(color: Colors.white70, fontSize: 10)),
      ],
    );
  }
}

class _RecCard extends StatelessWidget {
  final String title;
  final String url;
  const _RecCard(this.title, this.url);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white24),
            borderRadius: BorderRadius.circular(15),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(url, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(color: Colors.white70, fontSize: 11),
        ),
      ],
    );
  }
}
