import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  final List<Map<String, dynamic>> courses = [
    {
      'title': 'Programmation avec HTML5',
      'image': 'images/html.png',
      'instructor': 'DAK-SHADOW',
      'description': 'Le langage de balisage fondamental pour la création de pages web',
      'level': 'Débutant',
      'duration': '15 heures',
      'lessons': '12 leçons',
      'rating': '4.8/5',
      'topics': [
        'Les bases du balisage HTML',
        'Les nouvelles balises sémantiques',
        'Intégration de médias',
        'Formulaires avancés',
        'Accessibilité web'
      ]
    },
    {
      'title': 'Maîtrise du CSS Moderne',
      'image': 'images/css.png',
      'instructor': 'DAK-SHADOW',
      'description': 'Donnez du style à vos pages web avec les dernières fonctionnalités CSS',
      'level': 'Débutant',
      'duration': '20 heures',
      'lessons': '18 leçons',
      'rating': '4.7/5',
      'topics': [
        'Sélecteurs CSS et spécificité',
        'Flexbox et Grid Layout',
        'Animations et transitions',
        'Variables CSS',
        'Responsive design'
      ]
    },
    {
      'title': 'JavaScript Moderne',
      'image': 'images/javascript.png',
      'instructor': 'DAK-SHADOW',
      'description': 'Donnez vie à vos pages web avec le langage JavaScript',
      'level': 'Intermédiaire',
      'duration': '30 heures',
      'lessons': '25 leçons',
      'rating': '4.9/5',
      'topics': [
        'Fondamentaux du langage',
        'Manipulation du DOM',
        'Asynchrone',
        'API Fetch et AJAX',
        'Introduction à Node.js'
      ]
    },
    {
      'title': 'Python pour Débutants',
      'image': 'images/python.png',
      'instructor': 'DAK-SHADOW',
      'description': 'Apprenez le langage Python, idéal pour le machine learning et le web',
      'level': 'Débutant',
      'duration': '25 heures',
      'lessons': '20 leçons',
      'rating': '4.8/5',
      'topics': [
        'Syntaxe de base',
        'Fonctions et modules',
        'Programmation orientée objet',
        'Traitement des fichiers',
        'Introduction à Django'
      ]
    },
    {
      'title': 'PHP Moderne',
      'image': 'images/php.png',
      'instructor': 'DAK-SHADOW',
      'description': 'Développez des applications web dynamiques avec PHP',
      'level': 'Intermédiaire',
      'duration': '28 heures',
      'lessons': '22 leçons',
      'rating': '4.6/5',
      'topics': [
        'Fondamentaux de PHP',
        'Programmation orientée objet',
        'Interaction avec MySQL',
        'Création d\'API REST',
        'Sécurité des applications'
      ]
    },
    // ... (autres cours gardés identiques)
  ];

  Future<void> _launchURL(String url) async {
    try {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        throw 'Impossible d\'ouvrir $url';
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erreur lors de l\'ouverture du lien: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Nos Cours de Programmation',
                style: TextStyle(
                  color: const Color(0xFF8C2711),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              background: Container(color: Colors.white),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final course = courses[index];
                return _buildCourseCard(course, context);
              },
              childCount: courses.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard(Map<String, dynamic> course, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image avec badge de niveau
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.asset(
                    course['image'],
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 200,
                      color: Colors.grey[200],
                      child: const Center(
                        child: Icon(Icons.broken_image, size: 50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: course['level'] == 'Débutant' 
                          ? const Color(0xFF8C2711) 
                          : const Color(0xFFBF5B21),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      course['level'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),

            // Contenu de la carte
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Titre et instructeur
                  Text(
                    course['title'],
                    style: const TextStyle(
                      color: Color(0xFF8C2711),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Par ${course['instructor']}',
                    style: TextStyle(color: Colors.grey[600], fontSize: 14)),
                  
                  // Description
                  const SizedBox(height: 8),
                  Text(
                    course['description'],
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  
                  // Métadonnées
                  const SizedBox(height: 12),
                  _buildCourseMetaData(course),
                  
                  // Points clés
                  const SizedBox(height: 12),
                  const Text(
                    'Points clés du cours :',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  ...course['topics'].map((topic) => _buildTopicItem(topic)).toList(),
                  
                  // Boutons
                  const SizedBox(height: 16),
                  _buildActionButtons(course),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseMetaData(Map<String, dynamic> course) {
    return Row(
      children: [
        _buildMetaItem(Icons.access_time, course['duration']),
        const SizedBox(width: 16),
        _buildMetaItem(Icons.book, course['lessons']),
        const Spacer(),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 16),
            const SizedBox(width: 4),
            Text(course['rating'], 
                style: TextStyle(color: Colors.grey[600], fontSize: 14)),
          ],
        ),
      ],
    );
  }

  Widget _buildMetaItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey[600], size: 16),
        const SizedBox(width: 4),
        Text(text, style: TextStyle(color: Colors.grey[600], fontSize: 14)),
      ],
    );
  }

  Widget _buildTopicItem(String topic) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.circle, size: 6, color: Color(0xFF8C2711)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(topic, style: const TextStyle(fontSize: 14)),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(Map<String, dynamic> course) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () => _launchURL(
              'https://findy.com/course/${course['title'].toLowerCase().replaceAll(' ', '-')}/start'),
            style: ElevatedButton.styleFrom(
              //backgroundColor: const Color(0xFF8C2711),
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            child: Text('Commencer le cours', style: const TextStyle(fontSize: 16)),
          ),
        ),
        const SizedBox(width: 16),
        TextButton(
          onPressed: () => _launchURL(
            'https://findy.com/course/${course['title'].toLowerCase().replaceAll(' ', '-')}/details'),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Détails', style: TextStyle(color: Color(0xFF8C2711), fontSize: 16)),
              Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF8C2711)),
            ],
          ),
        ),
      ],
    );
  }
}