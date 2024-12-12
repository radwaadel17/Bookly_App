import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerEffect extends StatelessWidget {
  const CustomShimmerEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(0.7),// اللون الأساسي
        highlightColor: Colors.grey.withOpacity(0.4), // لون اللمعان
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // صورة الـ Shimmer
            SizedBox(
              height: 120,
              child: AspectRatio(
                aspectRatio: 2.6/4,
                child: Container(
                 // الارتفاع
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16), // زوايا دائرية
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12), // مسافة بين الصورة والنص

            // نصوص الـ Shimmer
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // عنوان الكتاب
                  Container(
                    width: double.infinity,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(height: 8), // مسافة بين العناصر
                  // اسم المؤلف
                  Container(
                    width: 150,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // سعر أو تقييم
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 60,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
