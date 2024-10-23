import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:threads_project/core/config/config.dart';
import 'package:threads_project/core/extensions/l10n_extension.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String url =
        "https://s3-alpha-sig.figma.com/img/dd80/7d86/f993cc7676cf2f03b0fdfe998e5b4535?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=oXBA1JC6BiTM8~a4r~K1u769hXFXvis2PdZKUD4MNNfWFT7LXfm3-NkKt2jfhDRqzChjfyxX8CyKeMMLWAjUItlY50DkhzoHa316fkzbZeSA0JaLkA2bZdrDRjYSYpLkg1G8Z~MV1VEHwT3sW1d8QyniR7sV04xbFglR-YtXGH7S7vuy~RgSzWmnzhdrqSmukWOwlNvoagnH1llFWeDzTixy3wfS~7tHqON7iyA6xr4yCTgl~RXw02H4mbhMCbJtUjkbckXr1sebaou7lO4rvogJazFhmfkcrn6ju7dJKwQof9jFc52EWl7KHBp8lbdqX0LX-mohX6Aqgk-Gb~8gFg__";
    String userName = "nhaatrieeu";

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(context.translate.newThread),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: SvgPicture.asset(AppIcons.icCancel),
        ),
        trailing: const Icon(CupertinoIcons.ellipsis_circle, size: 24),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 71,
                      child: CupertinoTextField(
                        maxLines: null,
                        maxLength: 500,
                        autofocus: true,
                        padding: EdgeInsets.zero,
                        placeholder: context.translate.whatsNew,
                        keyboardType: TextInputType.multiline,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
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
          Expanded(child: Container()),
          Container(
            height: 10,
            color: AppColors.card,
          )
        ],
      ),
    );
  }
}

void showModalCreate(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    enableDrag: false,
    useSafeArea: true,
    barrierColor: AppColors.white,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    builder: (context) {
      return const CreatePage();
    },
  );
}
