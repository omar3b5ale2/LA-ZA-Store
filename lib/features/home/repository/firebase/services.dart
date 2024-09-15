// import 'package:cloud_firestore/cloud_firestore.dart';
// import '../../../myCards/model/review_model.dart';
// import '../../model/products_model.dart';
//
// class FirebaseService {
//   Future<List<ProductsModel>> getAllProducts() async {
//     FirebaseFirestore firestore = FirebaseFirestore.instance;
//     List<ProductsModel> products = [];
//
//     try {
//       QuerySnapshot querySnapshot =
//       await firestore.collection('products').get();
//       for (var doc in querySnapshot.docs) {
//         products.add(ProductsModel.fromJson(doc.data() as Map<String, dynamic>));
//       }
//     } catch (e) {
//       print('Error retrieving products: $e');
//     }
//     return products;
//   }
//
//   Future<List<ReviewModel>> getAllReviews() async {
//     FirebaseFirestore firestore = FirebaseFirestore.instance;
//     List<ReviewModel> reviews = [];
//
//     try {
//       QuerySnapshot querySnapshot = await firestore.collection('reviews').get();
//       for (var doc in querySnapshot.docs) {
//         reviews.add(ReviewModel.fromJson(doc.data() as Map<String, dynamic>));
//       }
//     } catch (e) {
//       print('Error retrieving reviews: $e');
//     }
//     return reviews;
//   }
//
//   Future<void> addReview(ReviewModel reviewModel) async {
//     FirebaseFirestore firestore = FirebaseFirestore.instance;
//     try {
//       await firestore.collection('reviews').add(reviewModel.toJson());
//     } catch (e) {
//       print('Error adding review: $e');
//     }
//   }
// }