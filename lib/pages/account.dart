import 'package:flutter/material.dart';

class AccountApp extends StatefulWidget {
  const AccountApp({super.key});

  @override
  State<AccountApp> createState() => _AccountAppState();
}

class _AccountAppState extends State<AccountApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        Container(
          height: 120,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 90,
                width: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/1722278807595.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                  child: ListTile(
                title: Text(
                  "Ahmed",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text(
                  "Ahmed1545.@gmail.com",
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
              )),
              // Spacer(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications,
                  color: Colors.redAccent,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.monetization_on),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "account balance",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    "\$\500",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.redAccent),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          "Add",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.delivery_dining_sharp),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Your requests",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "60",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Requests",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Your Location",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    "2",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          title: Text("technical support",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          leading: Icon(Icons.help, color: Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text("Setting",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          leading: Icon(
            Icons.settings,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text("Sign Out",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          leading: Icon(
            Icons.exit_to_app,
            color: Colors.redAccent,
          ),
        )
      ],
    ));
  }
}
