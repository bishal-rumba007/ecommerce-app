import 'package:hive_flutter/hive_flutter.dart';
import 'dart:async';

class SearchResultLocalService {
  Box<String>? searchResultBox;

  SearchResultLocalService();

  Future<void> init() async {
    try {
      searchResultBox = Hive.box<String>('searchResultBox');
    } catch (e) {
      // Handle error
      throw Exception('Error initializing searchResultBox: $e');
    }
  }

  Future<void> clear() async {
    try {
      await searchResultBox?.clear();
    } catch (e) {
      // Handle error
      throw Exception('Error clearing searchResultBox: $e');
    }
  }

  Future<bool> hasSearchResult(String query) async {
    try {
      final searchResults = searchResultBox?.values.toList();
      return searchResults!.contains(query);
    } catch (e) {
      // Handle error
      throw Exception('Error checking search result: $e');
    }
  }

  Future<void> addSearchResult(String query) async {
    try {
      final searchQueries = searchResultBox?.values.toList();
      if (!searchQueries!.contains(query)) {
        searchQueries.add(query);
        await searchResultBox?.add(query);
      }
    } catch (e) {
      // Handle error
      throw Exception('Error adding search result: $e');
    }
  }

  Future<void> removeSearchResult(String query) async {
    try {
      final searchResultBoxValues = searchResultBox?.values.toList();
      if (searchResultBoxValues != null) {
        final index = searchResultBoxValues.indexWhere(
          (element) => element == query,
        );
        if (index != -1) {
          await searchResultBox?.deleteAt(index);
        }
      }
    } catch (e) {
      // Handle error
      throw Exception('Error removing search result: $e');
    }
  }

  Future<List<String>> getSearchResults() async {
    try {
      final searchResults = searchResultBox?.values.toList();
      return searchResults ?? [];
    } catch (e) {
      // Handle error
      throw Exception('Error getting search results: $e');
    }
  }
}
