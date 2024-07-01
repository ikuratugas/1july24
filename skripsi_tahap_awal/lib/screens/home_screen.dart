import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                //------------------------
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(40.0),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 180, 255, 180),
                            Color.fromARGB(255, 190, 225, 190),
                          ],
                        ),
                      ),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runAlignment: WrapAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Data Pelanggan",
                            style: TextStyle(fontSize: 22.0),
                          ),
                          const SizedBox(
                            width: 30.0,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.abc_sharp))
                        ],
                      ),
                    ),
                  ),
                ),
                //-----------------------------------
                const SizedBox(
                  height: 20.0,
                ),
                //------------------------
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(40.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 190, 225, 190),
                            Color.fromARGB(255, 180, 255, 180),
                          ],
                        ),
                      ),
                      child: const Wrap(
                        children: [
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Penagihan",
                            style: TextStyle(fontSize: 22.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //-----------------------------------
                const SizedBox(
                  height: 20.0,
                ),
                //------------------------
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(40.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 180, 255, 180),
                            Color.fromARGB(255, 190, 225, 190),
                          ],
                        ),
                      ),
                      child: const Wrap(
                        children: [
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Riwayat",
                            style: TextStyle(fontSize: 22.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //------------------------
                const SizedBox(
                  height: 20.0,
                ),
                // ---------------------
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(40.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 190, 225, 190),
                            Color.fromARGB(255, 180, 255, 180),
                          ],
                        ),
                      ),
                      child: const Wrap(
                        children: [
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Masukan",
                            style: TextStyle(fontSize: 22.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // ---------
                const SizedBox(
                  height: 40.0,
                ),
                // -----------------------------------------------------
              ]),
        ),
      ),
    );
  }
}
