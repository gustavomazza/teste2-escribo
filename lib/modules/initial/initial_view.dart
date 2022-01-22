import 'package:flutter/material.dart';
import 'package:flutter_application_4/modules/initial/initial_controller.dart';
import 'package:get/get.dart';

class InitialView extends GetView<InitialController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Cobras e escadas',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Jogador ' + controller.mostrarJogador() + '. Sua vez!',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                Container(
                  height: 30,
                  width: 200,
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Get.theme.primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(1.0, 1.0), // shadow direction: bottom right
                      ),
                    ],
                  ),
                  child: SizedBox.expand(
                    child: TextButton(
                      child: const Text(
                        'Jogar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        controller.jogarDados();
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                          'Primeiro Dado: ' + controller.dadoUm.toString()))
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Segundo Dado: ' + controller.dadoDois.toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 30,
                          width: 125,
                          margin: EdgeInsets.only(top: 20),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Get.theme.primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                    1.0, 1.0), // shadow direction: bottom right
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Jogador 1',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Obx(
                          () => Text(controller.pontosJogador1.toString()),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 30,
                          width: 125,
                          margin: EdgeInsets.only(top: 20),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Get.theme.primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                    1.0, 1.0), // shadow direction: bottom right
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Jogador 2',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(controller.pontosJogador2.toString()),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                const Text('Regras:'),
                Container(
                  height: 30,
                  width: 200,
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Get.theme.primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(1.0, 1.0), // shadow direction: bottom right
                      ),
                    ],
                  ),
                  child: SizedBox.expand(
                    child: TextButton(
                      child: const Text(
                        'Jogar novamente',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        controller.jogarNovamente();
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Cobras:',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        Text('CABEÇA: 99... RABO: 80'),
                        Text('CABEÇA: 95... RABO: 75'),
                        Text('CABEÇA: 92... RABO: 88'),
                        Text('CABEÇA: 89... RABO: 68'),
                        Text('CABEÇA: 74... RABO: 53'),
                        Text('CABEÇA: 64... RABO: 60'),
                        Text('CABEÇA: 62... RABO: 19'),
                        Text('CABEÇA: 49... RABO: 11'),
                        Text('CABEÇA: 46... RABO: 25'),
                        Text('CABEÇA: 16... RABO: 6'),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Escadas:',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                        Text('BASE: 2... TOPO: 38'),
                        Text('BASE: 7... TOPO: 14'),
                        Text('BASE: 8... TOPO: 31'),
                        Text('BASE: 15... TOPO: 26'),
                        Text('BASE: 21... TOPO: 42'),
                        Text('BASE: 28... TOPO: 84'),
                        Text('BASE: 36... TOPO: 44'),
                        Text('BASE: 51... TOPO: 67'),
                        Text('BASE: 71... TOPO: 91'),
                        Text('BASE: 78... TOPO: 98'),
                        Text('BASE: 87... TOPO: 94')
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
