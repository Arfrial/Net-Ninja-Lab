import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback delete;
  final VoidCallback like;

  const QuoteCard({
    required this.quote,
    required this.delete,
    required this.like,
  });

  Color cardColor(String category) {
    switch (category.toLowerCase()) {
      case 'inspiration':
        return Colors.blue.shade50;
      case 'humor':
        return Colors.amber.shade100;
      default:
        return Colors.grey.shade100;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor(quote.category),
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),

      child: Padding(
        padding: const EdgeInsets.all(12.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[

            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),

            const SizedBox(height: 6.0),

            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),

            const SizedBox(height: 8),

            Chip(
              label: Text(quote.category),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                Row(
                  children: [

                    IconButton(
                      icon: const Icon(Icons.thumb_up),
                      onPressed: like,
                    ),

                    Text('${quote.likes}'),
                  ],
                ),

                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: delete,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}