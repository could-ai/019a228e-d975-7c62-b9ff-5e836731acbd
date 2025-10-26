import 'package:flutter/material.dart';

class RechargeScreen extends StatelessWidget {
  const RechargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text(
          'Recharge',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My balance',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 15,
                  child: Text(
                    'C',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  '70',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Select amount',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Expanded(
              child: RechargeOptionsGrid(),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Recharge',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RechargeOptionsGrid extends StatelessWidget {
  const RechargeOptionsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: const [
        RechargeOption(coins: 70, price: 'Rp 11.900'),
        RechargeOption(coins: 350, price: 'Rp 59.500'),
        RechargeOption(coins: 700, price: 'Rp 119.000'),
        RechargeOption(coins: 1050, price: 'Rp 178.500'),
        RechargeOption(coins: 3500, price: 'Rp 595.000'),
        RechargeOption(coins: 7000, price: 'Rp 1.190.000'),
      ],
    );
  }
}

class RechargeOption extends StatelessWidget {
  final int coins;
  final String price;

  const RechargeOption({
    super.key,
    required this.coins,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[800]!),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 10,
                child: Text(
                  'C',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
              SizedBox(width: 4),
              Text(
                '70',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            price,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
