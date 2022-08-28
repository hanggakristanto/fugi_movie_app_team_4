// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../constant/global_variable.dart';
// import '../../../cubit/movie_latest/movie_latest_cubit.dart';
// import '../../../data/model/movie_latest.dart';

// class MovieLatestWidget extends StatelessWidget {
//   final MovieLatest movieLatest;
//   const MovieLatestWidget({Key? key, required this.movieLatest})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     BlocProvider.of<MovieLatestCubit>(context).loadLatest();
//     return BlocBuilder<MovieLatestCubit, MovieLatestState>(
//       builder: ,
//     )
//   }

//   Widget _temp() {
//     Image urlPoster;
//     if ((movieLatest.poster_path != null)) {
//       urlPoster = Image.network(
//         // '${GlobalVariable.urlImage}${movieTrend.poster_path}',
//         '${GlobalVariable.urlImage}${movieLatest.poster_path!}',
//         loadingBuilder: (BuildContext context, Widget child,
//             ImageChunkEvent? loadingProgress) {
//           if (loadingProgress == null) return child;
//           return Center(
//             child: CircularProgressIndicator(
//               value: loadingProgress.expectedTotalBytes != null
//                   ? loadingProgress.cumulativeBytesLoaded /
//                       loadingProgress.expectedTotalBytes!
//                   : null,
//             ),
//           );
//         },
//       );
//     } else {
//       urlPoster = const Image(
//         image: AssetImage('images/no_image.png'),
//       );
//     }
//     return Center(
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         margin: const EdgeInsets.all(4.0),
//         child: Stack(
//           alignment: Alignment.bottomCenter,
//           children: [
//             Center(
//               child: urlPoster,
//             ),
//             Text(
//               "${movieLatest.title}",
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
