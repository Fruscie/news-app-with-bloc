import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/api/api_provider.dart';
import 'package:news_app/model/news_model.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  ApiProvider apiProvider = ApiProvider();
  NewsBloc() : super(NewsInitial()) {
    on<GetNews>((event, emit) async {
      final data = await apiProvider.getNews();
      emit(NewsLoaded(data));
    });
  }
}
