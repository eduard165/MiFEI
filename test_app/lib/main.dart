import 'package:flutter/material.dart';
import 'metodos.dart';

void main() {
  runApp(const MyApp());
}

// probando commits 
// si

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mis Rutas',
        theme: ThemeData(
          //scaffoldBackgroundColor: Color.fromARGB(255, 233, 233, 233), color de fondo
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // All journals
  List<Map<String, dynamic>> rutas = [];

  bool cargando = true;
  void autoActualizar() async {
    final datos = await Metodos.getItems();
    setState(() {
      rutas = datos;
      cargando = false;
    });
  }

  @override
  void initState() {
    super.initState();
    autoActualizar();
  }

  final TextEditingController tituloInput = TextEditingController();
  final TextEditingController descInput = TextEditingController();

  void mostrarForm(int? id) async {
    if (id != null) {
      // id == null crea una nueva ruta
      // id != null actualiza una ruta
      final rutaActual = rutas.firstWhere((element) => element['id'] == id);
      tituloInput.text = rutaActual['titulo'];
      descInput.text = rutaActual['descripcion'];
    }

    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: tituloInput,
                    decoration: const InputDecoration(hintText: 'Titulo'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: descInput,
                    decoration: const InputDecoration(hintText: 'Descripcion'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // Save new journal
                      if (id == null) {
                        await agregarRuta();
                      }

                      if (id != null) {
                        await actualizarRuta(id);
                      }

                      tituloInput.text = '';
                      descInput.text = '';

                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? 'Nueva Ruta' : 'Actualizar'),
                  )
                ],
              ),
            ));
  }

  Future<void> agregarRuta() async {
    await Metodos.crearItem(tituloInput.text, descInput.text);
    autoActualizar();
  }

  Future<void> actualizarRuta(int id) async {
    await Metodos.actualizar(id, tituloInput.text, descInput.text);
    autoActualizar();
  }

  // Delete an item
  void eliminarRuta(int id) async {
    await Metodos.eliminar(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Ruta eliminada'),
    ));
    autoActualizar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Rutas'),
      ),
      body: cargando
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: rutas.length,
              itemBuilder: (context, index) => Card(
                color: Colors.blue[50],
                margin: const EdgeInsets.all(15),
                child: ListTile(
                    title: Text(rutas[index]['titulo']),
                    subtitle: Text(rutas[index]['descripcion']),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => mostrarForm(rutas[index]['id']),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => eliminarRuta(rutas[index]['id']),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => mostrarForm(null),
      ),
    );
  }
}
