import 'package:flutter/material.dart';

class Picture {
  Image castPictureUrl(url) {
    url = url == null
        ? 'https://i.pinimg.com/originals/bf/69/f0/bf69f0be8ad8b73d9da74fd10c8e3022.png'
        : "https://image.tmdb.org/t/p/w500$url";
    return Image.network(
      url,
      errorBuilder: (context, error, stackTrace) => Image.network(
        'https://i.pinimg.com/originals/bf/69/f0/bf69f0be8ad8b73d9da74fd10c8e3022.png',
      ),
    );
  }

  Image moviePosterUrl(url) {
    url = url == null
        ? 'https://i.pinimg.com/564x/a1/cd/44/a1cd44f6617beebb9794877ef59082a1.jpg'
        : "https://image.tmdb.org/t/p/w500$url";
    return Image.network(
      url,
      errorBuilder: (context, error, stackTrace) => Image.network(
        'https://i.pinimg.com/564x/a1/cd/44/a1cd44f6617beebb9794877ef59082a1.jpg',
      ),
    );
  }
}
