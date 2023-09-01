import 'package:flutter/material.dart';
import '../../Widgets/category_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      'Premium',
                      style: TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20,height: 30,),
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            'The Secrets to be Fluent in English',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        //SizedBox(width: 8.0),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 70.0,
                  height: 50.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/274e.png'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Text('Courses', style: TextStyle(fontSize: 26.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม All Topics
                        Expanded(
                          child: _buildCategoryButton(
                            text: 'Full Access to Pattern Lessons',
                            icon: Icons.menu_book_outlined,
                            color: Colors.lightBlue,
                            isSelected: value1,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // ปุ่ม Popular
                        Expanded(
                          child: _buildCategoryButton(
                            text: 'Unlock All Limitations',
                            icon: Icons.lock_open,
                            color: Colors.purpleAccent,
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม Newest
                        Expanded(
                          child: _buildCategoryButton(
                            text: 'All Topics Available',
                            icon: Icons.lightbulb_circle,
                            color: Colors.orange,
                            isSelected: true,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // ปุ่ม Advanced
                        Expanded(
                          child: _buildCategoryButton(
                            text: 'Personalized Coaching',
                            icon: Icons.people,
                            color: Colors.lightGreen,
                            isSelected: true,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const <Widget>[
                      Center(),SizedBox(height: 50,width: 544,),
                      Text(
                        'IDR50.000',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Text('/month'),
                    ],
                  ),
                  Row(
                      children: const <Widget>[
                        Center(),SizedBox(height: 30,width: 525,),
                        Text(
                          '2023 Special Early Birds Offer',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w200,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.pink,
                          ),
                        ),
                      ]
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            value1 = !value1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Start 3 Days Free Trail'),
                        ),
                      ),
                    ),
                  ),
                  Row(
                      children: const <Widget>[
                        Center(),SizedBox(height: 30,width: 610,),
                        Text(
                          'View all Plan',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.orangeAccent,
                          ),
                        ),
                        ]
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildCategoryButton({
    required String text,
    required IconData icon,
    required Color color,
    required bool isSelected,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? color : Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 7,
            blurRadius: 12,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: isSelected ? color : Colors.white,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black87),
          ),
        ],
      ),
    );
  }
}
