import 'package:flutter_medec/core/constant/image_asset.dart';

class NearbyDoctorData {
  final String id, avatarAsset, name, degree, rating;

  NearbyDoctorData({
    required this.id,
    required this.avatarAsset,
    required this.name,
    required this.degree,
    required this.rating,
  });

  static final items = [
    NearbyDoctorData(
      id: '1',
      avatarAsset: ImageAsset.imgDoctorAvatar1,
      name: 'Dr. Alina James',
      degree: 'B.Sc, MBBS, DDVL, MD-\nDermitologist',
      rating: '4.2',
    ),
    NearbyDoctorData(
      id: '2',
      avatarAsset: ImageAsset.imgDoctorAvatar2,
      name: 'Dr. Steve Robert',
      degree: 'B.Sc, MBBS, DDVL,',
      rating: '3.6',
    ),
    NearbyDoctorData(
      id: '3',
      avatarAsset: ImageAsset.imgDoctorAvatar3,
      name: 'Dr. Senila Fig',
      degree: 'B.Sc, MBBS, DDVL, MD-\nDermitologist',
      rating: '3.0',
    ),
  ];
}
