import 'package:flutter/material.dart';

class CreateCommunityScreen extends StatefulWidget {
  const CreateCommunityScreen({Key? key}) : super(key: key);

  @override
  State<CreateCommunityScreen> createState() => _CreateCommunityScreenState();
}

class _CreateCommunityScreenState extends State<CreateCommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0, // No shadow
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const Center(
                    child: Text(
                  "Create New Community",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
                const SizedBox(height: 20.0),
                const Row(
                  children: [
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text("Required Fields"),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Image, Video, Audio, or 3D Model *",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Icon(
                      Icons.info,
                      size: 20.0,
                      color: Colors.grey[700],
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                const Placeholder(fallbackHeight: 250.0),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Name *",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Icon(
                      Icons.info,
                      size: 20.0,
                      color: Colors.grey[700],
                    )
                  ],
                ),
                const SizedBox(height: 5.0),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Item Name",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "External link",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Icon(
                      Icons.info,
                      size: 20.0,
                      color: Colors.grey[700],
                    )
                  ],
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "External Link",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Icon(
                      Icons.info,
                      size: 20.0,
                      color: Colors.grey[700],
                    )
                  ],
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Description",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Collection",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Icon(
                      Icons.info,
                      size: 20.0,
                      color: Colors.grey[700],
                    )
                  ],
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Collection",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                const _CardOption(
                  iconData: Icons.format_list_bulleted,
                  title: "Properties",
                  description: "Textual traits that show up as rectangles",
                ),
                const _CardOption(
                  iconData: Icons.star_border_outlined,
                  title: "Levels",
                  description: "Numerical traits that show as progress bar",
                ),
                const _CardOption(
                  iconData: Icons.stacked_bar_chart_outlined,
                  title: "Stats",
                  description: "Numerical traits that just show as numbers",
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CardOption extends StatelessWidget {
  final String title;
  final String description;
  final IconData iconData;

  const _CardOption({
    required this.title,
    required this.description,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(iconData),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(description),
                ],
              ),
            ),
            const Icon(Icons.add),
          ],
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
