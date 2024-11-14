part of 'country_bloc.dart';

@freezed
class CountryEvent with _$CountryEvent {
  const factory CountryEvent.setCountryPreference(Country selectedCountry) = SetCountryPreference;
  const factory CountryEvent.fetchedCountryPreference() = FetchedCountryPreference;
}