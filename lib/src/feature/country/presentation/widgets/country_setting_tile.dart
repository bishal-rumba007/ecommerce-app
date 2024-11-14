import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/feature/country/presentation/bloc/country_bloc.dart';
import 'package:ecommerce_app/src/shared/enums/country.dart';

class CountrySettingTile extends StatefulWidget {
  const CountrySettingTile({super.key});

  @override
  State<CountrySettingTile> createState() => _CountrySettingTileState();
}

class _CountrySettingTileState extends State<CountrySettingTile> {
  List<Country> countries = [
    Country.dubai,
    Country.oman,
    Country.saudiArabia,
    Country.qatar,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Country",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButton<Country>(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              value: state.country,
              isExpanded: true,
              hint: Text("Select a country"),
              style: Theme.of(context).textTheme.labelLarge,
              onChanged: (Country? newValue) {
                context.read<CountryBloc>().add(SetCountryPreference(newValue!));
                context.go('/splash');
              },
              items: countries.map<DropdownMenuItem<Country>>((Country country) {
                return DropdownMenuItem<Country>(
                  value: country,
                  child: Row(
                    children: [
                      Text(country.flag),
                      const SizedBox(width: 8),
                      Text(country.name),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}