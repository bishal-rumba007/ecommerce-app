import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/utils/cache_image.dart';
import 'package:ecommerce_app/src/shared/bloc/user_bloc/user_bloc.dart';

class ProfileInformationHeader extends StatelessWidget {
  const ProfileInformationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return SizedBox(
          height: 260,
          width: double.infinity,
          child: ClipPath(
            clipper: _CurvedBottomClipper(),
            child: Container(
              color: theme.colorScheme.primary,
              child: state.when(
                initial: () => const SizedBox(),
                loading: () => const CircularProgressIndicator(),
                loaded: (user) {
                  return Column(
                    children: [
                      const SizedBox(height: 80),
                      CircleAvatar(
                        radius: 36,
                        backgroundColor: Colors.white,
                        child: user.avatar != null ? ClipOval(child: CacheImageExtension(imageUrl: user.avatar!)) : Icon(
                          Icons.person,
                          size: 50,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Hi, ${user.name}",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        user.email,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                      ),
                    ],
                  );
                },
                hasUser: (haveUser) => haveUser
                    ? const SizedBox()
                    : const Text(
                        "No user found",
                        style: TextStyle(color: Colors.white),
                      ),
                error: (error) => Text(
                  error,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 40);

    /// <--- Start from the top left corner
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 40);

    ///  <-- Create the curved bottom
    path.lineTo(size.width, 0);

    /// <--- Draw a line from the bottom right to the top right
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
