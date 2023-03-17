import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100), child: Image.asset('lib/images/Profilbild.png'),
                ),
              ),
              const SizedBox(height: 10),
              Text('Hanna', style: Theme.of(context).textTheme.headlineMedium),
              Text('hanna@hannawiegand.de', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(162, 183, 155, 1), side: BorderSide.none, shape: const StadiumBorder()),
                  child: const Text('Profil bearbeiten', style: TextStyle(color: Colors.black)),
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(),
                const SizedBox(height: 10),

                Profilmenue(title: 'Einstellungen', icon: Icons.settings, onPress: () {}),
                Profilmenue(title: 'Einstellungen', icon: Icons.settings, onPress: () {}),
                Profilmenue(title: 'Einstellungen', icon: Icons.settings, onPress: () {}),
                const Divider(),
                const SizedBox(height: 10),
                Profilmenue(title: 'Logout', icon: Icons.logout, textColor: Colors.redAccent, endIcon: false, onPress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

class Profilmenue extends StatelessWidget {
  const Profilmenue({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40, height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(162, 183, 155, 0.1),
        ),
        child: Icon(icon, color: const Color.fromRGBO(162, 183, 155, 0.9)),
    ),
    title: Text(title, style: Theme.of(context).textTheme.bodyMedium?.apply(color: textColor)),
    trailing: endIcon? Container(
      width: 30, height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(162, 183, 155, 0.1),
      ),
      child: const Icon(Icons.arrow_forward_ios,size: 18.0, color: Colors.grey)) : null,
    );
  }
}