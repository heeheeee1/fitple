import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:fitple/DB/GymDB.dart';
import 'package:fitple/screens/info_1.dart';
import 'package:flutter/services.dart';

class RecommendGym extends StatefulWidget {
  final String userName;

  const RecommendGym({Key? key, required this.userName, required String userEmail}) : super(key: key);

  @override
  State<RecommendGym> createState() => _RecommendGymState();
}

class _RecommendGymState extends State<RecommendGym> {
  late List<Map<String, dynamic>> _gyms = []; // 헬스장 데이터를 저장할 리스트

  @override
  void initState() {
    super.initState();
    fetchGyms(); // 헬스장 데이터를 가져오는 함수 호출
  }

  // 헬스장 데이터를 가져오는 함수
  void fetchGyms() async {
    List<Map<String, dynamic>> gyms = await loadGym();
    setState(() {
      _gyms = gyms;
    });
  }

  Uint8List? getImageBytes(dynamic image) {
    try {
      if (image is String) {
        // Assuming the string is a base64 encoded image
        return Uint8List.fromList(image.codeUnits);
      } else if (image is Uint8List) {
        return image;
      } else {
        return null;
      }
    } catch (e) {
      print('Error converting image: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.userName}님을 위한 추천 헬스장',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 5,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: _gyms.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var gym = _gyms[index];
                    Uint8List? imageBytes = getImageBytes(gym['gym_picture']);

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Info(userEmail: 'userEmail', gymIdx: gym['gym_idx'])),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: imageBytes != null
                                  ? Image.memory(
                                imageBytes,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              )
                                  : Image.asset(
                                'assets/gym3.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          Text(
                            gym['gym_name'] ?? '',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            gym['gym_address'] ?? '',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}