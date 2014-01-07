.class public Lcom/android/settings/cyanogenmod/DisplayRotation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplayRotation.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mRotation0Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation180Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation270Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation90Pref:Landroid/preference/CheckBoxPreference;

.field private mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/android/settings/cyanogenmod/DisplayRotation$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cyanogenmod/DisplayRotation$1;-><init>(Lcom/android/settings/cyanogenmod/DisplayRotation;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/DisplayRotation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->updateAccelerometerRotationCheckbox()V

    .line 132
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110055

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 68
    .local v0, hasRotationLock:Z
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v4, 0x7f050013

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/DisplayRotation;->addPreferencesFromResource(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 74
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "accelerometer"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/DisplayRotation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 75
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 77
    const-string v4, "display_rotation_0"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    .line 78
    const-string v4, "display_rotation_90"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    .line 79
    const-string v4, "display_rotation_180"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    .line 80
    const-string v4, "display_rotation_270"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "accelerometer_rotation_angles"

    const/16 v8, 0xb

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, mode:I
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 87
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 89
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 91
    const-string v4, "swap_volume_buttons"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    .line 92
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 94
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    :cond_0
    :goto_4
    if-eqz v0, :cond_1

    .line 104
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 105
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 106
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 111
    :cond_1
    return-void

    :cond_2
    move v4, v6

    .line 86
    goto :goto_0

    :cond_3
    move v4, v6

    .line 87
    goto :goto_1

    :cond_4
    move v4, v6

    .line 88
    goto :goto_2

    :cond_5
    move v4, v6

    .line 89
    goto :goto_3

    .line 96
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "swap_volume_keys_on_rotation"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 98
    .local v3, swapVolumeKeys:I
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    if-lez v3, :cond_7

    :goto_5
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    :cond_7
    move v5, v6

    goto :goto_5
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 143
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-static {v4, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 174
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_2
    return v2

    :cond_1
    move v2, v3

    .line 144
    goto :goto_0

    .line 145
    :cond_2
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_9

    .line 149
    :cond_3
    const/4 v1, 0x0

    .line 150
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    or-int/lit8 v1, v1, 0x1

    .line 152
    :cond_4
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 153
    or-int/lit8 v1, v1, 0x2

    .line 154
    :cond_5
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 155
    or-int/lit8 v1, v1, 0x4

    .line 156
    :cond_6
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 157
    or-int/lit8 v1, v1, 0x8

    .line 158
    :cond_7
    if-nez v1, :cond_8

    .line 159
    or-int/lit8 v1, v1, 0x1

    .line 160
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation_angles"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 165
    .end local v1           #mode:I
    :cond_9
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "swap_volume_keys_on_rotation"

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v2, 0x2

    :cond_a
    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_b
    move v2, v3

    goto :goto_3
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->updateState()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    return-void
.end method
