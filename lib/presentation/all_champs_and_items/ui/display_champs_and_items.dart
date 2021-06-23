import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tft_flutter/generated/locale_keys.g.dart';
import 'package:tft_flutter/presentation/all_champs_and_items/bloc/champ_and_item_bloc.dart';

class DisplayChampsAndItems extends StatefulWidget {
  const DisplayChampsAndItems({Key? key}) : super(key: key);

  @override
  _DisplayChampsAndItemsState createState() => _DisplayChampsAndItemsState();
}

class _DisplayChampsAndItemsState extends State<DisplayChampsAndItems>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChampAndItemBloc>(
      create: (context) => ChampAndItemBloc()..add(InitEvent()),
      child: BlocBuilder<ChampAndItemBloc, ChampAndItemState>(
        builder: (context, state) {
          return SafeArea(child: _body(state));
        },
      ),
    );
  }

  Widget _body(ChampAndItemState state) {
    if (state is GetChampErrorState) {
      return Scaffold(
        body: Center(
          child: Text(LocaleKeys.error).tr(),
        ),
      );
    } else if (state is GetChampSuccessState) {
      return Scaffold(
        body: Center(
          child: SvgPicture.network(
            state.champs[1].traitsUrl[0],
            color: Colors.white,
            width: 20,
          ),
        ),
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
