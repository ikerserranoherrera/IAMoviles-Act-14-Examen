import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        title: const Text("BACKPACKER"),
        backgroundColor: Colors.teal,
        actions: const [Icon(Icons.map), Icon(Icons.notifications_none)],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _CityHeader("JKTA, ID", "Jakarta, 21 March 2022"),
                Icon(Icons.more_horiz, color: Colors.white54),
                _CityHeader("TYOA, JP", "Tokyo, 22 March 2022"),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => const TicketWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CityHeader extends StatelessWidget {
  final String code, date;
  const _CityHeader(this.code, this.date);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          code,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(date, style: const TextStyle(color: Colors.white54, fontSize: 10)),
      ],
    );
  }
}

class TicketWidget extends StatelessWidget {
  const TicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "JKTA ----------- TYOA",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Spacer(),
                  Text(
                    "Name of Airlines",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Lounge class 250kg / air conditioner",
                    style: TextStyle(color: Colors.grey, fontSize: 8),
                  ),
                ],
              ),
            ),
          ),
          const VerticalDivider(width: 1, indent: 10, endIndent: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "800 USD",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "worldwide",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
