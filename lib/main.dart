import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0D0D1A), Color(0xFF1B0E3E)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // === ABOUT ME ===
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "About me",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // ROW: TEXT + FOTO
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TEKS ABOUT
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hi!\nMy name is Muhammad Dzacky.\n"
                          "I am a UX/UI Designer based in Japan, Viet Nam with experience through projects and subjects in university.\n\n"
                          "My objective: Challenge myself in a new environment to learn, develop, improve my skills through different projects and contribute more to the company with my abilities.",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            height: 1.6,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),

                  // FOTO
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/profile.jpg",
                      width: 150,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // === CONTACT ===
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContactItem(icon: Icons.email, text: "dzakzak@gmail.com"),
                  ContactItem(icon: Icons.phone, text: "0869 9696 9966"),
                  ContactItem(icon: Icons.link, text: "linkedin.com/in/zakdzack"),
                ],
              ),

              const SizedBox(height: 40),

              // === CARD BESAR (Education, Skills, dsb) ===
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // EDUCATION
                    sectionTitle("Education"),
                    const Text(
                      "2023 - Now | Mulawarman University - Graphic Design",
                      style: TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 20),

                    // TECHNICAL SKILLS
                    sectionTitle("Technical skill"),
                    Wrap(
                      spacing: 20,
                      children: [
                        Image.asset("assets/figma.png", width: 40),
                        Image.asset("assets/premiere.png", width: 40),
                        Image.asset("assets/aftereffec.png", width: 40),
                        Image.asset("assets/illustrator.png", width: 40),
                        Image.asset("assets/indesign.png", width: 40),
                        Image.asset("assets/photoshop.png", width: 40),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // SOFT SKILL
                    sectionTitle("Soft skill"),
                    const Wrap(
                      spacing: 20,
                      children: [
                        Text("Teamwork", style: TextStyle(color: Colors.white70)),
                        Text("Critical Thinking", style: TextStyle(color: Colors.white70)),
                        Text("Communication", style: TextStyle(color: Colors.white70)),
                        Text("Time Management", style: TextStyle(color: Colors.white70)),
                        Text("Soft Spoken", style: TextStyle(color: Colors.white70)),

                      ],
                    ),
                    const SizedBox(height: 20),

                    // SKILL SET
                    sectionTitle("Skill set"),
                    const Wrap(
                      spacing: 20,
                      runSpacing: 10,
                      children: [
                        Text("User research", style: TextStyle(color: Colors.white70)),
                        Text("Wireframing", style: TextStyle(color: Colors.white70)),
                        Text("Brainstorming", style: TextStyle(color: Colors.white70)),
                        Text("Web Design", style: TextStyle(color: Colors.white70)),
                        Text("App Design", style: TextStyle(color: Colors.white70)),
                        Text("Prototyping", style: TextStyle(color: Colors.white70)),
                        Text("Scrolling Tiktok", style: TextStyle(color: Colors.white70)),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // INTEREST
                    sectionTitle("Interest"),
                    const Text("Design Trends   |   Technology",
                        style: TextStyle(color: Colors.white70)),
                    const SizedBox(height: 20),

                    // LANGUAGE
                    // Language
                  const Text(
                    "Languages",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white70),
                  ),
                  SizedBox(height: 8),
                  const Text(
                    "🇮🇩 Indonesian (Native)",
                    style: TextStyle(color: Colors.white70),
                  ),
                  const Text(
                    "🇬🇧 English (Intermediate)",
                    style: TextStyle(color: Colors.white70),
                  ),
                  const Text(
                    "🇯🇵 Japanese (Beginner)",
                    style: TextStyle(color: Colors.white70),
                  ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// === REUSABLE WIDGETS ===
class ContactItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const ContactItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.purpleAccent),
        const SizedBox(width: 6),
        Text(text, style: const TextStyle(color: Colors.white70)),
      ],
    );
  }
}

Widget sectionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
