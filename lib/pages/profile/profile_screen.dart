import 'package:flutter/material.dart';

import '../../models/user.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late User user;

  Widget buildImage() {
    return ClipOval(
      child: Material(
        child: Image.asset(
          "assets/images/face.png",
          fit: BoxFit.cover,
          width: 156,
          height: 156,
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user = User();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(height: 20),
                buildImage(),
                const SizedBox(height: 20),
                Text(
                  "${user.name.firstname} ${user.name.lastname}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                  ),
                ),
                Text(
                  "username : ${user.username}",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.email,
                            size: 24,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Email",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text("${user.email}"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            size: 24,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Phone",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text("${user.phone}"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.pin_drop,
                            size: 24,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "User Address",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text("Number : ${user.address.number}"),
                              Text("City: ${user.address.city}"),
                              Text("Street : ${user.address.street}"),
                              Text("Zipcode : ${user.address.zipcode}"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text("Latitude : ${user.address.geolocation.lat}"),
                Text("Longitude : ${user.address.geolocation.long}"),
                const SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
