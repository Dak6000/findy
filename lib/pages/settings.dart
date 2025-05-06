import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pages/auth.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // Variables pour les paramètres
  bool _darkMode = false;
  String _language = 'fr';
  int _fontSize = 2;
  bool _notificationsEnabled = true;
  bool _emailNotifications = true;
  bool _pushNotifications = true;

  // Listes pour les options
  final List<String> _languages = ['fr', 'en'];
  final List<String> _fontSizes = ['Petit', 'Moyen', 'Grand', 'Très grand'];

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _darkMode = prefs.getBool('darkMode') ?? false;
      _language = prefs.getString('language') ?? 'fr';
      _fontSize = prefs.getInt('fontSize') ?? 2;
      _notificationsEnabled = prefs.getBool('notificationsEnabled') ?? true;
      _emailNotifications = prefs.getBool('emailNotifications') ?? true;
      _pushNotifications = prefs.getBool('pushNotifications') ?? true;
    });
  }

  Future<void> _saveSettings() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('darkMode', _darkMode);
    await prefs.setString('language', _language);
    await prefs.setInt('fontSize', _fontSize);
    await prefs.setBool('notificationsEnabled', _notificationsEnabled);
    await prefs.setBool('emailNotifications', _emailNotifications);
    await prefs.setBool('pushNotifications', _pushNotifications);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
        backgroundColor: const Color(0xFF8C2711),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Section Compte
          Card(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Compte',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.login),
                  title: const Text('Connexion/Inscription'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Auth()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Mon profil'),
                  onTap: () {
                    // TODO: Implémenter la page de profil
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Section Études
          Card(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Études',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.compass_calibration),
                  title: const Text('Orientation'),
                  onTap: () {
                    // TODO: Implémenter la page d'orientation
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.quiz),
                  title: const Text('Quiz'),
                  onTap: () {
                    // TODO: Implémenter la page des quiz
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Certifications'),
                  onTap: () {
                    // TODO: Implémenter la page des certifications
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Section Interface
          Card(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Interface',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(),
                // Thème
                Card(
                  child: ExpansionTile(
                    title: const Text('Apparence'),
                    children: [
                      RadioListTile(
                        title: const Text('Mode clair'),
                        value: false,
                        groupValue: _darkMode,
                        onChanged: (value) {
                          setState(() {
                            _darkMode = value ?? false;
                            _saveSettings();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('Mode sombre'),
                        value: true,
                        groupValue: _darkMode,
                        onChanged: (value) {
                          setState(() {
                            _darkMode = value ?? true;
                            _saveSettings();
                          });
                        },
                      ),
                    ],
                  ),
                ),
                // Langue
                Card(
                  child: ExpansionTile(
                    title: const Text('Langue'),
                    children: [
                      RadioListTile(
                        title: const Text('Français'),
                        value: 'fr',
                        groupValue: _language,
                        onChanged: (value) {
                          setState(() {
                            _language = value ?? 'fr';
                            _saveSettings();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('Anglais'),
                        value: 'en',
                        groupValue: _language,
                        onChanged: (value) {
                          setState(() {
                            _language = value ?? 'en';
                            _saveSettings();
                          });
                        },
                      ),
                    ],
                  ),
                ),
                // Taille de police
                Card(
                  child: ExpansionTile(
                    title: const Text('Taille de police'),
                    children: [
                      RadioListTile(
                        title: const Text('Petit'),
                        value: 0,
                        groupValue: _fontSize,
                        onChanged: (value) {
                          setState(() {
                            _fontSize = value ?? 0;
                            _saveSettings();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('Moyen'),
                        value: 1,
                        groupValue: _fontSize,
                        onChanged: (value) {
                          setState(() {
                            _fontSize = value ?? 1;
                            _saveSettings();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('Grand'),
                        value: 2,
                        groupValue: _fontSize,
                        onChanged: (value) {
                          setState(() {
                            _fontSize = value ?? 2;
                            _saveSettings();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('Très grand'),
                        value: 3,
                        groupValue: _fontSize,
                        onChanged: (value) {
                          setState(() {
                            _fontSize = value ?? 3;
                            _saveSettings();
                          });
                        },
                      ),
                    ],
                  ),
                ),
                // Notifications
                Card(
                  child: ExpansionTile(
                    title: const Text('Paramètres des notifications'),
                    children: [
                      SwitchListTile(
                        title: const Text('Activer les notifications'),
                        value: _notificationsEnabled,
                        onChanged: (value) {
                          setState(() {
                            _notificationsEnabled = value ?? false;
                            _saveSettings();
                          });
                        },
                      ),
                      if (_notificationsEnabled)
                        ...[
                          SwitchListTile(
                            title: const Text('Notifications par email'),
                            value: _emailNotifications,
                            onChanged: (value) {
                              setState(() {
                                _emailNotifications = value ?? false;
                                _saveSettings();
                              });
                            },
                          ),
                          SwitchListTile(
                            title: const Text('Notifications push'),
                            value: _pushNotifications,
                            onChanged: (value) {
                              setState(() {
                                _pushNotifications = value ?? false;
                                _saveSettings();
                              });
                            },
                          ),
                        ],
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Section Informations
          Card(
            child: ExpansionTile(
              title: const Text('Informations'),
              children: [
                ListTile(
                  title: const Text('Contactez-nous'),
                  onTap: () {
                    // TODO: Implémenter le contact
                  },
                ),
                ListTile(
                  title: const Text('Conditions d\'utilisation'),
                  onTap: () {
                    // TODO: Implémenter les conditions
                  },
                ),
                ListTile(
                  title: const Text('Politique de confidentialité'),
                  onTap: () {
                    // TODO: Implémenter la politique
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Section Version
          Card(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Version',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(),
                ListTile(
                  title: const Text('Version actuelle'),
                  subtitle: const Text('1.0.0'),
                  trailing: const Icon(Icons.info_outline),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}