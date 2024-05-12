import 'package:flutter/material.dart';

class QuickSend extends StatelessWidget {
  QuickSend({super.key});

  final List<String> profiles = [
    'https://i.pinimg.com/280x280_RS/79/dd/11/79dd11a9452a92a1accceec38a45e16a.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiYgKjNN37Qwt0ySgjA1zQpULg9wfVVuziNFAN6oTvgpvqJwY_y0uHXOnO36OZdcigwRk&usqp=CAU',
    'https://thumbs.dreamstime.com/z/vector-illustration-avatar-dummy-logo-collection-avatar-image-vector-icon-stock-isolated-object-avatar-137151815.jpg',
    'https://thumbs.dreamstime.com/b/vector-illustration-avatar-dummy-logo-collection-image-icon-stock-isolated-object-set-symbol-web-137160339.jpg',
    'https://static.vecteezy.com/system/resources/thumbnails/006/898/692/small/avatar-face-icon-female-social-profile-of-business-woman-woman-portrait-support-service-call-center-illustration-free-vector.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'quick send',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffffffff),
                    ),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color(0xffffffff).withOpacity(0.55),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          SizedBox(
              height: 80,
              child: ListView.builder(
                  itemCount: profiles.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Container(
                        width: 80,
                        height: 80,
                        margin: const EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                            color: const Color(0xff1B1B1B),
                            borderRadius: BorderRadius.circular(25)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.network(
                              profiles[index],
                              fit: BoxFit.cover,
                            )));
                  }))
        ],
      ),
    );
  }
}
