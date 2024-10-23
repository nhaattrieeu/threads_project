import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:threads_project/core/config/config.dart';
import 'package:threads_project/core/extensions/l10n_extension.dart';

import '../../create/pages/create_page.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    const String url =
        "https://s3-alpha-sig.figma.com/img/dd80/7d86/f993cc7676cf2f03b0fdfe998e5b4535?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=oXBA1JC6BiTM8~a4r~K1u769hXFXvis2PdZKUD4MNNfWFT7LXfm3-NkKt2jfhDRqzChjfyxX8CyKeMMLWAjUItlY50DkhzoHa316fkzbZeSA0JaLkA2bZdrDRjYSYpLkg1G8Z~MV1VEHwT3sW1d8QyniR7sV04xbFglR-YtXGH7S7vuy~RgSzWmnzhdrqSmukWOwlNvoagnH1llFWeDzTixy3wfS~7tHqON7iyA6xr4yCTgl~RXw02H4mbhMCbJtUjkbckXr1sebaou7lO4rvogJazFhmfkcrn6ju7dJKwQof9jFc52EWl7KHBp8lbdqX0LX-mohX6Aqgk-Gb~8gFg__";
    String userName = "nhaatrieeu";

    return GestureDetector(
      onTap: () {
        showModalCreate(context);
      },
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(0.5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: url,
                        width: 36,
                        height: 36,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        context.translate.whatsNew,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      const Gap(12),
                      Row(
                        children: [
                          CupertinoButton(
                            onPressed: () {},
                            minSize: 0,
                            padding: EdgeInsets.zero,
                            child: SvgPicture.asset(
                              AppIcons.icGallery,
                              width: 20,
                              height: 20,
                            ),
                          ),
                          const Gap(24),
                          CupertinoButton(
                            onPressed: () {},
                            minSize: 0,
                            padding: EdgeInsets.zero,
                            child: SvgPicture.asset(
                              AppIcons.icCamera,
                              width: 20,
                              height: 20,
                            ),
                          ),
                          const Gap(24),
                          CupertinoButton(
                            onPressed: () {},
                            minSize: 0,
                            padding: EdgeInsets.zero,
                            child: SvgPicture.asset(
                              AppIcons.icGif,
                              width: 22,
                              height: 22,
                            ),
                          ),
                          const Gap(24),
                          CupertinoButton(
                            onPressed: () {},
                            minSize: 0,
                            padding: EdgeInsets.zero,
                            child: SvgPicture.asset(
                              AppIcons.icMic,
                              width: 18,
                              height: 18,
                            ),
                          ),
                          const Gap(24),
                          CupertinoButton(
                            onPressed: () {},
                            minSize: 0,
                            padding: EdgeInsets.zero,
                            child: SvgPicture.asset(
                              AppIcons.icHashtag,
                              width: 22,
                              height: 22,
                            ),
                          ),
                          const Gap(24),
                          CupertinoButton(
                            onPressed: () {},
                            minSize: 0,
                            padding: EdgeInsets.zero,
                            child: SvgPicture.asset(
                              AppIcons.ic3lines,
                              width: 18,
                              height: 18,
                            ),
                          ),
                          const Gap(24),
                          CupertinoButton(
                            onPressed: () {},
                            minSize: 0,
                            padding: EdgeInsets.zero,
                            child: SvgPicture.asset(
                              AppIcons.icLocation,
                              width: 18,
                              height: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 0.3,
              color: Theme.of(context).dividerColor,
            ),
          ],
        ),
      ),
    );
  }
}
