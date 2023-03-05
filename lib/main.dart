import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Help Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: firstHomePage(),
    );
  }
}

class HelpCounter extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffd9d5d5),
        title: Row(
          children: [
            const Text("NariShakti", style: TextStyle(color: Colors.black)),
            const SizedBox(width: 16.0),
            Row(
              children: [
                _buildButton(context, "Home", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Guidelines", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Articles", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Crime", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Contact us", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "About us", textColor: Colors.black),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Help Center',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Full name',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Phone number',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your address',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: 'Type your queries',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please type your queries';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Process the form data
                    }
                  },
                  child: const Text('Submit',
                      style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xfff4f4f4))),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildButton(BuildContext context, String text,
    {Color textColor = Colors.white}) {
  return TextButton(
    child: Text(text, style: TextStyle(color: textColor)),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Articles()),
      );
    },
  );
}

//////////////////////////////////////////////////////

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffd9d5d5),
        title: Row(
          children: [
            const Text("NariShakti", style: TextStyle(color: Colors.black)),
            const SizedBox(width: 955.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildButton(context, "Home", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Guidelines", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Articles", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Crime", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Contact us", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "About us", textColor: Colors.black),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 80.0),
            child: Center(
              child: Text(
                'Emergency Services',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.record_voice_over, size: 50),
              Expanded(
                child: CardWidget(
                  title: 'Audio Recording',
                  content: 'Your recordings will not be shared.\n'
                      'This may help securing audio proof about the incident.',
                ),
              ),
              const Icon(Icons.video_call, size: 50),
              Expanded(
                child: CardWidget(
                  title: 'Video Recording',
                  content: 'Your recordings will remain private.\n'
                      'This may help securing video proof about the incident.',
                ),
              ),
              const Icon(Icons.location_city, size: 50),
              Expanded(
                child: CardWidget(
                    title: 'Locator',
                    content: 'Your location will remain private\n'
                        'This may help us reach at your location.'
                        ''),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.all(50.0),
              child: Center(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String content;

  CardWidget({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Color.fromARGB(255, 188, 185, 185),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              child: Text(content),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Know More'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//////////////////////////
///
///
///
///
///
///
///

class Articles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffd9d5d5),
        title: Row(
          children: [
            const Text("NariShakti", style: TextStyle(color: Colors.black)),
            const SizedBox(width: 16.0),
            Row(
              children: [
                _buildButton(context, "Home", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Guidelines", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Articles", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Crime", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Contact us", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "About us", textColor: Colors.black),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
                child: Text(
              ' Articles',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38.0,
              ),
            )),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60.0, 15, 30, 5),
                      child: CardWidget1(
                        title: 'Equality before Law',
                        content:
                            'Article 14 embodies the general principles of equality before law and equal protection of laws. Prohibition from discrimination on grounds of religion, race, caste, sex or place of birth. Article 15(1) and (2) prohibits the state from discriminating against any citizen only on the basis of any one or more of the aspects such as religion, race, caste,'
                            'sex, place of birth or any of them. Article 15(3) makes it possible for the state to create special provisions for protecting the interests of women and children. Article 15(4) capacitates the State to create special arrangements for promoting interests and welfare of socially and educationally backward classes of society.',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 15, 60, 5),
                      child: CardWidget1(
                        title: 'Equality of Opportunity ',
                        content:
                            'Article 16 provides for equality of opportunity for all citizens in matters relating to employment or appointment to any office under the State. Article 39 requires the State to'
                            'direct its policy towards securing for men and women equally the right to an adequate means of livelihood [Article 39(a)] and equal pay for equal work for both men and women [Article 39(d)]. Article 39A directs the State to promote justice, on the basis of equal opportunity and to promote free legal aid by suitable legislation or scheme or in any other way to ensure that opportunities for securing justice are not denied to any citizen by reason of economic or other disabilities.',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60.0, 30, 30, 60),
                      child: CardWidget1(
                        title: 'Humane Conditions at Work',
                        content:
                            'Article 42 directs the State to make provision for securing justice and humane conditions of work and for maternity relief.'
                            'sex, place of birth or any of them. Article 15(3) makes it possible for protecting the interests of women and children. Article 15(4) capacitates the State to create special arrangements for promoting interests and welfare of socially and educationally backward classes of society.',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 30, 60, 60),
                      child: CardWidget1(
                          title:
                              'Reservation of seats for Women in Panchayats and Municipalities',
                          content:
                              'Article 243 D (3) and Article 243 T(3) provide for reservation of not less than one third of total number of seats in Panchayats and Municipalities for women to be allotted by rotation to different Constituencies. Article 243 D(4) T(4) provides that not less than one third of the total number of officers of chairperson in the Panchayat and Municipalities at each level to be reserved for women'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardWidget1 extends StatelessWidget {
  final String title;
  final String content;

  CardWidget1({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 188, 185, 185), // set the color to grey
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              child: Text(content),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Know More',
                    style: TextStyle(color: Colors.black)),
                style:
                    ElevatedButton.styleFrom(primary: const Color(0xfff4f4f4)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////////////////

class firstHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 194, 194),
      appBar: AppBar(
        backgroundColor: const Color(0xffd9d5d5),
        title: Row(
          children: [
            const Text("NariShakti", style: TextStyle(color: Colors.black)),
            const SizedBox(width: 957.0),
            Row(
              children: [
                _buildButton(context, "Home", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Guidelines", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Articles", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Crime", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "Contact us", textColor: Colors.black),
                const SizedBox(width: 8.0),
                _buildButton(context, "About us", textColor: Colors.black),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // set the mainAxisAlignment to center
        children: [
          const SizedBox(height: 1.0),
          const Text("NariShakti",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 38)),
          const SizedBox(height: 32.0),
          const SizedBox(height: 8.0),
          const Text("We won't be sharing your private information.",
              style: TextStyle(color: Colors.black, fontSize: 24)),
          const SizedBox(height: 32.0),
          ElevatedButton(
            child: const Text("Help"),
            style: ElevatedButton.styleFrom(primary: const Color(0xff131313)),
            onPressed: () {},
          ),
          const SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildRegistrationButton(context),
              const SizedBox(width: 16.0),
              _buildLoginButton(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text,
      {Color textColor = Colors.white}) {
    return TextButton(
      child: Text(text, style: TextStyle(color: textColor)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Articles()),
        );
      },
    );
  }

  Widget _buildRegistrationButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        child: const Text("Register", style: TextStyle(color: Colors.black)),
        style: ElevatedButton.styleFrom(primary: const Color(0xfff4f4f4)),
        onPressed: () {},
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        child: const Text("Sign-in", style: TextStyle(color: Colors.black)),
        style: ElevatedButton.styleFrom(primary: const Color(0xfff4f4f4)),
        onPressed: () {},
      ),
    );
  }
}
