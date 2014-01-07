.class public Lcom/android/settings/cyanogenmod/QuickSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "QuickSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/QuickSettings$MultiSelectListPreferenceComparator;
    }
.end annotation


# instance fields
.field mCollapsePanel:Landroid/preference/CheckBoxPreference;

.field mDynamicAlarm:Landroid/preference/CheckBoxPreference;

.field mDynamicBugReport:Landroid/preference/CheckBoxPreference;

.field mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

.field mDynamicIme:Landroid/preference/CheckBoxPreference;

.field mDynamicTiles:Landroid/preference/PreferenceCategory;

.field mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

.field mDynamicWifi:Landroid/preference/CheckBoxPreference;

.field mGeneralSettings:Landroid/preference/PreferenceCategory;

.field mNetworkMode:Landroid/preference/ListPreference;

.field mQuickPulldown:Landroid/preference/ListPreference;

.field mRingMode:Landroid/preference/MultiSelectListPreference;

.field mScreenTimeoutMode:Landroid/preference/ListPreference;

.field mStaticTiles:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 293
    return-void
.end method

.method public static parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 2
    .parameter "val"

    .prologue
    .line 376
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OV=I=XseparatorX=I=VO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePulldownSummary(I)V
    .locals 6
    .parameter "value"

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 364
    .local v1, res:Landroid/content/res/Resources;
    if-nez p1, :cond_0

    .line 366
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    const v3, 0x7f080271

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 373
    :goto_0
    return-void

    .line 368
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const v2, 0x7f08026f

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, direction:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    const v3, 0x7f08026e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 368
    .end local v0           #direction:Ljava/lang/String;
    :cond_1
    const v2, 0x7f080270

    goto :goto_1
.end method

