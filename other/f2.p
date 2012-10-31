#!/bin/bash

file="
framework2.jar.out/smali/android/net/Proxy.smali
framework2.jar.out/smali/android/net/http/AndroidHttpClient.smali
framework2.jar.out/smali/android/net/wifi/WifiConfiguration.smali
framework2.jar.out/smali/android/preference/CheckBoxPreference.smali
framework2.jar.out/smali/android/preference/PreferenceScreen.smali
framework2.jar.out/smali/android/preference/RingtonePreference.smali
framework2.jar.out/smali/android/widget/AbsListView.smali
framework2.jar.out/smali/android/widget/DatePicker.smali
framework2.jar.out/smali/android/widget/QuickContactBadge$QueryHandler.smali
framework2.jar.out/smali/android/widget/QuickContactBadge.smali
framework2.jar.out/smali/android/widget/RemoteViews.smali
framework2.jar.out/smali/android/widget/SuggestionsAdapter.smali
framework2.jar.out/smali/android/widget/TimePicker.smali
framework2.jar.out/smali/android/widget/Toast$TN.smali
framework2.jar.out/smali/android/widget/Toast.smali
framework2.jar.out/smali/com/android/internal/view/menu/ActionMenuItemView.smali
framework2.jar.out/smali/com/android/internal/view/menu/ActionMenuPresenter.smali
framework2.jar.out/smali/com/android/internal/view/menu/ActionMenuView.smali
framework2.jar.out/smali/com/android/internal/view/menu/MenuItemImpl.smali
framework2.jar.out/smali/com/android/internal/widget/ActionBarContainer.smali
framework2.jar.out/smali/com/android/internal/widget/ActionBarView$HomeView.smali
framework2.jar.out/smali/com/android/internal/widget/ActionBarView.smali
framework2.jar.out/smali/com/android/internal/widget/LockPatternUtils.smali
framework2.jar.out/smali/com/android/internal/widget/LockSettingsService.smali
framework2.jar.out/smali/com/android/internal/widget/ScrollingTabContainerView.smali
framework2.jar.out/smali/com/android/internal/widget/SizeAdaptiveLayout.smali
framework2.jar.out/smali/com/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle.smali
framework2.jar.out/smali/com/android/internal/widget/multiwaveview/GlowPadView.smali
"

for f in $file; do
    git status $f
done
