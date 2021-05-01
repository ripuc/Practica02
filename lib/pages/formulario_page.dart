import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: ListView(padding: EdgeInsets.all(20), children: [
          Persona(),
          Text(
            'Name',
            style: TextStyle(fontSize: 18, color: Colors.black45),
          ),
          CajaName(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Date of Birth',
                style: TextStyle(fontSize: 18, color: Colors.black45),
              ),
              SizedBox(height: 5),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1)
                        ]),
                    width: (size.width / 3) - 30,
                    height: 50,
                    child: Center(child: Mes()),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1)
                        ]),
                    width: (size.width / 3) - 30,
                    height: 50,
                    child: Center(child: Dia()),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1)
                        ]),
                    width: (size.width / 3) - 30,
                    height: 50,
                    child: Center(child: Anio()),
                  ),
                ],
              ),
            ],
          ),
          Animales(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Email',
                style: TextStyle(fontSize: 18, color: Colors.black45),
              ),
              SizedBox(height: 5),
            ],
          ),
          CajaEmail(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Password',
                style: TextStyle(fontSize: 18, color: Colors.black45),
              ),
              SizedBox(height: 5),
            ],
          ),
          CajaPassword(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Verify Password',
                style: TextStyle(fontSize: 18, color: Colors.black45),
              ),
              SizedBox(height: 5),
            ],
          ),
          VerifyPassword(),
          Contacto(),
          ComboBox(),
          Phone()
        ]),
      ),
    ));
  }
}

class ComboBox extends StatefulWidget {
  @override
  _ComboBoxState createState() => _ComboBoxState();
}

class _ComboBoxState extends State<ComboBox> {
  List<String> _state = [
    '-Select your state-',
    'Carolina de norte',
    'Los angeles'
  ];
  String _actual = '-Select your state-';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.3), spreadRadius: 1)
              ]),
          child: Row(children: [
            DropdownButton(
              value: _actual,
              items: getItems(),
              onChanged: (option) {
                setState(() {});
                _actual = option;
              },
            )
          ]),
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _state
        .map((state) => options.add(DropdownMenuItem(
              child: Text(state),
              value: state,
            )))
        .toList();
    return options;
  }
}

class Phone extends StatefulWidget {
  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 10),
      Text(
        'Phone',
        style: TextStyle(fontSize: 18, color: Colors.black45),
      ),
      SizedBox(height: 5),
      TextField(
        decoration: InputDecoration(
            hintText: ('837.383.3678'),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      ),
    ]);
  }
}

class Contacto extends StatefulWidget {
  @override
  _ContactoState createState() => _ContactoState();
}

class _ContactoState extends State<Contacto> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15),
        Text('Contact',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.black26),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Address',
          style: TextStyle(fontSize: 18, color: Colors.black45),
        ),
        SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
              hintText: ('938 Jackson St.'),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
        ),
        SizedBox(height: 10),
        Text(
          'City',
          style: TextStyle(fontSize: 18, color: Colors.black45),
        ),
        SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
              hintText: ('938 Jackson St.'),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
        ),
        SizedBox(height: 10),
        Text(
          'State',
          style: TextStyle(fontSize: 18, color: Colors.black45),
        ),
        SizedBox(height: 5),
      ],
    );
  }
}

class VerifyPassword extends StatefulWidget {
  @override
  _VerifyPasswordState createState() => _VerifyPasswordState();
}

class _VerifyPasswordState extends State<VerifyPassword> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: '',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}

class Animales extends StatefulWidget {
  const Animales({
    Key key,
  }) : super(key: key);

  @override
  _AnimalesState createState() => _AnimalesState();
}

class _AnimalesState extends State<Animales> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          'What is your favorite animal',
          style: TextStyle(fontSize: 18, color: Colors.black45),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3), spreadRadius: 1)
                  ]),
              width: (size.width / 5) - 10,
              height: 50,
              child: Center(child: Text('Lion')),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3), spreadRadius: 1)
                  ]),
              width: (size.width / 5) - 10,
              height: 50,
              child: Center(child: Text('Tiger')),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3), spreadRadius: 1)
                  ]),
              width: (size.width / 5) - 10,
              height: 50,
              child: Center(child: Text('Bear')),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3), spreadRadius: 1)
                  ]),
              width: (size.width / 5) - 10,
              height: 50,
              child: Center(child: Text('Bull')),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3), spreadRadius: 1)
                  ]),
              width: (size.width / 5) - 10,
              height: 50,
              child: Center(child: Text('Serval')),
            )
          ],
        ),
        SizedBox(height: 15),
        Text('Account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.black26),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class Mes extends StatefulWidget {
  @override
  _MesState createState() => _MesState();
}

class _MesState extends State<Mes> {
  List<String> _meses = [
    'Month',
    'Enero',
    'Febrero',
    'Marzo',
    'Abril',
    'Mayo',
    'Junio'
  ];
  String _actual = 'Month';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          DropdownButton(
            value: _actual,
            items: getItems(),
            onChanged: (option) {
              setState(() {});
              _actual = option;
            },
          )
        ]),
      ],
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _meses
        .map((mes) => options.add(DropdownMenuItem(
              child: Text(mes),
              value: mes,
            )))
        .toList();
    return options;
  }
}

class Anio extends StatefulWidget {
  @override
  _AnioState createState() => _AnioState();
}

class _AnioState extends State<Anio> {
  List<String> _anios = [
    'Year',
    '2010',
    '2011',
    '2012',
    '2013',
    '2014',
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022',
    '2023',
    '2024'
  ];
  String _actual = 'Year';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          DropdownButton(
            value: _actual,
            items: getItems(),
            onChanged: (option) {
              setState(() {});
              _actual = option;
            },
          )
        ]),
      ],
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _anios
        .map((anio) => options.add(DropdownMenuItem(
              child: Text(anio),
              value: anio,
            )))
        .toList();
    return options;
  }
}

class Dia extends StatefulWidget {
  @override
  _DiaState createState() => _DiaState();
}

class _DiaState extends State<Dia> {
  List<String> _dias = [
    'Day',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15'
  ];
  String _actual = 'Day';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          DropdownButton(
            value: _actual,
            items: getItems(),
            onChanged: (option) {
              setState(() {});
              _actual = option;
            },
          )
        ]),
      ],
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _dias
        .map((dia) => options.add(DropdownMenuItem(
              child: Text(dia),
              value: dia,
            )))
        .toList();
    return options;
  }
}

class Persona extends StatefulWidget {
  @override
  _PersonaState createState() => _PersonaState();
}

class _PersonaState extends State<Persona> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Personal',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.black26),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class CajaPassword extends StatefulWidget {
  @override
  _CajaPasswordState createState() => _CajaPasswordState();
}

class _CajaPasswordState extends State<CajaPassword> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}

class CajaEmail extends StatefulWidget {
  @override
  _CajaEmailState createState() => _CajaEmailState();
}

class _CajaEmailState extends State<CajaEmail> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'john@johndoe.com',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}

class CajaName extends StatefulWidget {
  @override
  _CajaNameState createState() => _CajaNameState();
}

class _CajaNameState extends State<CajaName> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'John Doe',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}
