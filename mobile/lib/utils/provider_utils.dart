import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/providers/infrastructure/search.provider.dart';
import 'package:immich_mobile/providers/infrastructure/user.provider.dart';
import 'package:immich_mobile/repositories/activity_api.repository.dart';
import 'package:immich_mobile/repositories/album_api.repository.dart';
import 'package:immich_mobile/repositories/asset_api.repository.dart';
import 'package:immich_mobile/repositories/partner_api.repository.dart';
import 'package:immich_mobile/repositories/person_api.repository.dart';
import 'package:immich_mobile/repositories/timeline.repository.dart';

void invalidateAllApiRepositoryProviders(WidgetRef ref) {
  ref.invalidate(userApiRepositoryProvider);
  ref.invalidate(activityApiRepositoryProvider);
  ref.invalidate(partnerApiRepositoryProvider);
  ref.invalidate(albumApiRepositoryProvider);
  ref.invalidate(personApiRepositoryProvider);
  ref.invalidate(assetApiRepositoryProvider);
  ref.invalidate(timelineRepositoryProvider);
  ref.invalidate(searchApiRepositoryProvider);
}
