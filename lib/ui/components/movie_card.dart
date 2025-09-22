import 'package:cinetopia/app/models/movie.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, // alinha pelo topo
      children: [
        // Poster do filme
        Container(
          width: 90,
          height: 120,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF000000),
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(movie.getPosterImage()),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Textos ao lado do poster
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  movie.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,                     
                  overflow: TextOverflow.ellipsis,  
                ),
              ),
              Text(
                "Lançamento: ${movie.releaseDate}",
                style: const TextStyle(
                  color: Color(0xFFA5A5A5),
                  fontSize: 14,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
