import 'package:flutter/material.dart';
import 'package:s3_hcmut/common/widgets/buttons/basic_app_button.dart';
import 'package:s3_hcmut/core/configs/assets/app_images.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 200, horizontal: 30),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.hcmut_start),
              ),
            ),
          ),
          Positioned(
            bottom: -100, // Điều chỉnh vị trí theo nhu cầu
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                AppImages.base_text, // Thay bằng tên ảnh mới của bạn
                width: MediaQuery.of(context).size.width * 1, // Điều chỉnh kích thước
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 180, horizontal: 30),
              child: Column(
                children: [
                  Align(alignment: Alignment.topCenter, child: Image.asset(AppImages.logo_start)),
                  Spacer(),
                  Text('SMART STUDY SPACE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      )),
                  SizedBox(height: 10),
                  Text(
                    'Chào mừng bạn đến với hệ thống hỗ trợ đặt chỗ và quản lý không gian học tập thông minh tại HCMUT! Ứng dụng giúp sinh viên dễ dàng tìm kiếm, đặt chỗ và sử dụng không gian học tập hiện đại',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  BasicAppButton(
                    onPressed: () {},
                    title: 'Bắt đầu',
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