.method private updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V
    .locals 8
    .parameter "val"
    .parameter "pref"
    .parameter "defSummary"

    .prologue
    .line 342
    invoke-static {p1}, Lcom/android/settings/cyanogenmod/QuickSettings;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, values:[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 344
    array-length v3, v5

    .line 345
    .local v3, length:I
    invoke-virtual {p2}, Landroid/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 346
    .local v0, entries:[Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v4, summary:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 348
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v1, v0, v6

    .line 349
    .local v1, entry:Ljava/lang/CharSequence;
    sub-int v6, v3, v2

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 350
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 355
    .end local v1           #entry:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p2, v4}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #summary:Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 357
    :cond_2
    invoke-virtual {p2, p3}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 111
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 112
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 113
    .local v5, resolver:Landroid/content/ContentResolver;
    const-string v8, "pref_general_settings"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mGeneralSettings:Landroid/preference/PreferenceCategory;

    .line 114
    const-string v8, "static_tiles"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mStaticTiles:Landroid/preference/PreferenceCategory;

    .line 115
    const-string v8, "pref_dynamic_tiles"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    .line 116
    const-string v8, "quick_pulldown"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 118
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    if-eqz v8, :cond_0

    .line 119
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mGeneralSettings:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    :cond_0
    :goto_0
    const-string v8, "collapse_panel"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mCollapsePanel:Landroid/preference/CheckBoxPreference;

    .line 128
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mCollapsePanel:Landroid/preference/CheckBoxPreference;

    const-string v8, "qs_collapse_panel"

    invoke-static {v5, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_f

    move v8, v9

    :goto_1
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    const-string v8, "pref_ring_mode"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/MultiSelectListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    .line 132
    const-string v8, "expanded_ring_mode"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, storedRingMode:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 135
    const-string v8, "OV=I=XseparatorX=I=VO"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, ringModeArray:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    new-instance v11, Ljava/util/HashSet;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v11}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 137
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    const v11, 0x7f0801fc

    invoke-direct {p0, v7, v8, v11}, Lcom/android/settings/cyanogenmod/QuickSettings;->updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V

    .line 139
    .end local v6           #ringModeArray:[Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    const-string v8, "pref_network_mode"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    .line 143
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v8, :cond_2

    .line 144
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    :cond_2
    const-string v8, "pref_screentimeout_mode"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    .line 150
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    const-string v8, "dynamic_alarm"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicAlarm:Landroid/preference/CheckBoxPreference;

    .line 155
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicAlarm:Landroid/preference/CheckBoxPreference;

    const-string v8, "qs_dyanmic_alarm"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_10

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    const-string v8, "dynamic_bugreport"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicBugReport:Landroid/preference/CheckBoxPreference;

    .line 157
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicBugReport:Landroid/preference/CheckBoxPreference;

    const-string v8, "qs_dyanmic_bugreport"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_11

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 158
    const-string v8, "dynamic_dock_battery"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    .line 159
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_3

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsDockBattery(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 161
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    const-string v8, "qs_dyanmic_dock_battery"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_12

    move v8, v9

    :goto_4
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    :cond_3
    :goto_5
    const-string v8, "dynamic_ime"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    .line 168
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_4

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsImeSwitcher(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 170
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    const-string v8, "qs_dyanmic_ime"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_14

    move v8, v9

    :goto_6
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 176
    :cond_4
    :goto_7
    const-string v8, "dynamic_usbtether"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    .line 177
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_5

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsUsbTether(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 179
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v8, "qs_dyanmic_usbtether"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_16

    move v8, v9

    :goto_8
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    :cond_5
    :goto_9
    const-string v8, "dynamic_wifi"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    .line 186
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_6

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsWifiDisplay(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 188
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    const-string v11, "qs_dyanmic_wifi"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_18

    :goto_a
    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 196
    :cond_6
    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 197
    sget-object v8, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v9, "toggleMobileData"

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v8, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v9, "toggleWifiAp"

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v8, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v9, "toggleNetworkMode"

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v8, :cond_7

    .line 201
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mStaticTiles:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_7
    :goto_c
    :pswitch_0
    invoke-static {}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsBluetooth()Z

    move-result v8

    if-nez v8, :cond_8

    .line 230
    sget-object v8, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v9, "toggleBluetooth"

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_8
    invoke-static {v5}, Lcom/android/internal/util/cm/QSUtils;->systemProfilesEnabled(Landroid/content/ContentResolver;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 235
    sget-object v8, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v9, "toggleProfile"

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 240
    sget-object v8, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v9, "toggleNfc"

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsLte(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 245
    sget-object v8, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v9, "toggleLte"

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_c

    .line 250
    sget-object v8, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v9, "toggleFlashlight"

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_c
    invoke-static {v5}, Lcom/android/internal/util/cm/QSUtils;->expandedDesktopEnabled(Landroid/content/ContentResolver;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 255
    sget-object v8, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v9, "toggleExpandedDesktop"

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_d
    return-void

    .line 121
    .end local v7           #storedRingMode:Ljava/lang/String;
    :cond_e
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    const-string v8, "qs_quick_pulldown"

    invoke-static {v5, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 123
    .local v4, quickPulldownValue:I
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, v4}, Lcom/android/settings/cyanogenmod/QuickSettings;->updatePulldownSummary(I)V

    goto/16 :goto_0

    .end local v4           #quickPulldownValue:I
    :cond_f
    move v8, v10

    .line 128
    goto/16 :goto_1

    .restart local v7       #storedRingMode:Ljava/lang/String;
    :cond_10
    move v8, v10

    .line 155
    goto/16 :goto_2

    :cond_11
    move v8, v10

    .line 157
    goto/16 :goto_3

    :cond_12
    move v8, v10

    .line 161
    goto/16 :goto_4

    .line 163
    :cond_13
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    iput-object v13, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_5

    :cond_14
    move v8, v10

    .line 170
    goto/16 :goto_6

    .line 172
    :cond_15
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    iput-object v13, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_7

    :cond_16
    move v8, v10

    .line 179
    goto/16 :goto_8

    .line 181
    :cond_17
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    iput-object v13, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_9

    :cond_18
    move v9, v10

    .line 188
    goto/16 :goto_a

    .line 190
    :cond_19
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    iput-object v13, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_b

    .line 206
    :cond_1a
    const/16 v1, -0x63

    .line 208
    .local v1, network_state:I
    :try_start_0
    const-string v8, "preferred_network_mode"

    invoke-static {v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 214
    :goto_d
    packed-switch v1, :pswitch_data_0

    .line 222
    sget-object v8, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v9, "toggleNetworkMode"

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mStaticTiles:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v8, "QuickSettings"

    const-string v9, "Unable to retrieve PREFERRED_NETWORK_MODE"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/QuickSettings;->addPreferencesFromResource(I)V

    .line 104
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 309
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v5, :cond_0

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Set;

    .end local p2
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 311
    .local v0, arrValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lcom/android/settings/cyanogenmod/QuickSettings$MultiSelectListPreferenceComparator;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    invoke-direct {v5, p0, v7}, Lcom/android/settings/cyanogenmod/QuickSettings$MultiSelectListPreferenceComparator;-><init>(Lcom/android/settings/cyanogenmod/QuickSettings;Landroid/preference/MultiSelectListPreference;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 312
    const-string v5, "expanded_ring_mode"

    const-string v7, "OV=I=XseparatorX=I=VO"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    const-string v5, "OV=I=XseparatorX=I=VO"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    const v8, 0x7f0801fc

    invoke-direct {p0, v5, v7, v8}, Lcom/android/settings/cyanogenmod/QuickSettings;->updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V

    move v5, v6

    .line 337
    .end local v0           #arrValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return v5

    .line 316
    .restart local p2
    :cond_0
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    move-object v5, p2

    .line 317
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 318
    .local v4, value:I
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 319
    .local v1, index:I
    const-string v5, "expanded_network_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 322
    goto :goto_0

    .line 323
    .end local v1           #index:I
    .end local v4           #value:I
    .restart local p2
    :cond_1
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_2

    .line 324
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 325
    .local v2, quickPulldownValue:I
    const-string v5, "qs_quick_pulldown"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    invoke-direct {p0, v2}, Lcom/android/settings/cyanogenmod/QuickSettings;->updatePulldownSummary(I)V

    move v5, v6

    .line 328
    goto :goto_0

    .line 329
    .end local v2           #quickPulldownValue:I
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    move-object v5, p2

    .line 330
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 331
    .restart local v4       #value:I
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 332
    .restart local v1       #index:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "expanded_screentimeout_mode"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 335
    goto :goto_0

    .line 337
    .end local v1           #index:I
    .end local v4           #value:I
    .restart local p2
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 261
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicAlarm:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 262
    const-string v3, "qs_dyanmic_alarm"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    :goto_0
    return v2

    .line 265
    :cond_1
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicBugReport:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 266
    const-string v3, "qs_dyanmic_bugreport"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicBugReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 269
    :cond_3
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 270
    const-string v3, "qs_dyanmic_dock_battery"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 273
    :cond_5
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 274
    const-string v3, "qs_dyanmic_ime"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 277
    :cond_7
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 278
    const-string v3, "qs_dyanmic_usbtether"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 281
    :cond_9
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 282
    const-string v3, "qs_dyanmic_wifi"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v1, v2

    :cond_a
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 285
    :cond_b
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mCollapsePanel:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_d

    .line 286
    const-string v3, "qs_collapse_panel"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettings;->mCollapsePanel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v1, v2

    :cond_c
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 290
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method
