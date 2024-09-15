import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/resources/fonts_manager.dart';

class AddReview extends StatefulWidget {
  final int maxRating;
  final Function(double) onRatingSelected;
  const AddReview({
    super.key,
    this.maxRating = 5,
    required this.onRatingSelected,
  });

  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  double _rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            radius: 20.0,
            backgroundColor: const Color(0xffF5F6FA),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_rounded,
                  size: 25.0,
                )),
          ),
          title: Text(
            'Add Review',
            style: GoogleFonts.inter(
                fontSize: FontSize.s17, fontWeight: FontWeightManager.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Name',
                style: GoogleFonts.inter(
                    fontSize: FontSize.s17,
                    fontWeight: FontWeightManager.medium),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Type your name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'How was your experience ?',
                style: GoogleFonts.inter(
                    fontSize: FontSize.s17,
                    fontWeight: FontWeightManager.medium),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Describe your experience?',
                  border: OutlineInputBorder(
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Star',
                style: GoogleFonts.inter(
                    fontSize: FontSize.s17,
                    fontWeight: FontWeightManager.medium),
              ),
              Slider(
                thumbColor: const Color(0xff9775FA),
                activeColor: const Color(0xffF5F6FA),
                min: 0.0,
                max: 5.0,
                value: _rating,
                divisions: widget.maxRating,
                label: _rating.toStringAsFixed(1),
                onChanged: (value) {
                  setState(() {
                    _rating = value;
                  });
                  widget.onRatingSelected(value);
                },
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  widget.maxRating,
                  (index) => Icon(
                    Icons.star,
                    color: index < _rating
                        ? const Color(0xff9775FA)
                        : Colors.grey[300],
                    size: 32,
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
