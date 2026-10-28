import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 221, 223), 
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, size: 45, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  const SizedBox(width: 15),
                  const Expanded(
                    child: Text(
                      'KAAAA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white54),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(color: Colors.white12, thickness: 1),

            const ProfileMenuItem(
              icon: Icons.diamond_outlined,
              title: 'Langganan',
              subtitle: 'Jelajahi keuntungan premium',
              iconColor: Colors.green, 
            ),
            const ProfileMenuItem(
              icon: Icons.devices,
              title: 'Perangkat tertaut',
              subtitle: 'Gunakan WhatsApp di perangkat lain',
            ),
            const ProfileMenuItem(
              icon: Icons.vpn_key_outlined,
              title: 'Akun',
              subtitle: 'Notifikasi keamanan, ganti nomor',
            ),
            const ProfileMenuItem(
              icon: Icons.lock_outline,
              title: 'Privasi',
              subtitle: 'Akun diblokir, pesan sementara',
            ),
            const ProfileMenuItem(
              icon: Icons.person_add_alt_1_outlined,
              title: 'Daftar',
              subtitle: 'Kelola orang dan grup',
            ),
            const ProfileMenuItem(
              icon: Icons.chat_outlined,
              title: 'Chat',
              subtitle: 'Riwayat obrolan, cadangan',
            ),
            const ProfileMenuItem(
              icon: Icons.color_lens_outlined,
              title: 'Tampilan',
              subtitle: 'Tema obrolan, ikon aplikasi, tema aplikasi',
            ),
            const ProfileMenuItem(
              icon: Icons.campaign_outlined,
              title: 'Siaran',
              subtitle: 'Kelola daftar dan kirim siaran',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconColor;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.iconColor = Colors.white54,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: iconColor, size: 28),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}