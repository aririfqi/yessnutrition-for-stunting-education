import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:yess_nutrition/common/styles/color_scheme.dart';
import 'package:yess_nutrition/common/utils/enum_state.dart';
import 'package:yess_nutrition/common/utils/routes.dart';
import 'package:yess_nutrition/presentation/pages/common_pages/indeks_massa_tubuh.dart';
import 'package:yess_nutrition/presentation/pages/cek_stunting/standar_antropometri_anak.dart';
import 'package:yess_nutrition/presentation/providers/user_notifiers/user_firestore_notifiers/user_data_notifier.dart';
import 'package:yess_nutrition/presentation/providers/user_notifiers/user_firestore_notifiers/user_food_schedule_notifier.dart';
import 'package:yess_nutrition/presentation/providers/user_notifiers/user_firestore_notifiers/user_nutrients_notifier.dart';
import 'package:yess_nutrition/presentation/widgets/custom_network_image.dart';
import 'package:yess_nutrition/presentation/widgets/loading_indicator.dart';
import 'package:yess_nutrition/presentation/widgets/nutri_time_task_card.dart';
import 'package:yess_nutrition/presentation/widgets/nutrient_progress_indicator.dart';

class HomePage extends StatefulWidget {
  final String uid;
  final PageController pageController;

  const HomePage({
    Key? key,
    required this.uid,
    required this.pageController,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      Provider.of<UserDataNotifier>(context, listen: false)
          .readUserData(widget.uid);

      Provider.of<UserNutrientsNotifier>(context, listen: false)
          .readUserNutrients(widget.uid);

      Provider.of<UserFoodScheduleNotifier>(context, listen: false)
          .readUserFoodSchedules(widget.uid);
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Consumer<UserDataNotifier>(
        builder: (context, result, child) {
          if (result.state == UserState.success) {
            return Stack(
              fit: StackFit.expand,
              children: <Widget>[
                _buildHeaderHomePage(context, result),
                _buildContentHomePage(context),
              ],
            );
          }

          return Container(
            color: primaryBackgroundColor,
            child: const LoadingIndicator(),
          );
        },
      ),
    );
  }

