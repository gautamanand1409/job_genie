import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_genie/model/CardModel.dart';

class CardInfo {
  List<CardModel> getCardInformation() {
    var cardDataList = <CardModel>[];

    var data1 = CardModel(
      imgurl:
          "https://inteng-storage.s3.amazonaws.com/images/MARCH/sizes/CPP-Logo-Main_md.jpg",
      title: "C++",
    );
    cardDataList.add(data1);

    var data2 = CardModel(
        imgurl:
            "https://img2.wallspic.com/previews/0/0/3/3/6/163300/163300-python-programming_language-standing-icon-java-x750.jpg",
        title: "Python");
    cardDataList.add(data2);

    var data3 = CardModel(
        imgurl:
            "https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png",
        title: "Flutter");
    cardDataList.add(data3);

    var data4 = CardModel(
        imgurl:
            "https://res.cloudinary.com/practicaldev/image/fetch/s--mR9UUbbF--/c_imagga_scale,f_auto,fl_progressive,h_720,q_auto,w_1280/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/p7nv6cuvntdz1y1ogjc0.jpg",
        title: "Javascript");
    cardDataList.add(data4);

    //you can add more data here

    return cardDataList;
  }
}
