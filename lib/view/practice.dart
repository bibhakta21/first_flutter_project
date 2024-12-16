import 'package:flutter/material.dart';

class PracticeView extends StatelessWidget {
  const PracticeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "col and row",
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    child: const Center(child: Text("1")),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: const Center(child: Text("2")),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    child: const Center(child: Text("3")),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              child: const Center(child: Text("4")),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              child: const Center(child: Text("4")),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              child: const Center(child: Text("4")),
            ),
          )
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class PracticeView extends StatelessWidget {
//   const PracticeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey,
//         title: const Text(
//           "col and row",
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           Container(
//             height: 100,
//             width: 100,
//             color: Colors.grey,
//             child: const Center(
//               child: Text(
//                 "1",
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//             ),
//           ),
//           Container(
//             height: 100,
//             width: 100,
//             color: Colors.grey,
//             child: const Center(
//               child: Text(
//                 "2",
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//             ),
//           ),
//           Container(
//             height: 100,
//             width: 100,
//             color: Colors.grey,
//             child: const Center(
//               child: Text(
//                 "3",
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
