.class public Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerWidget.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerWidgetChooser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser$MultiSelectListPreferenceComparator;
    }
.end annotation


# instance fields
.field mBrightnessMode:Landroid/preference/MultiSelectListPreference;

.field private mCheckBoxPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFlashMode:Landroid/preference/ListPreference;

.field mNetworkMode:Landroid/preference/ListPreference;

.field mRingMode:Landroid/preference/MultiSelectListPreference;

.field mScreenTimeoutMode:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mCheckBoxPrefs:Ljava/util/HashMap;

    .line 149
    return-void
.end method

.method public static parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 2
    .parameter "val"

    .prologue
    .line 418
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 421
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

.method private updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V
    .locals 9
    .parameter "val"
    .parameter "pref"
    .parameter "defSummary"

    .prologue
    const/4 v8, 0x2

    .line 396
    invoke-static {p1}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, values:[Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 398
    array-length v3, v5

    .line 399
    .local v3, length:I
    invoke-virtual {p2}, Landroid/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 400
    .local v0, entries:[Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v4, summary:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 402
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v1, v0, v6

    .line 403
    .local v1, entry:Ljava/lang/CharSequence;
    sub-int v6, v3, v2

    if-le v6, v8, :cond_1

    .line 404
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    :cond_1
    sub-int v6, v3, v2

    if-ne v6, v8, :cond_2

    .line 406
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " & "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 407
    :cond_2
    sub-int v6, v3, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 408
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 411
    .end local v1           #entry:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p2, v4}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 415
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #summary:Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 413
    :cond_4
    invoke-virtual {p2, p3}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 178
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 179
    const v19, 0x7f050025

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->addPreferencesFromResource(I)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 182
    .local v15, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 184
    .local v12, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    if-nez v19, :cond_1

    .line 313
    :cond_0
    return-void

    .line 188
    :cond_1
    const-string v19, "pref_brightness_mode"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/MultiSelectListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mBrightnessMode:Landroid/preference/MultiSelectListPreference;

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "expanded_brightness_mode"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 193
    .local v17, storedBrightnessMode:Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 194
    const-string v19, "OV=I=XseparatorX=I=VO"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, brightnessModeArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mBrightnessMode:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {v19 .. v20}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mBrightnessMode:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0801f6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V

    .line 198
    .end local v4           #brightnessModeArray:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mBrightnessMode:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    const-string v19, "pref_network_mode"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/ListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mNetworkMode:Landroid/preference/ListPreference;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    const-string v19, "pref_screentimeout_mode"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/ListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    const-string v19, "pref_ring_mode"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/MultiSelectListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mRingMode:Landroid/preference/MultiSelectListPreference;

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "expanded_ring_mode"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 207
    .local v18, storedRingMode:Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 208
    const-string v19, "OV=I=XseparatorX=I=VO"

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 209
    .local v16, ringModeArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mRingMode:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/HashSet;

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {v19 .. v20}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mRingMode:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0801fc

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V

    .line 212
    .end local v16           #ringModeArray:[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mRingMode:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    const-string v19, "pref_flash_mode"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/ListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mFlashMode:Landroid/preference/ListPreference;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mFlashMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mFlashMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mFlashMode:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    const-string v19, "pref_buttons"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    .line 228
    .local v13, prefButtons:Landroid/preference/PreferenceCategory;
    const-string v19, "pref_buttons_modes"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    .line 232
    .local v14, prefButtonsModes:Landroid/preference/PreferenceCategory;
    invoke-virtual {v13}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 233
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mCheckBoxPrefs:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->getCurrentButtons(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 243
    .local v6, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v10

    .line 244
    .local v10, isWimaxEnabled:Z
    if-nez v10, :cond_4

    .line 245
    sget-object v19, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v20, "toggleWimax"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 250
    sget-object v19, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v20, "toggleMobileData"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v19, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v20, "toggleNetworkMode"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v19, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v20, "toggleWifiAp"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    :cond_5
    sget-object v19, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    .line 259
    .local v5, button:Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;
    new-instance v7, Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 263
    .local v7, cb:Landroid/preference/CheckBoxPreference;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "pref_button_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;->getTitleResId()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 269
    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 270
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 276
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mCheckBoxPrefs:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v19, "toggleFlashlight"

    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d0007

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-nez v19, :cond_8

    .line 282
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mFlashMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 311
    :cond_6
    :goto_2
    :pswitch_0
    invoke-virtual {v13, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 272
    :cond_7
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 284
    :cond_8
    const-string v19, "toggleNetworkMode"

    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil$ButtonInfo;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 287
    const/16 v11, -0x63

    .line 290
    .local v11, network_state:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "preferred_network_mode"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 297
    :goto_3
    packed-switch v11, :pswitch_data_0

    .line 305
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    .line 293
    :catch_0
    move-exception v8

    .line 294
    .local v8, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v19, "PowerWidgetActivity"

    const-string v20, "Unable to retrieve PREFERRED_NETWORK_MODE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 359
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mBrightnessMode:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v3, :cond_1

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Set;

    .end local p2
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 361
    .local v0, arrValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser$MultiSelectListPreferenceComparator;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mBrightnessMode:Landroid/preference/MultiSelectListPreference;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser$MultiSelectListPreferenceComparator;-><init>(Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;Landroid/preference/MultiSelectListPreference;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "expanded_brightness_mode"

    const-string v5, "OV=I=XseparatorX=I=VO"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 364
    const-string v3, "OV=I=XseparatorX=I=VO"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mBrightnessMode:Landroid/preference/MultiSelectListPreference;

    const v5, 0x7f0801f6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V

    .line 391
    .end local v0           #arrValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 366
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_2

    move-object v3, p2

    .line 367
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 368
    .local v2, value:I
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mNetworkMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 369
    .local v1, index:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "expanded_network_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 371
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 372
    .end local v1           #index:I
    .end local v2           #value:I
    .restart local p2
    :cond_2
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_3

    move-object v3, p2

    .line 373
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 374
    .restart local v2       #value:I
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 375
    .restart local v1       #index:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "expanded_screentimeout_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 378
    .end local v1           #index:I
    .end local v2           #value:I
    .restart local p2
    :cond_3
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mRingMode:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v3, :cond_4

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Set;

    .end local p2
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 380
    .restart local v0       #arrValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser$MultiSelectListPreferenceComparator;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mRingMode:Landroid/preference/MultiSelectListPreference;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser$MultiSelectListPreferenceComparator;-><init>(Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;Landroid/preference/MultiSelectListPreference;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "expanded_ring_mode"

    const-string v5, "OV=I=XseparatorX=I=VO"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 383
    const-string v3, "OV=I=XseparatorX=I=VO"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mRingMode:Landroid/preference/MultiSelectListPreference;

    const v5, 0x7f0801fc

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V

    goto/16 :goto_0

    .line 384
    .end local v0           #arrValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p2
    :cond_4
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mFlashMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    move-object v3, p2

    .line 385
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 386
    .restart local v2       #value:I
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mFlashMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 387
    .restart local v1       #index:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "expanded_flash_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mFlashMode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mFlashMode:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, buttonWasModified:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v0, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->mCheckBoxPrefs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 322
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/preference/CheckBoxPreference;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 323
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne p2, v4, :cond_0

    .line 327
    const/4 v1, 0x1

    goto :goto_0

    .line 331
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/preference/CheckBoxPreference;Ljava/lang/String;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->getCurrentButtons(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->getButtonStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->mergeInNewButtonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->saveCurrentButtons(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    const/4 v4, 0x1

    .line 341
    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