  Stack _buildHeaderHomePage(
    BuildContext context,
    UserDataNotifier userDataNotifier,
  ) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      clipBehavior: Clip.none,
      children: <Widget>[
        SvgPicture.asset(
          'assets/svg/header_background.svg',
          alignment: Alignment.topCenter,
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: userDataNotifier.userData.imgUrl.isEmpty
                            ? Image.asset(
                                'assets/img/default_user_pict.png',
                                fit: BoxFit.cover,
                              )
                            : CustomNetworkImage(
                                imgUrl: userDataNotifier.userData.imgUrl,
                                fit: BoxFit.cover,
                                placeHolderSize: 30,
                                errorIcon: Icons.person_off_rounded,
                              ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Hai, ${userDataNotifier.userData.name}',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: primaryBackgroundColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Selamat Datang',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: primaryBackgroundColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    onPressed: () => Navigator.pushNamed(context, profileRoute),
                    icon: const Icon(
                      Icons.settings_outlined,
                      color: primaryBackgroundColor,
                    ),
                    tooltip: 'Settings',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container _buildContentHomePage(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 132),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        color: scaffoldBackgroundColor,
      ),
      clipBehavior: Clip.hardEdge,
      child: RefreshIndicator(
        onRefresh: () {
          return Future.microtask(() {
            context.read<UserDataNotifier>().readUserData(
                  widget.uid,
                  refresh: true,
                );

            context.read<UserNutrientsNotifier>().readUserNutrients(
                  widget.uid,
                  refresh: true,
                );

            context.read<UserFoodScheduleNotifier>().readUserFoodSchedules(
                  widget.uid,
                  refresh: true,
                );
          });
        },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 24),
              _buildCardSummary(context),
              const SizedBox(height: 20),
              _buildCardNutriTime(context),
              const SizedBox(height: 20),
              /*GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const DaftarMenu()));
                },
                child: SizedBox(
                  width: 380,
                  height: 210,
                  child: Image.asset(
                    'assets/img/imgbuttoneduhamil.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),*/
              ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.only(
                        top: 10, bottom: 10, left: 100, right: 100)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const GiziBayi()));
                  },
                  child: const Text(
                    'Cek Stunting',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.only(
                        top: 10, bottom: 10, left: 100, right: 100)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const InputIMT()));
                  },
                  child: const Text(
                    'Cek IMT',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0XFFFFFFFF),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildCardSummary(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: primaryBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(0.0, 0.0),
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 10),
        child: Consumer<UserNutrientsNotifier>(
          builder: (context, result, child) {
            if (result.state == UserState.success) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Ringkasan Nutrisi Harian',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 110,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        NutrientProgressIndicator(
                          descriptionProgress: 'Kalori',
                          backgroundColor: secondaryColor,
                          progressColor: secondaryBackgroundColor,
                          progress: getNutrientValue(
                            result.userNutrients?.currentCalories,
                            result.userNutrients?.maxCalories,
                          ),
                        ),
                        const SizedBox(width: 12),
                        NutrientProgressIndicator(
                          descriptionProgress: 'Karbohidrat',
                          backgroundColor:
                              const Color(0XFF5ECFF2).withOpacity(0.2),
                          progressColor: const Color(0XFF5ECFF2),
                          progress: getNutrientValue(
                            result.userNutrients?.currentCarbohydrate,
                            result.userNutrients?.maxCarbohydrate,
                          ),
                        ),
                        const SizedBox(width: 12),
                        NutrientProgressIndicator(
                          descriptionProgress: 'Protein',
                          backgroundColor:
                              const Color(0XFFEF5EF2).withOpacity(0.2),
                          progressColor: const Color(0XFFEF5EF2),
                          progress: getNutrientValue(
                            result.userNutrients?.currentProtein,
                            result.userNutrients?.maxProtein,
                          ),
                        ),
                        const SizedBox(width: 12),
                        NutrientProgressIndicator(
                          descriptionProgress: 'Lemak',
                          backgroundColor:
                              const Color(0XFFFB958B).withOpacity(0.2),
                          progressColor: errorColor,
                          progress: getNutrientValue(
                            result.userNutrients?.currentFat,
                            result.userNutrients?.maxFat,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  Center(
                    child: TextButton(
                      onPressed: () => Navigator.pushNamed(
                        context,
                        nutrientsDetailRoute,
                        arguments: widget.uid,
                      ),
                      child: Text(
                        'Lihat Detail',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: primaryColor,
                              letterSpacing: 0.5,
                            ),
                      ),
                    ),
                  ),
                ],
              );
            }

            return const LoadingIndicator(size: 30);
          },
        ),
      ),
    );
  }

  Container _buildCardNutriTime(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: primaryBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(0.0, 0.0),
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 10),
        child: Consumer<UserFoodScheduleNotifier>(
          builder: (context, result, child) {
            final schedulesTotal = result.foodSchedules.length;
            final completeSchedulesTotal = result.foodSchedules
                .where((schedule) => schedule.isDone == true)
                .toList()
                .length;

            final percentage = completeSchedulesTotal / schedulesTotal;
            final itemCount = result.foodSchedules.length;

            if (result.state == UserState.success) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    'NutriTime',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    percentage.isNaN
                        ? 'Jadwal makan masih kosong'
                        : '$completeSchedulesTotal / $schedulesTotal Telah selesai',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: secondaryTextColor),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: LinearPercentIndicator(
                      padding: EdgeInsets.zero,
                      lineHeight: 8,
                      animation: true,
                      animationDuration: 1000,
                      progressColor: primaryColor,
                      backgroundColor: secondaryColor,
                      barRadius: const Radius.circular(10),
                      percent: percentage.isNaN ? 0 : percentage,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final foodSchedule = result.foodSchedules[index];

                      return NutriTimeTaskCard(foodSchedule: foodSchedule);
                    },
                    separatorBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 6),
                        child: Divider(),
                      );
                    },
                    itemCount: itemCount > 3 ? 3 : itemCount,
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  Center(
                    child: TextButton(
                      onPressed: () => widget.pageController.jumpToPage(1),
                      child: Text(
                        'Lihat Detail',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: primaryColor,
                              letterSpacing: 0.5,
                            ),
                      ),
                    ),
                  ),
                ],
              );
            }

            return const LoadingIndicator(size: 30);
          },
        ),
      ),
    );
  }

  double getNutrientValue(int? currentValue, int? maxValue) {
    if (currentValue == null || maxValue == null) return 0;

    return currentValue / maxValue;
  }

  @override
  bool get wantKeepAlive => true;
}
