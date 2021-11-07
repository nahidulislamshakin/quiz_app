import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State {
  int idx = 0;
  void changeQuestion() {
    setState(() {
      idx++;
    });
  }

  var questionList = [
    {
      'question': '1. Which of the following is not a pointing device?',
      'answer': ['A. Keyboard', 'B. Mouse', 'C. Joystick', 'D. Light pen']
    },
    {
      'question': '2. On which menu are cut copy and paste options available',
      'answer': ['A. File', 'B. Edit', 'C. View', 'D. None of these']
    },
    {
      'question':
          '3. Which is considered to be the computers short-term memory?',
      'answer': ['A.REM', 'B. ROM', 'C. RAM', 'D. RIM']
    },
    {
      'question':
          '3. Which is considered to be the computers short-term memory?',
      'answer': ['A.REM', 'B. ROM', 'C. RAM', 'D. RIM']
    },
    {
      'question': '4. What are the four major components of a computer?',
      'answer': [
        'A.Input Devices, CPU, Storage, Output Devices',
        'B. Input Devices, Processing Unit, Storage, Output Devices',
        'C. Motherboard, Processing Unit, Storage, Output Devices',
        'D. Input Devices, Processing Unit, Memory, Output Devices'
      ]
    },
    {
      'question': '5. Which one has two examples of output devices?',
      'answer': [
        'A.Monitor and scanner',
        'B. Speaker and keyboard',
        'C. Printer and scanner',
        'D. Speaker and printer'
      ]
    },
    {
      'question': '6. What is the brain of the computer?',
      'answer': ['A. Motherboard', 'B.  Memory', 'C. CPU', 'D. NIC']
    },
    {
      'question': '7. Application software...',
      'answer': [
        'A. Tells the computer components what to do',
        'B. Let\'s the computer interact with the user',
        'C. Let\'s the user perform a task.',
        'D. Is encoded on a piece of hardware.'
      ]
    },
    {
      'question': '8. How do programs make request to the Operating System?',
      'answer': ['A. GUI', 'B. API', 'C. TCP', 'D. SMB']
    },
    {
      'question': '9. What allows multiple programs to run on a computer?',
      'answer': ['A. NIC', 'B. OS', 'C. API', 'D. GUI']
    },
    {
      'question': '10. When was the world wide we invented?',
      'answer': ['A. 1974', 'B. 1982', 'C. 1991', 'D. 1999']
    },
    {
      'question': '11. Everything physical in a computer is attached to the...',
      'answer': ['A. Hard drive', 'B. CPU', 'C. Memory', 'D. Motherboard']
    },
    {
      'question':
          '12. Information that is broken down into small chunks before it is sent to another computer are called...',
      'answer': ['A. Letters', 'B. Packets', 'C. Messages', 'D. Packages']
    },
    {
      'question': '13. What does GUI stand for....?',
      'answer': [
        'A. Graphical User Interim',
        'B. Geographical User Interruption',
        'C. Graphical User Interface',
        'D. Gain Upper Intensity'
      ]
    },
    {
      'question':
          '14. What type of software is free to try but then you have to buy?',
      'answer': [
        'A. Commercial',
        'B. Shareware',
        'C. Opensource',
        'D. Microsoft Word'
      ]
    },
    {
      'question':
          '15. Which of the following is the binary representation of 4 5/8?',
      'answer': ['A. 110.101', 'B. 100.101', 'C. 10.011', 'D. 100.11']
    },
    {
      'question': '16. A segment of a track in a mass storage system',
      'answer': ['A. Pixel', 'B. Address', 'C. Sector', 'D. Flip-flop']
    },
    {
      'question': '17. A numeric value used to identify a memory cell',
      'answer': [
        'A. Hexadecimal notation',
        'B. Boolean operation',
        'C. Bit',
        'D. Address'
      ]
    },
    {
      'question':
          '18. A means of encoding text in which each symbol is represented by 16 bits',
      'answer': ['A. ISO', 'B. ASCII', 'C. Unicode', 'D. LZW']
    },
    {
      'question':
          '19. Which of the following is not one of the three major classes of information systems?',
      'answer': [
        'A. Decision support system',
        'B. Collaboration system',
        'C. Management information system',
        'D. Transaction processing system'
      ]
    },
    {
      'question':
          '20. Which of the following is not one of the functions of an information system?',
      'answer': [
        'A. Maintaining files',
        'B. Producing information',
        'C. Make decisions',
        'D. Generate report'
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: 
             AppBar(
               
              title: Text("Quiz App"),
              centerTitle: true,
            ),
            body: idx < questionList.length
                ? Column(
                    children: [
                      Question(questionList[idx]['question'] as String),
                      ...(questionList[idx]['answer'] as List<String>)
                          .map((answerList) {
                        return Answer(answerList, changeQuestion);
                      }).toList()
                    ],
                  )
                : Center(
                    child: Text(
                      "You are all done",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  )));
  }
}
