import 'package:flutter/material.dart';
import 'package:practica01/Registro.dart';
class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Inicio(),
    );
  }
}
class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              contenido(),
              Divider(height: 10.0),
              textoo(),
              Divider(height: 20.0),
              datos(),
              Divider(height: 20.0),
              dato2(),
              Divider(height: 20.0),
              Btrestableercontra(),
              Divider(height: 10.0),
              botones(),
              Divider(height: 40.0),
              texto1(),
              Divider(height: 20.0),
              botones2(),
              Divider(height: 20.0),
              bottonini()
            ],
          ),
        )
      ),
        
        
        
      ],
    );
  }
}

  Widget datos() {
    return SingleChildScrollView(
      child: Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 1),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Nombre de Usuario',
          labelText: 'Nombre de Usuario',
          prefixIcon: Icon(Icons.email, color: Colors.grey),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: Colors.grey[300],
        ),
      ),
      )
    );
  }

  Widget botones() {
    return Container(
      child: MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.symmetric(horizontal: 65, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color: Colors.green[500],
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 30.0,
              width: 45.0,
            ),
            SizedBox(width: 50.0),
            Align(
              alignment: Alignment.center,
              child: Text("Continuar", style: TextStyle(fontSize: 15.0, color: Colors.white)),
            ),
            SizedBox(width: 70.0),
          ],
        ),
      ),
    );
  }

  Widget dato2() {
    return SingleChildScrollView(
      child: Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 1),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Contraseña',
          labelText: 'Contraseña',
          prefixIcon: Icon(Icons.lock_outlined, color: Colors.grey),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          filled: true,
          fillColor: Colors.grey[300],
        ),
      ),
    ),
    );
  }

  Widget textoo() {
    return Column(
      children: [
        Text("Bienvenidos a ilearnPro", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Divider(height: 10.0),
        Text('Inicio de seccion', style: TextStyle(fontWeight: FontWeight.bold))
      ],
    );
  }

  Widget texto1() {
    return Container(
      child: Text("O Usar"),
    );
  }


class fondo extends StatefulWidget {
  const fondo({super.key});

  @override
  State<fondo> createState() => _fondoState();
}

class _fondoState extends State<fondo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/img/fondo.png')),
    );
  }
}

class contenido extends StatefulWidget {
  const contenido({super.key});

  @override
  State<contenido> createState() => _contenidoState();
}

class _contenidoState extends State<contenido> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: 90.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 85.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 85,
                    backgroundImage: AssetImage('assets/img/log.png'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class bottonini extends StatefulWidget {
  const bottonini({super.key});

  @override
  State<bottonini> createState() => _bottoniniState();
}

class _bottoniniState extends State<bottonini> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("¿Eres nuevo?", style: TextStyle(fontSize: 20.0)),
              MaterialButton(onPressed:(){Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Registro()),
                                );},
                
                child: Text("Registrate", style: TextStyle(color: const Color.fromARGB(255, 62, 160, 65), fontSize: 20.0)),
              )
            ],
          ),
        ),
      ],
    );
  }
}

Widget Btrestableercontra() {
  return Container(
    alignment: Alignment.bottomRight,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MaterialButton(onPressed: () {}, child: Text("Olvidaste tu Contraseña?"))
      ],
    ),
  );
}

Widget botones2() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Row(
            children: [
              Image.asset('assets/img/facebook.png', width: 40.0, height: 30.0),
              Text("Facebook", style: TextStyle(color: Colors.white)),
              SizedBox(width: 10),
            ],
          ),
          style: ElevatedButton.styleFrom(primary: Colors.blue[700], padding: EdgeInsets.symmetric(horizontal: 42, vertical: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Row(
            children: [
              Image.asset('assets/img/Google.png', width: 40.0, height: 30.0),
              Text("Google", style: TextStyle(color: Colors.black)),
              SizedBox(width: 10),
            ],
          ),
          style: ElevatedButton.styleFrom(primary: Colors.white, padding: EdgeInsets.symmetric(horizontal: 42, vertical: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
        ),
      ],
    ),
  );
}
 