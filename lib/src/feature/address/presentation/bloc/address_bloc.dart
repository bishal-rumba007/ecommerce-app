import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';
import 'package:ecommerce_app/src/feature/address/domain/usecases/add_delivery_address_usecase.dart';
import 'package:ecommerce_app/src/feature/address/domain/usecases/delete_delivery_address_usecase.dart';
import 'package:ecommerce_app/src/feature/address/domain/usecases/get_delivery_address_usecase.dart';
import 'package:ecommerce_app/src/feature/address/domain/usecases/update_delivery_address_usecase.dart';

part 'address_bloc.freezed.dart';
part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final AddDeliveryAddressUsecase addDeliveryAddressUsecase;
  final GetDeliveryAddressUsecase getDeliveryAddressUsecase;
  final UpdateDeliveryAddressUsecase updateDeliveryAddressUsecase;
  final DeleteDeliveryAddressUsecase deleteDeliveryAddressUsecase;
  AddressBloc({
    required this.addDeliveryAddressUsecase,
    required this.getDeliveryAddressUsecase,
    required this.updateDeliveryAddressUsecase,
    required this.deleteDeliveryAddressUsecase,
  }) : super(const AddressState()) {
    on<_AddressAdded>(_onAddressAdded);
    on<_FetchedAddress>(_onAddressFetched);
    on<_AddressUpdated>(_onAddressUpdated);
    on<_AddressDeleted>(_onAddressDeleted);
    on<_AddressSelected>(_onAddressSelected);
  }

  Future<void> _onAddressAdded(
    _AddressAdded event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(status: AddressStatus.loading));
    final response = await addDeliveryAddressUsecase.call(event.address);

    response.fold(
      (exception) {
        emit(state.copyWith(
            status: AddressStatus.error, message: exception.message));
      },
      (newAddress) {
        final updatedAddresses = List<DeliveryAddress>.from(state.address)..add(newAddress);
        final selectedAddress = updatedAddresses.length == 1 ? newAddress : state.selectedAddress;
        emit(state.copyWith(
            status: AddressStatus.loaded,
            address: updatedAddresses,
            selectedAddress: selectedAddress,
            message: "Address added successfully"));
      },
    );
  }

  Future<void> _onAddressFetched(
    _FetchedAddress event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(status: AddressStatus.loading));
    final response = await getDeliveryAddressUsecase.call();

    response.fold(
      (exception) {
        emit(state.copyWith(
            status: AddressStatus.error, message: exception.message));
      },
      (addresses) {
        final selectedAddress = addresses.isNotEmpty ? addresses.first : null;
        emit(state.copyWith(
            status: AddressStatus.loaded,
            address: addresses,
            selectedAddress: selectedAddress,
            message: "Addresses fetched successfully"));
      },
    );
  }

  Future<void> _onAddressUpdated(
    _AddressUpdated event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(status: AddressStatus.loading));
    final response = await updateDeliveryAddressUsecase.call(event.address);

    response.fold(
      (exception) {
        emit(state.copyWith(
            status: AddressStatus.error, message: exception.message));
      },
      (address) {
        final updatedAddress = state.address
            .map((e) => e.id == address.id ? address : e)
            .toList();
        emit(state.copyWith(
            status: AddressStatus.loaded,
            address: updatedAddress,
            message: "Address updated successfully",
            selectedAddress: state.selectedAddress?.id == address.id ? address : state.selectedAddress
            ));
      },
    );
  }

  Future<void> _onAddressDeleted(
    _AddressDeleted event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(status: AddressStatus.loading, isDeletion: true));
    final response = await deleteDeliveryAddressUsecase.call(event.address.id);

    response.fold(
      (exception) {
        emit(state.copyWith(
            status: AddressStatus.error, message: exception.message));
      },
      (address) {
        final updatedAddress = state.address
            .where((element) => element.id != event.address.id)
            .toList();
        emit(state.copyWith(
            status: AddressStatus.loaded,
            address: updatedAddress,
            message: "Address deleted successfully",
            isDeletion: true,
            ));
      },
    );
  }

  Future<void> _onAddressSelected(
    _AddressSelected event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(selectedAddress: event.address));
  }
}
