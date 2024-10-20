import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:threads_project/core/config/config.dart';
import 'package:threads_project/core/extensions/l10n_extension.dart';

class ThreadItem extends StatelessWidget {
  const ThreadItem({super.key});

  @override
  Widget build(BuildContext context) {
    const String url =
        "https://s3-alpha-sig.figma.com/img/dd80/7d86/f993cc7676cf2f03b0fdfe998e5b4535?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=oXBA1JC6BiTM8~a4r~K1u769hXFXvis2PdZKUD4MNNfWFT7LXfm3-NkKt2jfhDRqzChjfyxX8CyKeMMLWAjUItlY50DkhzoHa316fkzbZeSA0JaLkA2bZdrDRjYSYpLkg1G8Z~MV1VEHwT3sW1d8QyniR7sV04xbFglR-YtXGH7S7vuy~RgSzWmnzhdrqSmukWOwlNvoagnH1llFWeDzTixy3wfS~7tHqON7iyA6xr4yCTgl~RXw02H4mbhMCbJtUjkbckXr1sebaou7lO4rvogJazFhmfkcrn6ju7dJKwQof9jFc52EWl7KHBp8lbdqX0LX-mohX6Aqgk-Gb~8gFg__";
    const String body =
        "Failures are stepping stones to success. Embrace them, learn from them, and keep moving forward";
    bool isLoved = false;
    int numOfLove = 512;
    int numOfComment = 64;
    int numOfRepost = 12;
    int numOfShare = 5;
    int time = 6;
    String userName = "nhaatrieeu";

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Column(
        children: [
          Visibility(
            visible: true,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  const Gap(20),
                  SvgPicture.asset(
                    AppIcons.icStar,
                    width: 18,
                    height: 18,
                  ),
                  const Gap(8),
                  Text(
                    context.translate.firstThread,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
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
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              userName,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Gap(6),
                            Text(
                              "$time ${context.translate.hour}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ],
                        ),
                        CupertinoButton(
                          onPressed: () {},
                          minSize: 0,
                          padding: EdgeInsets.zero,
                          child: SvgPicture.asset(AppIcons.ic3dots),
                        ),
                      ],
                    ),
                    const Text(
                      body,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(8),
                    Row(
                      children: [
                        StatefulBuilder(
                          builder: (context, setState) {
                            return CupertinoButton(
                              onPressed: () {
                                setState(() {
                                  if (isLoved) {
                                    numOfLove--;
                                  } else {
                                    numOfLove++;
                                  }
                                  isLoved = !isLoved;
                                });
                              },
                              minSize: 0,
                              padding: EdgeInsets.zero,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    isLoved
                                        ? AppIcons.icLoveActive
                                        : AppIcons.icLove,
                                  ),
                                  const Gap(4),
                                  AnimatedFlipCounter(
                                    value: numOfLove,
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: isLoved
                                          ? Theme.of(context)
                                              .colorScheme
                                              .surface
                                          : Theme.of(context)
                                              .colorScheme
                                              .outline,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        const Gap(18),
                        CupertinoButton(
                          onPressed: () {},
                          minSize: 0,
                          padding: EdgeInsets.zero,
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.icComment),
                              const Gap(4),
                              Text(
                                numOfComment.toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: isLoved
                                      ? Theme.of(context).colorScheme.surface
                                      : Theme.of(context).colorScheme.outline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(18),
                        CupertinoButton(
                          onPressed: () {},
                          minSize: 0,
                          padding: EdgeInsets.zero,
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.icRepost),
                              const Gap(4),
                              Text(
                                numOfRepost.toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: isLoved
                                      ? Theme.of(context).colorScheme.surface
                                      : Theme.of(context).colorScheme.outline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(18),
                        CupertinoButton(
                          onPressed: () {},
                          minSize: 0,
                          padding: EdgeInsets.zero,
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.icShare),
                              const Gap(4),
                              Text(
                                numOfShare.toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: isLoved
                                      ? Theme.of(context).colorScheme.surface
                                      : Theme.of(context).colorScheme.outline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
