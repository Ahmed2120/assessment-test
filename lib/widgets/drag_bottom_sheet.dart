import 'package:assessment/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class DragBottomSheet extends StatelessWidget {
  const DragBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.2,
        minChildSize: 0.1,
        maxChildSize: 0.8,
        builder: (context, controller) => ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  controller: controller,
                  itemCount: jobs.length,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey)),
                    child: ListTile(
                      leading: SizedBox(width: 50, height: 50, child: Image.asset(jobs[index].image, color: Color(0xFF48907E),)),
                      trailing: Icon(IconlyLight.arrowRight2),
                      title: Text(jobs[index].title),
                      subtitle: Text('${jobs[index].expertsNo} Experts'),
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ));
  }
}
