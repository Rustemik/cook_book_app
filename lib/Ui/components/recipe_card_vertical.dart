import 'package:flutter/material.dart';

class RecipeCardVertical extends StatelessWidget {
  const RecipeCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black.withOpacity(0.6),
          ),
        ],
        image: DecorationImage(
          image: AssetImage('assets/images/backCard.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star_border,
                  color: theme.primaryColor,
                ),
                SizedBox(width: 2),
                Text(
                  '4.5',
                  style: theme.textTheme.labelMedium,
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.heart_broken_outlined,
                  color: Colors.white,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Omelette pav',
                  style: theme.textTheme.labelMedium!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.lock_clock,
                            color: theme.primaryColor,
                          ),
                          Text(
                            '30 min',
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.money,
                            color: theme.primaryColor,
                          ),
                          Text(
                            '120 pp',
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
