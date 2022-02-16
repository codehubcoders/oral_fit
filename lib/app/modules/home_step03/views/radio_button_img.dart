import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/madal/addShade_dialog.dart';

import '../controllers/home_step03_controller.dart';

class RadioButtonImg extends GetView {
  final _ = Get.find<HomeStep03Controller>();

  addRadioImgButton(int btnIndex, String title) {
    return Row(
      children: [
        Obx(() => Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              activeColor: primaryColor,
              value: _.imgList[btnIndex],
              groupValue: _.selectImgValue.value,
              onChanged: (value) => _.onlickRadioButtonImg(value),
            )),
        Text(
          title,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          addRadioImgButton(0, '해당없음'),
          addRadioImgButton(1, '카카오톡 전송'),
          addRadioImgButton(2, '이메일 전송'),
          addRadioImgButton(3, '스캔파일 업로드'),
        ],
      ),
    );
  }
}

class RadioButtonScan extends GetView {
  @override
  Widget build(BuildContext context) {
    // final btnIndex = 0.obs;
    return GetX<HomeStep03Controller>(
      builder: (_) {
        return Container(
          child: Column(
            children: [
              Row(
                children: [
                  Radio(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: primaryColor,
                    value: _.scanImgList[0],
                    groupValue: _.scanImgValue.value,
                    onChanged: (value) => _.onlickRadioButtonScanImg(value),
                  ),
                  Text(
                    '3Shape Communicate 업로드',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: primaryColor,
                    value: _.scanImgList[1],
                    groupValue: _.scanImgValue.value,
                    onChanged: (value) => _.onlickRadioButtonScanImg(value),
                  ),
                  Text(
                    'Medit Link',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: primaryColor,
                    value: _.scanImgList[2],
                    groupValue: _.scanImgValue.value,
                    onChanged: (value) => _.onlickRadioButtonScanImg(value),
                  ),
                  Text(
                    '스캔파일 업로드',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: Get.width,
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(color: greyLiteColorD),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          _.getImageFromCam();
                        },
                        icon: Icon(
                          Icons.attach_file,
                          size: 26,
                          color: greyDarkColor5,
                        )),
                    Container(
                      height: 32,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: greyBoxColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Text('image.png'),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.cancel,
                                size: 20,
                                color: greyLiteColorD,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Radio(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: primaryColor,
                    value: _.scanImgList[3],
                    groupValue: _.scanImgValue.value,
                    onChanged: (value) => _.onlickRadioButtonScanImg(value),
                  ),
                  Text(
                    '이메일 전송',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: primaryColor,
                    value: _.scanImgList[4],
                    groupValue: _.scanImgValue.value,
                    onChanged: (value) => _.onlickRadioButtonScanImg(value),
                  ),
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: '임프레션 수거요청 ',
                          style: TextStyle(
                              fontSize: 14, color: primaryFontColor2)),
                      TextSpan(
                          text: ' (별도 접수 필요)',
                          style:
                              TextStyle(fontSize: 12, color: greySubLiteColor9))
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: primaryColor,
                    value: _.scanImgList[5],
                    groupValue: _.scanImgValue.value,
                    onChanged: (value) => _.onlickRadioButtonScanImg(value),
                  ),
                  Text(
                    '임프레션 택배발송',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

addImgBox() {
  return Container();
}
