import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/screens/home/widget/section_heading.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeading(
            title: 'Shipping Address',
            bodyTitle: 'Change',
            textPressed: () {},
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Coding with k',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const Icon(
                Icons.phone,
                color: grey,
                size: 16,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                '+201030536167',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const Icon(
                Icons.location_history,
                color: grey,
                size: 16,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text(
                  'menofia quesna,kfr Abo Elhassan',
                  style: Theme.of(context).textTheme.bodyMedium,
                  softWrap: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
