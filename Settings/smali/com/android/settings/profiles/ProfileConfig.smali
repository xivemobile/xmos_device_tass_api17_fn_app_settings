.class public Lcom/android/settings/profiles/ProfileConfig;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProfileConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;,
        Lcom/android/settings/profiles/ProfileConfig$RingModeItem;,
        Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;,
        Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    }
.end annotation


# instance fields
.field private mAirplaneMode:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNamePreference:Lcom/android/settings/profiles/NamePreference;

.field private mProfile:Landroid/app/Profile;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private mRingMode:Lcom/android/settings/profiles/ProfileConfig$RingModeItem;

.field private mScreenLockModePreference:Landroid/preference/ListPreference;

.field private mStreams:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 442
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/profiles/ProfileConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileConfig;->doDelete()V

    return-void
.end method

.method private deleteProfile()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v1}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800d0

    invoke-virtual {p0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 401
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 387
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 388
    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 389
    const v1, 0x7f080310

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$1;

    invoke-direct {v2, p0}, Lcom/android/settings/profiles/ProfileConfig$1;-><init>(Lcom/android/settings/profiles/ProfileConfig;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    const v1, 0x7f0803fd

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$2;

    invoke-direct {v2, p0}, Lcom/android/settings/profiles/ProfileConfig$2;-><init>(Lcom/android/settings/profiles/ProfileConfig;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 399
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private doDelete()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->removeProfile(Landroid/app/Profile;)V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->finish()V

    .line 407
    return-void
.end method

.method private fillList()V
    .locals 26

    .prologue
    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    .line 185
    .local v14, prefSet:Landroid/preference/PreferenceScreen;
    const-string v23, "profile_general_section"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 186
    .local v9, generalPrefs:Landroid/preference/PreferenceGroup;
    if-eqz v9, :cond_0

    .line 187
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 190
    new-instance v23, Lcom/android/settings/profiles/NamePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Lcom/android/settings/profiles/NamePreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/NamePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_0
    const-string v23, "profile_system_settings"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceGroup;

    .line 197
    .local v21, systemPrefs:Landroid/preference/PreferenceGroup;
    if-eqz v21, :cond_6

    .line 198
    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mRingMode:Lcom/android/settings/profiles/ProfileConfig$RingModeItem;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 201
    new-instance v23, Lcom/android/settings/profiles/ProfileConfig$RingModeItem;

    invoke-direct/range {v23 .. v23}, Lcom/android/settings/profiles/ProfileConfig$RingModeItem;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/profiles/ProfileConfig;->mRingMode:Lcom/android/settings/profiles/ProfileConfig$RingModeItem;

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Profile;->getRingMode()Landroid/app/RingModeSettings;

    move-result-object v17

    .line 204
    .local v17, rms:Landroid/app/RingModeSettings;
    if-nez v17, :cond_2

    .line 205
    new-instance v17, Landroid/app/RingModeSettings;

    .end local v17           #rms:Landroid/app/RingModeSettings;
    invoke-direct/range {v17 .. v17}, Landroid/app/RingModeSettings;-><init>()V

    .line 206
    .restart local v17       #rms:Landroid/app/RingModeSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setRingMode(Landroid/app/RingModeSettings;)V

    .line 208
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mRingMode:Lcom/android/settings/profiles/ProfileConfig$RingModeItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/settings/profiles/ProfileConfig$RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    .line 209
    new-instance v16, Lcom/android/settings/profiles/ProfileRingModePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/profiles/ProfileRingModePreference;-><init>(Landroid/content/Context;)V

    .line 210
    .local v16, rmp:Lcom/android/settings/profiles/ProfileRingModePreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mRingMode:Lcom/android/settings/profiles/ProfileConfig$RingModeItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileRingModePreference;->setRingModeItem(Lcom/android/settings/profiles/ProfileConfig$RingModeItem;)V

    .line 211
    const v23, 0x7f0801b2

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileRingModePreference;->setTitle(I)V

    .line 212
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileRingModePreference;->setPersistent(Z)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileRingModePreference;->setSummary(Landroid/content/Context;)V

    .line 214
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileRingModePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mRingMode:Lcom/android/settings/profiles/ProfileConfig$RingModeItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/settings/profiles/ProfileConfig$RingModeItem;->mCheckbox:Lcom/android/settings/profiles/ProfileRingModePreference;

    .line 216
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 220
    new-instance v23, Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    invoke-direct/range {v23 .. v23}, Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    .line 222
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Profile;->getAirplaneMode()Landroid/app/AirplaneModeSettings;

    move-result-object v4

    .line 223
    .local v4, ams:Landroid/app/AirplaneModeSettings;
    if-nez v4, :cond_4

    .line 224
    new-instance v4, Landroid/app/AirplaneModeSettings;

    .end local v4           #ams:Landroid/app/AirplaneModeSettings;
    invoke-direct {v4}, Landroid/app/AirplaneModeSettings;-><init>()V

    .line 225
    .restart local v4       #ams:Landroid/app/AirplaneModeSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Profile;->setAirplaneMode(Landroid/app/AirplaneModeSettings;)V

    .line 227
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    .line 228
    new-instance v3, Lcom/android/settings/profiles/ProfileAirplaneModePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;-><init>(Landroid/content/Context;)V

    .line 229
    .local v3, amp:Lcom/android/settings/profiles/ProfileAirplaneModePreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->setAirplaneModeItem(Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;)V

    .line 230
    const v23, 0x7f0800fb

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->setTitle(I)V

    .line 231
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->setPersistent(Z)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->setSummary(Landroid/content/Context;)V

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;->mCheckbox:Lcom/android/settings/profiles/ProfileAirplaneModePreference;

    .line 235
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 238
    new-instance v23, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f0800f4

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f0b005b

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f0b005d

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b005c

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v25

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 248
    const-string v23, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 249
    .local v8, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->requireSecureKeyguard()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f080457

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 254
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    .end local v3           #amp:Lcom/android/settings/profiles/ProfileAirplaneModePreference;
    .end local v4           #ams:Landroid/app/AirplaneModeSettings;
    .end local v8           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v16           #rmp:Lcom/android/settings/profiles/ProfileRingModePreference;
    .end local v17           #rms:Landroid/app/RingModeSettings;
    :cond_6
    const-string v23, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 259
    .local v2, am:Landroid/media/AudioManager;
    const-string v23, "profile_volumeoverrides"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceGroup;

    .line 260
    .local v20, streamList:Landroid/preference/PreferenceGroup;
    if-eqz v20, :cond_8

    .line 261
    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 262
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/profiles/ProfileConfig;->mStreams:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    .local v5, arr$:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    array-length v12, v5

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_8

    aget-object v19, v5, v11

    .line 263
    .local v19, stream:Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mStreamId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/app/Profile;->getSettingsForStream(I)Landroid/app/StreamSettings;

    move-result-object v18

    .line 264
    .local v18, settings:Landroid/app/StreamSettings;
    if-nez v18, :cond_7

    .line 265
    new-instance v18, Landroid/app/StreamSettings;

    .end local v18           #settings:Landroid/app/StreamSettings;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mStreamId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/app/StreamSettings;-><init>(I)V

    .line 266
    .restart local v18       #settings:Landroid/app/StreamSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 268
    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    .line 269
    new-instance v13, Lcom/android/settings/profiles/StreamVolumePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Lcom/android/settings/profiles/StreamVolumePreference;-><init>(Landroid/content/Context;)V

    .line 270
    .local v13, pref:Lcom/android/settings/profiles/StreamVolumePreference;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "stream_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mStreamId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/settings/profiles/StreamVolumePreference;->setKey(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/settings/profiles/StreamVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const v24, 0x7f0800d6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Landroid/app/StreamSettings;->getValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mStreamId:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/settings/profiles/StreamVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 274
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/settings/profiles/StreamVolumePreference;->setPersistent(Z)V

    .line 275
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/settings/profiles/StreamVolumePreference;->setStreamItem(Lcom/android/settings/profiles/ProfileConfig$StreamItem;)V

    .line 276
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mCheckbox:Lcom/android/settings/profiles/StreamVolumePreference;

    .line 277
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 262
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 282
    .end local v5           #arr$:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #pref:Lcom/android/settings/profiles/StreamVolumePreference;
    .end local v18           #settings:Landroid/app/StreamSettings;
    .end local v19           #stream:Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    :cond_8
    const-string v23, "profile_connectionoverrides"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 283
    .local v7, connectionList:Landroid/preference/PreferenceGroup;
    if-eqz v7, :cond_b

    .line 284
    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    .line 286
    .local v6, connection:Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v23, v0

    iget v0, v6, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/app/Profile;->getSettingsForConnection(I)Landroid/app/ConnectionSettings;

    move-result-object v18

    .line 287
    .local v18, settings:Landroid/app/ConnectionSettings;
    if-nez v18, :cond_9

    .line 288
    new-instance v18, Landroid/app/ConnectionSettings;

    .end local v18           #settings:Landroid/app/ConnectionSettings;
    iget v0, v6, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/app/ConnectionSettings;-><init>(I)V

    .line 289
    .restart local v18       #settings:Landroid/app/ConnectionSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 291
    :cond_9
    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    .line 292
    new-instance v13, Lcom/android/settings/profiles/ProfileConnectionPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Lcom/android/settings/profiles/ProfileConnectionPreference;-><init>(Landroid/content/Context;)V

    .line 293
    .local v13, pref:Lcom/android/settings/profiles/ProfileConnectionPreference;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "connection_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v6, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/settings/profiles/ProfileConnectionPreference;->setKey(Ljava/lang/String;)V

    .line 294
    iget-object v0, v6, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/settings/profiles/ProfileConnectionPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual/range {v18 .. v18}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    const v23, 0x7f0800d5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_2
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/settings/profiles/ProfileConnectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/settings/profiles/ProfileConnectionPreference;->setPersistent(Z)V

    .line 298
    invoke-virtual {v13, v6}, Lcom/android/settings/profiles/ProfileConnectionPreference;->setConnectionItem(Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;)V

    .line 299
    iput-object v13, v6, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mCheckbox:Lcom/android/settings/profiles/ProfileConnectionPreference;

    .line 300
    invoke-virtual {v7, v13}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 295
    :cond_a
    const v23, 0x7f0800d4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_2

    .line 305
    .end local v6           #connection:Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #pref:Lcom/android/settings/profiles/ProfileConnectionPreference;
    .end local v18           #settings:Landroid/app/ConnectionSettings;
    :cond_b
    const-string v23, "profile_appgroups"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 306
    .local v10, groupList:Landroid/preference/PreferenceGroup;
    if-eqz v10, :cond_c

    .line 307
    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Profile;->getProfileGroups()[Landroid/app/ProfileGroup;

    move-result-object v5

    .local v5, arr$:[Landroid/app/ProfileGroup;
    array-length v12, v5

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_3
    if-ge v11, v12, :cond_c

    aget-object v15, v5, v11

    .line 309
    .local v15, profileGroup:Landroid/app/ProfileGroup;
    new-instance v13, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v13, v0, v1}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 310
    .local v13, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v15}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v22

    .line 311
    .local v22, uuid:Ljava/util/UUID;
    invoke-virtual/range {v22 .. v22}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 315
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setSelectable(Z)V

    .line 316
    invoke-virtual {v10, v13}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 308
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 319
    .end local v5           #arr$:[Landroid/app/ProfileGroup;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #pref:Landroid/preference/PreferenceScreen;
    .end local v15           #profileGroup:Landroid/app/ProfileGroup;
    .end local v22           #uuid:Ljava/util/UUID;
    :cond_c
    return-void
.end method

.method private startNFCProfileWriter()V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 175
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/profiles/NFCProfileWriter;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    const-string v2, "PROFILE_UUID"

    iget-object v3, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v3}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method private startProfileGroupActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 368
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 369
    const-string v0, "ProfileGroup"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "Profile"

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 374
    const-class v1, Lcom/android/settings/profiles/ProfileGroupConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 376
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-array v1, v8, [Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    const v3, 0x7f0805a8

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lcom/android/settings/profiles/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    const v3, 0x7f0805a6

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/android/settings/profiles/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    const v3, 0x7f0805a2

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/android/settings/profiles/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    const/4 v3, 0x5

    const v4, 0x7f0805a3

    invoke-virtual {p0, v4}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/profiles/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mStreams:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    .line 96
    invoke-static {}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsBluetooth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const/4 v3, 0x7

    const v4, 0x7f080102

    invoke-virtual {p0, v4}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const v3, 0x7f080103

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const v3, 0x7f080100

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const/4 v3, 0x5

    const v4, 0x7f080105

    invoke-virtual {p0, v4}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const v3, 0x7f080104

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v9, v3}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const v3, 0x7f080101

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const v3, 0x7f08010e

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const/16 v3, 0x8

    const v4, 0x7f08010f

    invoke-virtual {p0, v4}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_3
    const v1, 0x7f050029

    invoke-virtual {p0, v1}, Lcom/android/settings/profiles/ProfileConfig;->addPreferencesFromResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "profile"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfileManager;

    iput-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_5

    const-string v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Profile;

    :goto_0
    iput-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 120
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    if-nez v1, :cond_4

    .line 121
    new-instance v1, Landroid/app/Profile;

    const v2, 0x7f0800c7

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Profile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 122
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v2, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, v2}, Landroid/app/ProfileManager;->addProfile(Landroid/app/Profile;)V

    .line 125
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/settings/profiles/ProfileConfig;->setHasOptionsMenu(Z)V

    .line 127
    return-void

    .line 118
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    const v2, 0x7f08017d

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02006c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 134
    .local v1, nfc:Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 137
    .end local v1           #nfc:Landroid/view/MenuItem;
    :cond_0
    const/4 v2, 0x2

    const v3, 0x7f0800bf

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020072

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 139
    .local v0, delete:Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 141
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 153
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 147
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileConfig;->deleteProfile()V

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileConfig;->startNFCProfileWriter()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->updateProfile(Landroid/app/Profile;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v9, 0x1

    .line 323
    instance-of v6, p1, Lcom/android/settings/profiles/StreamVolumePreference;

    if-eqz v6, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mStreams:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    .local v0, arr$:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 325
    .local v5, stream:Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    iget-object v6, v5, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mCheckbox:Lcom/android/settings/profiles/StreamVolumePreference;

    if-ne p1, v6, :cond_0

    .line 326
    iget-object v7, v5, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/app/StreamSettings;->setOverride(Z)V

    .line 324
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v0           #arr$:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #stream:Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    :cond_1
    instance-of v6, p1, Lcom/android/settings/profiles/ProfileConnectionPreference;

    if-eqz v6, :cond_3

    .line 330
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    .line 331
    .local v1, connection:Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;
    iget-object v6, v1, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mCheckbox:Lcom/android/settings/profiles/ProfileConnectionPreference;

    if-ne p1, v6, :cond_2

    .line 332
    iget-object v7, v1, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/app/ConnectionSettings;->setOverride(Z)V

    goto :goto_1

    .line 335
    .end local v1           #connection:Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mRingMode:Lcom/android/settings/profiles/ProfileConfig$RingModeItem;

    iget-object v6, v6, Lcom/android/settings/profiles/ProfileConfig$RingModeItem;->mCheckbox:Lcom/android/settings/profiles/ProfileRingModePreference;

    if-ne p1, v6, :cond_5

    .line 336
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mRingMode:Lcom/android/settings/profiles/ProfileConfig$RingModeItem;

    iget-object v6, v6, Lcom/android/settings/profiles/ProfileConfig$RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/RingModeSettings;->setOverride(Z)V

    .line 354
    :cond_4
    :goto_2
    return v9

    .line 337
    .restart local p2
    :cond_5
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    iget-object v6, v6, Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;->mCheckbox:Lcom/android/settings/profiles/ProfileAirplaneModePreference;

    if-ne p1, v6, :cond_6

    .line 338
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    iget-object v6, v6, Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/AirplaneModeSettings;->setOverride(Z)V

    goto :goto_2

    .line 339
    .restart local p2
    :cond_6
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    if-ne p1, v6, :cond_8

    .line 340
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    invoke-virtual {v6}, Lcom/android/settings/profiles/NamePreference;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v6}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 342
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v6, v4}, Landroid/app/ProfileManager;->profileExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 343
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v6, v4}, Landroid/app/Profile;->setName(Ljava/lang/String;)V

    goto :goto_2

    .line 345
    :cond_7
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    iget-object v7, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/profiles/NamePreference;->setName(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0800ca

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 349
    .end local v4           #name:Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_4

    .line 350
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Profile;->setScreenLockMode(I)V

    .line 351
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b005c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v8}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 359
    const-string v0, "ProfileConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick(): entered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    instance-of v0, p2, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->startProfileGroupActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 161
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileConfig;->fillList()V

    .line 162
    return-void
.end method
