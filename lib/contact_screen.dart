import 'package:contact_app/show_contact_screen.dart';
import 'package:flutter/material.dart';

List contactList = [
  {
    'Name': 'Taiyeba',
    'Time': '9.30',
    'Phone': '01317470956',
    'icon': 'T',
    'image': 'https://img.freepik.com/free-vector/cute-girl-hijab-working-laptop-cartoon-vector-icon-illustration-people-technology-isolated-flat_138676-12398.jpg'
  },
  {
    'Name': 'John Doe',
    'Time': '10.15',
    'Phone': '01234567890',
    'icon': 'J',
    'image': 'https://wallpapers.com/images/hd/timothy-templeton-cute-boy-cartoon-jlnbw16arwh1536j.jpg'
  },
  {
    'Name': 'Jane Smith',
    'Time': '11.45',
    'Phone': '09876543210',
    'icon': 'J',
    'image': 'https://img.freepik.com/free-vector/hand-drawn-woman-character-avatar_23-2148828770.jpg'
  },
  {
    'Name': 'Sam Wilson',
    'Time': '12.00',
    'Phone': '01456789012',
    'icon': 'S',
    'image': 'https://img.freepik.com/free-vector/cute-boy-with-glasses-cartoon-icon-illustration_138676-2469.jpg'
  },
  {
    'Name': 'Emily Brown',
    'Time': '1.20',
    'Phone': '01789456789',
    'icon': 'E',
    'image': 'https://img.freepik.com/free-vector/cute-girl-pigtails-cartoon-illustration_138676-2094.jpg'
  },
  {
    'Name': 'Michael Johnson',
    'Time': '2.30',
    'Phone': '01876543219',
    'icon': 'M',
    'image': 'https://img.freepik.com/free-vector/boy-sitting-floor-with-laptop-cartoon-vector-icon-illustration_138676-2433.jpg'
  },
  {
    'Name': 'Anna Davis',
    'Time': '3.45',
    'Phone': '01987654321',
    'icon': 'A',
    'image': 'https://img.freepik.com/free-vector/cute-girl-cartoon-working-laptop-character-illustration_138676-2462.jpg'
  },
  {
    'Name': 'Robert King',
    'Time': '4.00',
    'Phone': '01122334455',
    'icon': 'R',
    'image': 'https://img.freepik.com/free-vector/cute-boy-holding-book_138676-2354.jpg'
  },
  {
    'Name': 'Olivia Taylor',
    'Time': '5.15',
    'Phone': '01678901234',
    'icon': 'O',
    'image': 'https://img.freepik.com/free-vector/young-girl-hijab-cartoon-vector_138676-2026.jpg'
  },
  {
    'Name': 'David Lee',
    'Time': '6.30',
    'Phone': '01543210987',
    'icon': 'D',
    'image': 'https://img.freepik.com/free-vector/cute-boy-with-camera-cartoon-illustration_138676-2232.jpg'
  },
  {
    'Name': 'William Harris',
    'Time': '7.45',
    'Phone': '01456789013',
    'icon': 'W',
    'image': 'https://img.freepik.com/free-vector/cute-boy-eating-burger-cartoon-vector-icon-illustration_138676-2281.jpg'
  },
  {
    'Name': 'Sophia Clark',
    'Time': '8.15',
    'Phone': '01789012345',
    'icon': 'S',
    'image': 'https://img.freepik.com/free-vector/cute-girl-eating-burger-cartoon-vector-icon-illustration_138676-2299.jpg'
  },
  {
    'Name': 'Lucas Adams',
    'Time': '9.00',
    'Phone': '01876543211',
    'icon': 'L',
    'image': 'https://img.freepik.com/free-vector/cartoon-happy-boy_1308-111984.jpg'
  },
  {
    'Name': 'Isabella Martinez',
    'Time': '10.45',
    'Phone': '01345678901',
    'icon': 'I',
    'image': 'https://img.freepik.com/free-vector/cute-girl-wearing-glasses-cartoon-icon-illustration_138676-2460.jpg'
  },
  {
    'Name': 'Elijah Thompson',
    'Time': '11.30',
    'Phone': '01234567891',
    'icon': 'E',
    'image': 'https://img.freepik.com/free-vector/cute-boy-holding-laptop-vector-icon-illustration_138676-2560.jpg'
  },
  {
    'Name': 'Mia Lopez',
    'Time': '12.15',
    'Phone': '01122334456',
    'icon': 'M',
    'image': 'https://img.freepik.com/free-vector/cute-girl-holding-book-vector-icon-illustration_138676-2461.jpg'
  },
  {
    'Name': 'Alexander White',
    'Time': '1.45',
    'Phone': '01678901235',
    'icon': 'A',
    'image': 'https://img.freepik.com/free-vector/cute-boy-cartoon-vector_138676-2557.jpg'
  },
  {
    'Name': 'Grace Lewis',
    'Time': '2.30',
    'Phone': '01987654322',
    'icon': 'G',
    'image': 'https://img.freepik.com/free-vector/cute-girl-reading-book-vector-icon-illustration_138676-2559.jpg'
  },
  {
    'Name': 'James Walker',
    'Time': '3.00',
    'Phone': '01456789014',
    'icon': 'J',
    'image': 'https://img.freepik.com/free-vector/cute-boy-studying-book-cartoon-vector-icon-illustration_138676-2466.jpg'
  },
  {
    'Name': 'Ella Scott',
    'Time': '4.45',
    'Phone': '01234567892',
    'icon': 'E',
    'image': 'https://img.freepik.com/free-vector/cute-girl-holding-book-cartoon-vector-icon-illustration_138676-2283.jpg'
  }
];




class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Contact App"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: contactList.length,
          itemBuilder:(context,index){
              return ListTile(
                title:Column (
                  crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(children: [
                        Text("${contactList[index]['Name']}",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(width: 10,),
                        Text("${contactList[index]['Time']}",
                          style: TextStyle(fontSize: 10,color: Colors.blue),),
                      ],),
                    ],
                  ),
               /* subtitle: Text("${contactList[index]['Phone']}"),*/
                leading:CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Text("${contactList[index]['icon']}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ),
                trailing: Icon(Icons.add_call),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ShowContactScreen(
                    contact: contactList[index],  // ✔ Correct

                  ),
                  ),
                  );
                },
              );
            },

        ),
      ),
    );
  }
}
